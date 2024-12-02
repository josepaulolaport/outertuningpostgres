package br.com.pucrio.inf.biobd.outertuning.agents;

import br.com.pucrio.inf.biobd.outertuning.bib.base.Interval;
import br.com.pucrio.inf.biobd.outertuning.bib.base.IntervalList;
import br.com.pucrio.inf.biobd.outertuning.bib.base.Log;
import br.com.pucrio.inf.biobd.outertuning.bib.configuration.Configuration;
import br.com.pucrio.inf.biobd.outertuning.bib.ontology.Heuristic;
import br.com.pucrio.inf.biobd.outertuning.bib.sgbd.ActionSF;
import br.com.pucrio.inf.biobd.outertuning.bib.sgbd.Plan;
import br.com.pucrio.inf.biobd.outertuning.bib.sgbd.SQL;

import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.ArrayList;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArrayList;

import java.util.List;
import java.util.Iterator;

public class CoordenatorAgent {

    private final CopyOnWriteArrayList<SQL> lastSQLCaptured;
    private Thread threadAgentTuning;
    public OuterTuningAgent OTAgent;
    public boolean running = false;
    private Log log; // Declare o objeto Log

    public CoordenatorAgent() {
        this.lastSQLCaptured = new CopyOnWriteArrayList<>();
        this.OTAgent = new OuterTuningAgent(new Configuration());
        this.log = new Log(new Configuration()); // Inicialize o objeto Log
    }

    public void startCaptureWorkload() {
        log.msg("DEBUG_START_CAPTURE: Initializing OTAgent with lastSQLCaptured");
        this.OTAgent.initialize(lastSQLCaptured);
        if (this.threadAgentTuning == null) {
            log.msg("DEBUG_START_CAPTURE: Starting threadAgentTuning");
            this.threadAgentTuning = new Thread(OTAgent);
            this.threadAgentTuning.start();
            this.running = true;
        }
    }

    public String capturedQueryByWindow(String windowSize) {
        String dataLine = "";
        ArrayList<SQL> sqlIn = new ArrayList<>();
        IntervalList list = new IntervalList();
        ArrayList<Interval> inter = list.getIntervals(windowSize);
        float duration;
        float cost;
        int count;
        
        List<SQL> lastSQLCopy = new ArrayList<>(lastSQLCaptured); // Fazendo uma cópia da lista
        
        for (int i = inter.size() - 1; i >= 0; i--) {
            dataLine += ",\n['" + inter.get(i).getIni(this.getMaskByWindowSize(windowSize)) + "'";
    
            for (SQL sql : lastSQLCopy) {
                duration = 0;
                cost = 0;
                count = 0;
                for (Plan execution : sql.getExecutions()) {
                    if (inter.get(i).isBetween(execution.getDateExecution()) && execution.getDuration() > 0) {
                        if (!sqlIn.contains(sql)) {
                            sqlIn.add(sql);
                        }
                        duration += execution.getDuration();
                        cost += execution.getCost();
                        count++;
                    }
                }
                if (count == 0) {
                    dataLine += ",0";
                } else {
                    dataLine += "," + duration;
                }
                dataLine += ",'<b>SQL #" + sql.getId() + "</b><br>  ";
                dataLine += "Execution(s): <b>" + count + "</b><br>";
                dataLine += "Total Time: <b>" + formatDecimalIDE(duration) + "s</b><br> ";
                dataLine += "Total cost: <b>" + formatDecimalIDE(cost) + "</b>'";
            }
            dataLine += "]";
        }
    
        String firstLine = "['TIME'";
        for (SQL sql : lastSQLCopy) {
            firstLine += ",'SQL #" + sql.getId() + "'";
            firstLine += ",{type: 'string', role: 'tooltip', 'p': {'html': true}}";
        }
    
        if (sqlIn.isEmpty()) {
            dataLine = "";
            firstLine = "['TIME'";
            firstLine += ",'empty'";
            for (int i = inter.size() - 1; i >= 0; i--) {
                dataLine += ",\n['" + inter.get(i).getIni(this.getMaskByWindowSize(windowSize)) + "',0]";
            }
        }
        firstLine += "]";
        log.msg("DEBUG_CAPTURED_QUERY: firstLine: " + firstLine);
        log.msg("DEBUG_CAPTURED_QUERY: dataLine: " + dataLine);
        return firstLine + dataLine;
    }

    public ArrayList<SQL> getSQLbyId(int id) {
        ArrayList<SQL> sqlIn = new ArrayList<>();
        if (this.lastSQLCaptured.size() >= id) {
            sqlIn.add(this.lastSQLCaptured.get(id - 1));
        }
        return sqlIn;
    }

    public ArrayList<SQL> getSQLbyWindow(String windowSize, String windowSelected) {
        ArrayList<SQL> sqlIn = new ArrayList<>();
        Interval intervalSelected = this.getIntervalAsked(windowSize, windowSelected);
        Iterator<SQL> itrSQL = lastSQLCaptured.iterator();
        while (itrSQL.hasNext()) {
            SQL sql = itrSQL.next();
            for (Plan execution : sql.getExecutions()) {
                if (intervalSelected != null && intervalSelected.isBetween(execution.getDateExecution()) && execution.getDuration() > 0) {
                    if (!sqlIn.contains(sql)) {
                        sqlIn.add(sql);
                    }
                }
            }
        }
        return sqlIn;
    }

    public Interval getIntervalAsked(String windowSize, String windowSelected) {
        Interval intervalSelected = null;
        IntervalList list = new IntervalList();
        ArrayList<Interval> inter = list.getIntervals(windowSize);
        for (Interval interval : inter) {
            if (interval.getIni(this.getMaskByDate(windowSelected)).equals(windowSelected)) {
                intervalSelected = interval;
                break;
            }
        }
        return intervalSelected;
    }

    private String getMaskByDate(String windowSelected) {
        if (windowSelected.contains("/")) {
            return "dd/MM HH:mm";
        } else {
            return "HH:mm";
        }
    }

    private String getMaskByWindowSize(String windowSize) {
        if (windowSize.contains("h")) {
            return "dd/MM HH:mm";
        } else {
            return "HH:mm";
        }
    }

    public ArrayList<Heuristic> getHeuristicsFromOntology() {
        ArrayList<Heuristic> heuristics = this.OTAgent.getAllHeuristics();
        
        // Adicionando a heurística específica da Luciana
        Heuristic lucianaHeuristic = new Heuristic();
        lucianaHeuristic.setName("HeuristicaIndicesDinamicos");
        lucianaHeuristic.setVersion("1.0");
        lucianaHeuristic.setStrategy("Sugestão de Índice");
        lucianaHeuristic.setAuthor("Luciana Perciliano");
        heuristics.add(lucianaHeuristic);

        Heuristic indiceCompleto = new Heuristic();
        indiceCompleto.setName("HeuristicaIndiceCompleto");
        indiceCompleto.setVersion("1.0");
        indiceCompleto.setStrategy("Sugestão de Índice Completo");
        indiceCompleto.setAuthor("Luciana Perciliano");
        heuristics.add(indiceCompleto);

        Heuristic indiceParcial = new Heuristic();
        indiceParcial.setName("HeuristicaIndiceParcial");
        indiceParcial.setVersion("1.0");
        indiceParcial.setStrategy("Sugestão de Índice Parcial");
        indiceParcial.setAuthor("Luciana Perciliano");
        heuristics.add(indiceParcial);

        Heuristic visaoMaterializada = new Heuristic();
        visaoMaterializada.setName("HeuristicaVisaoMaterializada");
        visaoMaterializada.setVersion("1.0");
        visaoMaterializada.setStrategy("Sugestão de Visão Materializada");
        visaoMaterializada.setAuthor("Luciana Perciliano");
        heuristics.add(visaoMaterializada);
        
        return heuristics;
    }

    public void setSelectedHeuristics(Heuristic heuristics) {
        this.OTAgent.selectedHeuristics.add(heuristics);
    }

    public CopyOnWriteArrayList<Heuristic> getSelectedHeuristics() {
        return this.OTAgent.selectedHeuristics;
    }

    public String formatDecimalIDE(double number) {
        DecimalFormat formatter = new DecimalFormat("###,###.##", new DecimalFormatSymbols(new Locale("pt", "BR")));
        return formatter.format(number);
    }

    public ActionSF getActionSFById(String actionID) {
        for (SQL sql : lastSQLCaptured) {
            for (ActionSF actionSF : sql.getActionsSF()) {
                if (actionSF.getId().equals(actionID)) {
                    return actionSF;
                }
            }
        }
        return null;
    }

    public String getActionsFromChart() {
        ArrayList<String> result = new ArrayList<>();
        log.msg("DEBUG_ACTIONS_CHART: Starting to gather actions from chart.");
    
        for (SQL sql : lastSQLCaptured) {
            log.msg("DEBUG_ACTIONS_CHART: Processing SQL ID: " + sql.getId());
            for (ActionSF actionSF : sql.getActionsSF()) {
                log.msg("DEBUG_ACTIONS_CHART: Processing ActionSF ID: " + actionSF.getId() + ", Bonus: " + actionSF.getBonus() + ", Creation Cost: " + actionSF.getCreationCost() + ", Type: " + actionSF.getType() + ", SQL Size: " + actionSF.getSql().size());
                String actionTemp = "['" + actionSF.getId() + "', " + actionSF.getBonus() + ", " + actionSF.getCreationCost() + ", '" + actionSF.getType() + "', " + actionSF.getSql().size() + "]";
                if (!result.contains(actionTemp)) {
                    result.add(actionTemp);
                }
            }
        }
        
        log.msg("DEBUG_ACTIONS_CHART: Gathering all actions from actionsSF.");
        for (ActionSF actionSF : this.OTAgent.getAllActions()) {
            log.msg("DEBUG_ACTIONS_CHART: Processing ActionSF from actionsSF ID: " + actionSF.getId() + ", Bonus: " + actionSF.getBonus() + ", Creation Cost: " + actionSF.getCreationCost() + ", Type: " + actionSF.getType());
            String actionTemp = "['" + actionSF.getId() + "', " + actionSF.getBonus() + ", " + actionSF.getCreationCost() + ", '" + actionSF.getType() + "', 0]";
            if (!result.contains(actionTemp)) {
                result.add(actionTemp);
            }
        }
        
        String toChart = "";
        for (int i = 0; i < result.size(); i++) {
            toChart += result.get(i);
            if (i < (result.size() - 1)) {
                toChart += ",";
            }
        }
        toChart = "['ACTION_ID', 'Gain Expectancy', 'Creation Cost', 'Type', 'N. of SQL Serviced'], " + toChart;
        
        log.msg("DEBUG_ACTIONS_CHART: Final chart data: " + toChart);
        
        return toChart;
    }
    
    

    public boolean isRunning() {
        return this.running;
    }
}
