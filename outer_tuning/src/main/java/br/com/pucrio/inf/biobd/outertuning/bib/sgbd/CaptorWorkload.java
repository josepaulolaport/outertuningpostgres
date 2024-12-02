/*
 * DBX - Database eXternal Tuning
 * BioBD Lab - PUC-Rio && DC - UFC  *
 */
package br.com.pucrio.inf.biobd.outertuning.bib.sgbd;

import br.com.pucrio.inf.biobd.outertuning.bib.base.Log;
import java.util.Set;
import java.util.HashSet;
import br.com.pucrio.inf.biobd.outertuning.bib.configuration.Configuration;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArrayList;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import java.io.File;
import java.io.FileWriter;
import java.io.FileReader;
import java.io.IOException;
import com.google.gson.reflect.TypeToken;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;
import java.util.List;
import java.util.Map;
import java.util.HashMap;





/**
 *
 * @author Rafael
 */
public final class CaptorWorkload {

    private final CopyOnWriteArrayList<SQL> capturedSQL;
    private final ArrayList<String> badSQL;
    private final ArrayList<SQL> lastcapturedSQL;
    private ConnectionSGBD conection;
    private final Schema schema;
    public final Configuration config;
    public final Log log;
    private final CaptorPlan captorPlan;

    public CaptorWorkload(CopyOnWriteArrayList<SQL> capturedQueryList) {
        this.config = new Configuration();
        this.log = new Log(this.config);
        this.capturedSQL = capturedQueryList;
        this.lastcapturedSQL = new ArrayList<>();
        this.badSQL = new ArrayList<>();
        this.schema = new Schema();
        this.readSchemaDataBase();
        this.captorPlan = new CaptorPlan();
        // this.saveSchemaToJson();
    }

    public ConnectionSGBD getConnection() {
        if (this.conection == null || this.conection.isClosed()) {
            this.conection = new ConnectionSGBD();
        }
        return this.conection;
    }

    private void readSchemaDataBase() {
        try {
            log.title("Reading schema database");
            String query = config.getProperty("getSqlTableNames" + config.getProperty("sgbd"));
            ResultSet schemaResult = getConnection().executeQuery(query);
            if (schemaResult != null) {
                while (schemaResult.next()) {
                    Table currentTable = new Table();
                    currentTable.setSchema(schemaResult.getString(1));
                    currentTable.setName(schemaResult.getString(2));
                    currentTable.setNumberRows(schemaResult.getLong(3));
                    if ("oracle".equals(config.getProperty("sgbd"))) {
                        long pagesize = Integer.parseInt(config.getProperty("pagesize" + config.getProperty("sgbd")));
                        long numPage = schemaResult.getLong(4) / pagesize;
                        currentTable.setNumberPages(numPage);
                    } else {
                        currentTable.setNumberPages(schemaResult.getLong(4));
                    }
                    currentTable.setFields(this.getColumns(currentTable.getSchema(), currentTable.getName()));
                    log.msg("Table: " + currentTable.getName());
                    log.msg("Fields: " + currentTable.getFieldsString());
                    schema.tables.add(currentTable);
                }
                schemaResult.close();
            }
            log.endTitle();
        } catch (SQLException e) {
            log.error(e);
        }
    }

    public Schema getSchemaDataBase() {
        return this.schema;
    }

    private ArrayList<Column> getColumns(String schema, String tableName) {
        ArrayList<Column> result = new ArrayList<>();
        try {
            String sql = config.getProperty("getSqlDetailsColumns" + config.getProperty("sgbd"));
            sql = sql.replace("$schema$", schema);
            sql = sql.replace("$table$", tableName);
            PreparedStatement preparedStatement = getConnection().prepareStatement(sql);
            ResultSet fields = getConnection().executeQuery(preparedStatement);
            if (fields != null) {
                while (fields.next()) {
                    Column currentColumn = new Column();
                    currentColumn.setOrder(fields.getInt("ordernum"));
                    currentColumn.setName(fields.getString("columnname"));
                    currentColumn.setTable(tableName);
                    currentColumn.setNotNull(fields.getBoolean("isnull"));
                    currentColumn.setType(fields.getString("typefield"));
                    currentColumn.setDomainRestriction(fields.getString("domainrestriction"));
                    currentColumn.setPrimaryKey(fields.getBoolean("primarykey"));
                    currentColumn.setUniqueKey(fields.getBoolean("uniquekey"));
                    if (fields.getBoolean("foreignkey")) {
                        currentColumn.setForeignKey(this.getForeignKeyColumn(fields));
                    }
                    result.add(currentColumn);
                }
                fields.close();
                preparedStatement.close();
            }
        } catch (SQLException e) {
            log.error(e);
        }
        return result;
    }

    private Column getForeignKeyColumn(ResultSet field) {
        Column foreignColumn = new Column();
        try {
            foreignColumn.setOrder(field.getInt(9));
            foreignColumn.setName(field.getString(10));
            foreignColumn.setTable(field.getString(11));
            foreignColumn.setType(field.getString(12));
            foreignColumn.setDomainRestriction("");
            foreignColumn.setNotNull(true);
        } catch (SQLException ex) {
            log.error(ex);
        }
        return foreignColumn;
    }

    public void verifyDatabase() {
        try {
            String query = config.getProperty("signature") + config.getProperty("getSqlClauseToCaptureCurrentQueries" + config.getProperty("sgbd"));
            PreparedStatement preparedStatement = getConnection().prepareStatement(query);
            ResultSet queriesResult = getConnection().executeQuery(preparedStatement);
            this.lastcapturedSQL.clear();
            while (queriesResult.next()) {
                String currentSQL = queriesResult.getString("sql");
                if (this.isQueryValid(currentSQL) && queriesResult.getTimestamp("start_time") != null) {
                    SQL sql = new SQL();
                    sql.setPid(queriesResult.getString("pid"));
                    sql.setDatabase(queriesResult.getString("database_name"));
                    sql.setSql(currentSQL);
                    sql.setSchemaDataBase(this.schema);
                    sql.addExecution(captorPlan.getPlanExecution(sql.getSql(), queriesResult.getTimestamp("start_time")));
                    SQL temp = this.processAndgetCapturedSQLFromHistory(sql);
                    if (temp != null) {
                        this.lastcapturedSQL.add(temp);
                    }
                }
            }
            queriesResult.close();
            preparedStatement.close();
        } catch (SQLException e) {
            log.error(e);
        }
    }

    private SQL processAndgetCapturedSQLFromHistory(SQL sql) {
        for (SQL workload : capturedSQL) {
            if (sql.getSql().equals(workload.getSql())) {
                if (workload.isAreadyCaptured(sql)) {
                    return null;
                } else {
                    workload.setPid(sql.getPid());
                    workload.setExecutions(sql.getExecutions());
                    workload.setWaitAnalysis(true);
                    return workload;
                }
            }
        }
        sql.setSchemaDataBase(this.schema);
        sql.setId(this.capturedSQL.size() + 1);
        log.msg("CATCH: " + sql.getSql());
        this.capturedSQL.add(sql);
        return sql;
    }

    private boolean isQueryValid(String sql) {
        boolean isValid = true;
        if (this.badSQL.contains(sql)) {
            isValid = false;
        } else if ((sql.isEmpty())
                || (this.isQueryGeneratedByOuterTuning(sql))
                || (this.isSQLGeneratedBySGBD(sql))
                || (captorPlan.getEstimatedPlanExecution(sql).isEmpty())) {
            isValid = false;
            this.badSQL.add(sql);
        }
        return isValid;
    }

    private boolean isSQLGeneratedBySGBD(String query) {
        boolean isCommand = false;
        String[] wordsBySGBD = config.getProperty("wordsBySGBD").split(";");
        for (String word : wordsBySGBD) {
            if (query.toLowerCase(Locale.getDefault()).contains(word)) {
                isCommand = true;
                break;
            }
        }
        return isCommand;
    }

    private boolean isQueryGeneratedByOuterTuning(String query) {
        return query.toLowerCase().contains(config.getProperty("signature").toLowerCase());
    }

    public Iterable<SQL> getCapturedSQL() {
        return this.capturedSQL;
    }

    public Iterable<SQL> getLastcapturedSQL() {
        return this.lastcapturedSQL;
    }

    public SQL getSqlCaptured(String sqlCommand) {
        for (SQL sql : capturedSQL) {
            if (sql.getSql().toLowerCase().contains(sqlCommand.toLowerCase())) {
                return sql;
            }
        }
        return null;
    }

    public void saveSchemaAndQueriesToJson() {
        // Definindo o caminho relativo onde o arquivo será salvo
        String directoryPath = "docker-compose/tpch_workload_executor/output";
        String filePath = directoryPath + "/schema_and_queries.json";
    
        // Criando o diretório se ele não existir
        File directory = new File(directoryPath);
        if (!directory.exists()) {
            directory.mkdirs();
        }
    
        File jsonFile = new File(filePath);
        String absolutePath = jsonFile.getAbsolutePath();
    
        Gson gson = new GsonBuilder().setPrettyPrinting().disableHtmlEscaping().create();
    
        // Extrair apenas as queries SQL reais
        List<Map<String, String>> extractedQueries = new ArrayList<>();
        Set<String> seenQueries = new HashSet<>(); // Para armazenar queries normalizadas
        int maxId = 0;

        for (SQL sqlObject : this.lastcapturedSQL) {
            // Normaliza a query atual
            String normalizedCurrentQuery = sqlObject.getSql().trim().replaceAll("\\s+", " ").toLowerCase();
            
            // Verifica se já vimos essa query
            if (!seenQueries.contains(normalizedCurrentQuery)) {
                // Atualiza o máximo ID
                maxId++;

                // Cria um novo mapa para a query
                Map<String, String> queryMap = new HashMap<>();
                queryMap.put("id", "DML_TPCH_" + maxId);
                queryMap.put("query", sqlObject.getSql());

                // Adiciona a query normalizada ao conjunto e a query original à lista
                seenQueries.add(normalizedCurrentQuery);
                extractedQueries.add(queryMap);
            }
        }

    
        // Criando a estrutura para as colunas e tabelas
        List<Map<String, Object>> tables = new ArrayList<>();
        for (Table table : schema.tables) {
            Map<String, Object> tableMap = new HashMap<>();
            tableMap.put("id", "Table_" + table.getName().toUpperCase());
            tableMap.put("name", table.getName());
            tableMap.put("numberRows", table.getNumberRows());
            
            List<String> columnIds = new ArrayList<>();
            for (Column column : table.getFields()) {
                columnIds.add("Column_" + column.getName().toUpperCase());
            }
            tableMap.put("columns", columnIds);
            tables.add(tableMap);
        }
    
        List<Map<String, String>> columns = new ArrayList<>();
        for (Table table : schema.tables) {
            for (Column column : table.getFields()) {
                Map<String, String> columnMap = new HashMap<>();
                columnMap.put("id", "Column_" + column.getName().toUpperCase());
                columnMap.put("name", column.getName());
                columns.add(columnMap);
            }
        }
    
        // Criando o objeto combinado
        Map<String, Object> combinedJson = new HashMap<>();
        combinedJson.put("dmlStatements", extractedQueries);
        combinedJson.put("columns", columns);
        combinedJson.put("tables", tables);
    
        try (FileWriter writer = new FileWriter(jsonFile)) {
            gson.toJson(combinedJson, writer);
            log.msg("Schema and queries saved to JSON file: " + absolutePath);
        } catch (IOException e) {
            log.error("Error saving schema and queries to JSON file: " + e.getMessage());
        }
    
        // Lendo o arquivo salvo e exibindo o conteúdo no log
        try (FileReader reader = new FileReader(jsonFile)) {
            Object jsonContent = gson.fromJson(reader, Object.class);
            log.msg("Conteúdo do arquivo JSON salvo: " + gson.toJson(jsonContent));
        } catch (IOException e) {
            log.error("Erro ao ler o arquivo JSON salvo: " + e.getMessage());
        }
    }
    

    public void sendJsonToApi() {
        try {
            String directoryPath = "docker-compose/tpch_workload_executor/output";
            Path jsonFilePath = Paths.get(directoryPath, "schema_and_queries.json");

            String jsonContent = new String(Files.readAllBytes(jsonFilePath));

            HttpClient client = HttpClient.newHttpClient();
            HttpRequest request = HttpRequest.newBuilder()
                    .uri(URI.create("http://webapi:8080/api/receiveData"))
                    .header("Content-Type", "application/json")
                    .POST(HttpRequest.BodyPublishers.ofString(jsonContent))
                    .build();

            HttpResponse<String> response = client.send(request, HttpResponse.BodyHandlers.ofString());

            // Salva o status code e o corpo da resposta em um arquivo
            saveResponseToFile(directoryPath, response.statusCode(), response.body());

            if (response.statusCode() == 200) {
                log.msg("JSON enviado com sucesso para a API.");
            } else {
                log.error("Erro ao enviar JSON para a API: " + response.body());
            }
        } catch (IOException | InterruptedException e) {
            log.error("Erro ao enviar JSON para a API: " + e.getMessage());
        }
    }

    private void saveResponseToFile(String directoryPath, int statusCode, String responseBody) {
        try {
            String resultFilePath = directoryPath + "/result.txt";
            String content = "Status Code: " + statusCode + "\n" + "Response Body: " + responseBody + "\n";
            Files.write(Paths.get(resultFilePath), content.getBytes(), StandardOpenOption.CREATE, StandardOpenOption.APPEND);
        } catch (IOException e) {
            log.error("Erro ao salvar a resposta em um arquivo: " + e.getMessage());
        }
    }
    
        
}
