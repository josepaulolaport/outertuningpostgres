/*
 * Outer-Tuning - Framework para apoiar a sintonia fina de banco de dados. PUC-RIO.
 * Rafael Pereira de Oliveira [rpoliveira@inf.puc-rio.br].
 * Ana Carolina Almeida [anacrl@gmail.com].
 * Sergio Lifschitz [sergio@inf.puc-rio.br].
 * PUC-RIO - BioBD.
 */
package br.com.pucrio.inf.biobd.outertuning.agents;

import br.com.pucrio.inf.biobd.outertuning.bib.base.Log;
import br.com.pucrio.inf.biobd.outertuning.bib.configuration.Configuration;
import br.com.pucrio.inf.biobd.outertuning.bib.ontology.Concept;
import br.com.pucrio.inf.biobd.outertuning.bib.ontology.Heuristic;
import br.com.pucrio.inf.biobd.outertuning.bib.ontology.Source;
import br.com.pucrio.inf.biobd.outertuning.bib.sgbd.ActionSF;
import br.com.pucrio.inf.biobd.outertuning.bib.sgbd.CaptorWorkload;
import br.com.pucrio.inf.biobd.outertuning.bib.sgbd.SQL;
import br.com.pucrio.inf.biobd.outertuning.dispatcher.Dispatcher;
import br.com.pucrio.inf.biobd.outertuning.ontology.DebugConcepts;
import br.com.pucrio.inf.biobd.outertuning.ontology.Ontology;
import org.protege.owl.portability.query.Result;
import org.protege.owl.portability.query.ResultException;

import java.lang.Math;


import java.util.ArrayList;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.List;
import java.util.Map;
import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.Arrays;



import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import java.io.FileReader;
import java.io.IOException;


import java.util.Random;


import static java.lang.Thread.sleep;

public class OuterTuningAgent implements Runnable {

    private final Log log;
    private final Configuration config;
    private final Ontology ontology;
    private boolean running = false;
    private CaptorWorkload captor;
    private Dispatcher dispatcher;
    public CopyOnWriteArrayList<Heuristic> selectedHeuristics;
    public Class classDispatcherDebug;
    public Source sourceDebug;
    private CopyOnWriteArrayList<ActionSF> actionsSF;
    private boolean isLucianaHeuristicSelected = false;
    private boolean isVisaoMaterializadaHeuristicSelected = false;
    private boolean isIndiceCompletoHeuristicSelected = false;
    private boolean isIndiceParcialHeuristicSelected = false;

    public OuterTuningAgent(Configuration config) {
        this.selectedHeuristics = new CopyOnWriteArrayList<>();
        this.actionsSF = new CopyOnWriteArrayList<>();
        this.config = config;
        this.log = new Log(config);
        this.ontology = new Ontology(config);
        this.ontology.readOntology();
        this.dispatcher = new Dispatcher(config);
    }

    public void initialize(CopyOnWriteArrayList<SQL> capturedQueryList) {
        if (this.captor == null) {
            this.captor = new CaptorWorkload(capturedQueryList);
        }
    }

    @Override
    public void run() {
        log.msg("Iniciando o agente de tuning.");
        this.running = true;
        this.enableAllHeuristics();
        // Verificar se a heurística de Luciana está selecionada    
        for (Heuristic selectedHeuristic : selectedHeuristics) {

            log.msg("Heurística selecionada: " + selectedHeuristic.getName());
            if (selectedHeuristic.getName().equals("HeuristicaIndicesDinamicos")) {
                isLucianaHeuristicSelected = true;
            }

            if (selectedHeuristic.getName().equals("HeuristicaVisaoMaterializada")) {
                isVisaoMaterializadaHeuristicSelected = true;
            }
            if (selectedHeuristic.getName().equals("HeuristicaIndiceCompleto")) {
                isIndiceCompletoHeuristicSelected = true;
            }

            if (selectedHeuristic.getName().equals("HeuristicaIndiceParcial")) {
                isIndiceParcialHeuristicSelected = true;
            }
        }

        //Log
        if (isLucianaHeuristicSelected) {
            log.msg("Heurística de Luciana (HeuristicaIndicesDinamicos) está selecionada.");
        } else {
            log.msg("Heurística de Luciana (HeuristicaIndicesDinamicos) não está selecionada.");
        }

        if (isVisaoMaterializadaHeuristicSelected) {
            log.msg("Heurística de Visão Materializada (Heuristica Visao Materializada) está selecionada.");
        } else {
            log.msg("Heurística de Visão Materializada (Heuristica Visao Materializada) não está selecionada.");
        }

        if (isIndiceCompletoHeuristicSelected) {
            log.msg("Heurística de Índice Completo (Heuristica Indice Completo) está selecionada.");
        } else {
            log.msg("Heurística de Índice Completo (Heuristica Indice Completo) não está selecionada.");
        }

        if (isIndiceParcialHeuristicSelected) {
            log.msg("Heurística de Índice Parcial (Heuristica Indice Parcial) está selecionada.");
        } else {
            log.msg("Heurística de Índice Parcial (Heuristica Indice Parcial) não está selecionada.");
        }
        
        while (this.running) {


            try {
                captor.verifyDatabase();
                if (isLucianaHeuristicSelected) {
                    this.addRealisticTestActions(); // Adicionando várias ações de teste realista
                }
                this.executeDispatcher();
                sleep(Integer.parseInt(config.getProperty("intervalToCapture")));
            } catch (InterruptedException e) {
                log.error(e);
            }
        }
    }
    

    public void addHeuristic(Heuristic heuristic) {
        if (heuristic != null && !selectedHeuristics.contains(heuristic)) {
            selectedHeuristics.add(heuristic);
            log.msg("Heurística adicionada: " + heuristic.getName());
        } else {
            log.msg("Heurística já existente ou inválida: " + heuristic);
        }
    }

    public void stop() {
        this.running = false;
    }

    private void executeDispatcher() {
        log.msg("Iniciando execução do Dispatcher.");
        try {
            for (SQL workload : captor.getLastcapturedSQL()) {
                log.msg("Processando workload: " + workload.getSql());
                if (workload.isWaitAnalysis()) {
                    log.msg("Workload em espera para análise: " + workload.getSql());
                    ArrayList<Source> listOfFuntions = ontology.getPreConditions();
                    ArrayList<String> functionsExecuted = new ArrayList<>();
                    for (Source source : listOfFuntions) {
                        log.msg("Executando função: " + source.getFunctionName() + " da classe " + source.getClassJavaName());
                        source.setWorkload(workload);
                        if (!functionsExecuted.contains(source.getFunctionName()) && this.executeSource(source)) {
                            functionsExecuted.add(source.getFunctionName());
                        }
                    }
                    functionsExecuted.clear();
                    this.ontology.debugConcepts();
                    this.ontology.printAllComandsDMLAndClause();
                    workload.setWaitAnalysis(false);
                }
            }
            this.ontology.printAllIndividualsConceptToDebug();
            this.readAllCandidateActions();
            this.readAllActions();
        } catch (Exception e) {
            log.error("Erro durante a execução do Dispatcher: " + e.getMessage());
        }
    }

    public void addRealisticTestActions() {
        try {
            List<ActionSF> testActions = new ArrayList<>();
            Thread.sleep(30000);
            captor.verifyDatabase();  // Captura as últimas queries
            captor.saveSchemaAndQueriesToJson();  // Salva as últimas queries em um arquivo JSON
            //chama a webapi
            try {
                // Lê o JSON do arquivo
                Gson gson = new Gson();
                FileReader reader = new FileReader("docker-compose/tpch_workload_executor/output/Result.json");
                JsonArray jsonArray = JsonParser.parseReader(reader).getAsJsonArray();

                // Lê o JSON de schema_and_queries para obter o número de linhas
                FileReader schemaReader = new FileReader("docker-compose/tpch_workload_executor/output/schema_and_queries.json");
                JsonObject schemaJson = JsonParser.parseReader(schemaReader).getAsJsonObject();
                JsonArray tablesArray = schemaJson.getAsJsonArray("tables");
                Map<String, Long> tableRowsMap = new HashMap<>();

                List<ActionSF> actionsList = new ArrayList<>();

                // Mapeia o nome da tabela ao número de linhas
                for (int i = 0; i < tablesArray.size(); i++) {
                    JsonObject tableObj = tablesArray.get(i).getAsJsonObject();
                    String tableName = tableObj.get("name").getAsString();
                    long numberRows = tableObj.get("numberRows").getAsLong();
                    tableRowsMap.put(tableName.toLowerCase(), numberRows);
                    log.msg("tabela:" + tableName + "linhas: " + numberRows);
                }



                // // Itera sobre cada objeto no JSON array
                for (int i = 0; i < jsonArray.size(); i++) {
                    JsonObject jsonObject = jsonArray.get(i).getAsJsonObject();
        
                //     // Cria uma nova ação a partir do JSON
                    ActionSF newAction = new ActionSF();
                    newAction.setId(jsonObject.get("id").getAsString());
                    newAction.setName(jsonObject.get("id").getAsString());
                    newAction = this.getActionFromList(newAction);
                    newAction.setCommand(jsonObject.get("command").getAsString());
                    newAction.setJustify(jsonObject.get("rule").getAsString());
                    newAction.setHeuristic("HeuristicaIndicesDinamicos");
                    newAction.addSql(captor.getSqlCaptured(jsonObject.get("sql").getAsString()));
                    // newAction.setStatus("suggested");
                    newAction.setBonus(jsonObject.get("bonus").getAsFloat());
                    newAction.setStatus("suggested");

                    String sqlCommand = jsonObject.get("command").getAsString();
                    String tableName = extractTableName(sqlCommand);
                    log.msg("nome da tabela: " + tableName);
                    
                    // Define o custo de criação com base no número de linhas da tabela
                    Long numberOfRows = tableRowsMap.getOrDefault(tableName.toLowerCase(), 0L);
                    newAction.setCreationCost((numberOfRows > 0) ? (float) (Math.log(numberOfRows) / Math.log(100)) : 0);

                    String rule = jsonObject.get("rule").getAsString();
                    if (rule.equals("RuleHypSimpleIndex") && isIndiceCompletoHeuristicSelected) {
                        newAction.setType("Simple Index");
                    } 
                    else if (rule.equals("RuleHypMaterializedView") && isVisaoMaterializadaHeuristicSelected) {
                        newAction.setType("Materialized View");
                    } 
                    else if (rule.equals("RuleHypCompositeIndex") && isIndiceParcialHeuristicSelected) {
                        newAction.setType("Composite Index");
                    }
                    else if (rule.equals("RuleHypPartialIndex") && isIndiceParcialHeuristicSelected) {
                        newAction.setType("Partial Index");
                    }
                    else {
                        continue; 
                    }
                    actionsList.add(newAction);
        
                    // Adiciona a nova ação à lista
                    log.msg("Ação de teste específica adicionada com sucesso: ID = " + jsonObject.get("id").getAsString()
                    + ", Name = " + jsonObject.get("id").getAsString()
                    + ", Command = " + jsonObject.get("command").getAsString()
                    + ", Justify = " + jsonObject.get("rule").getAsString()
                    + ", Heuristic = " + newAction.getHeuristic()
                    + ", SQL = " + jsonObject.get("sql").getAsString()
                    // + ", Status = " + newAction.getStatus()
                    + ", Type = " + newAction.getType()
                    );
                }
        
                reader.close();
            } 
            catch (IOException e) {
                log.error("Erro ao ler o arquivo JSON: " + e.getMessage());
            } 
            
            catch (Exception e) {
                log.error("Erro ao criar as ações de teste específicas: " + e.getMessage());
                e.printStackTrace();
            }
        } 
        catch (Exception e) {
            log.error("Erro ao criar a ação de teste específica: " + e.getMessage());
            e.printStackTrace();
        }
    }
    

    public ArrayList<Heuristic> getAllHeuristics() {
        return this.ontology.getAllHeuristics();
    }

    private boolean executeSource(Source source) {
        if (this.isHeuristicEnable(source.getHeuristic())) {
            try {
                ArrayList<Concept> result = this.dispatcher.executeSource(source);
                this.debugConcepts(result);
                this.ontology.addNewConcepts(result);
                this.ontology.instantiateConcepts();
            } catch (Exception e) {
                try {
                    this.classDispatcherDebug = Class.forName(source.getClassJavaName());
                } catch (ClassNotFoundException ex) {
                    log.error(ex);
                }
                this.sourceDebug = source;
                log.title("CLASS FOR DEBUG");
                log.msg(source.getClassJavaName());
                log.endTitle();
            }
            return true;
        }
        return false;
    }

    private void debugConcepts(ArrayList<Concept> result) {
        DebugConcepts debug = new DebugConcepts(result);
        debug.run();
    }

    private void enableAllHeuristics() {
        for (Heuristic selectedHeuristic : selectedHeuristics) {
            String[] excludedHeuristics = {"HeuristicaIndicesDinamicos", "HeuristicaIndiceCompleto", "HeuristicaIndiceParcial", "HeuristicaVisaoMaterializada"};
            if (!Arrays.asList(excludedHeuristics).contains(selectedHeuristic.getName())) {
                this.ontology.enableHeuristic(selectedHeuristic);
            }
        }
    }

    private boolean isHeuristicEnable(String heuristicName) {
        for (Heuristic selectedHeuristic : selectedHeuristics) {
            if (selectedHeuristic.getName().equals(heuristicName)) {
                return true;
            }
        }
        return false;
    }

    private void readAllActions() {
        if (this.running) {
            try {
                log.msg("Lendo todas as ações.");
                Result result = this.ontology.getAllActions();
                while (result.hasNext()) {
                    ActionSF action = new ActionSF();
                    action.setId(result.getValue("?vm").toString());
                    action.setName(result.getValue("?nome").toString());
                    action = this.getActionFromList(action);
                    action.setHeuristic(result.getValue("?nomeHeuristica").toString());
                    action.setCommand(result.getValue("?comando").toString());
                    action.setJustify("Not yet!");
                    action.addSql(captor.getSqlCaptured(result.getValue("?sql").toString()));
                    action.setStatus(result.getValue("?situacao").toString());
                    action.setBonus(Float.valueOf(result.getValue("?bonus").toString()));
                    action.setCreationCost(Float.valueOf(result.getValue("?custoCriacao").toString()));
                    action.setCost(Float.valueOf(result.getValue("?cost").toString()));
                    action.setType("Materialized View");
                    result.next();
    
                    log.msg("Ação lida: " + action.toString()); // Adicionar log para cada ação lida
                }
            } catch (ResultException ex) {
                log.error("Erro ao ler todas as ações: " + ex.getMessage());
            }
        }
    }

    private void readAllCandidateActions() {
        if (this.running) {
            try {
                log.msg("Lendo todas as ações candidatas.");
                Result result = this.ontology.getAllCandidateActions();
                while (result.hasNext()) {
                    ActionSF action = new ActionSF();
                    action.setId(result.getValue("?vmh").toString());
                    action.setName(result.getValue("?nome").toString());
                    action = this.getActionFromList(action);
                    action.setCommand(result.getValue("?comando").toString());
                    action.setJustify("Not yet!");
                    action.setHeuristic(result.getValue("?nomeHeuristica").toString());
                    action.addSql(captor.getSqlCaptured(result.getValue("?sql").toString()));
                    action.setStatus(result.getValue("?situacao").toString());
                    action.setBonus(Float.valueOf(result.getValue("?bonus").toString()));
                    action.setCreationCost(Float.valueOf(result.getValue("?custoCriacao").toString()));
                    action.setCost(Float.valueOf(result.getValue("?cost").toString()));
                    action.setType("Materialized View");
                    result.next();
    
                    log.msg("Ação candidata lida: " + action.toString()); // Adicionar log para cada ação candidata lida
                }
            } catch (ResultException ex) {
                log.error("Erro ao ler todas as ações candidatas: " + ex.getMessage());
            }
        }
    }

    public CopyOnWriteArrayList<ActionSF> getAllActions() {
        log.msg("Recuperando todas as ações.");
        log.msg("Ações retornadas: " + this.actionsSF.toString());
        return this.actionsSF;
    }    

    private ActionSF getActionFromList(ActionSF action) {
        for (ActionSF actionSF : this.actionsSF) {
            if (actionSF.equals(action)) {
                return actionSF;
            }
        }
        this.actionsSF.add(action);
        return action;
    }

    public String extractTableName(String sqlCommand) {
        String regex = "on\\s+([\\w.]+)\\s*\\(";
        Pattern pattern = Pattern.compile(regex, Pattern.CASE_INSENSITIVE);
        Matcher matcher = pattern.matcher(sqlCommand);
    
        if (matcher.find()) {
            return matcher.group(1);  // Retorna o que está entre "ON" e "("
        } else {
            return "";
        }
    }
}
