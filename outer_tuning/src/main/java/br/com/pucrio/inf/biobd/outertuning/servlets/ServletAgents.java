package br.com.pucrio.inf.biobd.outertuning.servlets;

import br.com.pucrio.inf.biobd.outertuning.agents.CoordenatorAgent;
import br.com.pucrio.inf.biobd.outertuning.bib.base.Log;
import br.com.pucrio.inf.biobd.outertuning.bib.configuration.Configuration;
import br.com.pucrio.inf.biobd.outertuning.bib.ontology.Concept;
import br.com.pucrio.inf.biobd.outertuning.bib.ontology.FunctionConceptBase;
import br.com.pucrio.inf.biobd.outertuning.bib.ontology.Heuristic;

import javax.servlet.annotation.WebServlet;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Enumeration;

@WebServlet(name = "ServletAgents", urlPatterns = {"/ServletAgents"})
public class ServletAgents extends ServletBase {

    private CoordenatorAgent controller;
    private String windowSize = "10min";
    private Memory memory;

    public void selectHeuristics() {
        this.checkObjectsMemory();
        if (controller.isRunning()) {
            this.redirect = "workload";
        } else {
            // Obtenha a lista de heurísticas
            ArrayList<Heuristic> heuristics = this.controller.getHeuristicsFromOntology();
            log.msg("Selected Heuristics:");
            // Log os nomes das heurísticas
            for (Heuristic heuristic : heuristics) {
                log.msg("Heuristic: " + heuristic.getName());
            }

            // Defina o atributo de solicitação
            request.setAttribute("heuristicList", heuristics);
        }
    }

    public void tuningAction() {
        this.checkObjectsMemory();
        String actionID = request.getParameter("actionid");
        if (actionID != null) {
            if (this.controller.isRunning()) {
                request.setAttribute("actionData", this.controller.getActionSFById(actionID));
            }
        }
    }

    public void executeTuningAction() {
        this.checkObjectsMemory();
        String actionID = request.getParameter("executeid");
        if (actionID != null) {
            if (this.controller.isRunning()) {
                request.setAttribute("executed", true);
                request.setAttribute("actionData", this.controller.getActionSFById(actionID));
            }
        }
        this.redirect = "tuningAction";
    }

    public void tuningActions() {
        this.checkObjectsMemory();
        log.msg("DEBUG_TUNING_ACTIONS: Entering tuningActions method.");
        if (this.controller.isRunning()) {
            log.msg("DEBUG_TUNING_ACTIONS: Controller is running.");
            request.setAttribute("actionsData", this.controller.getActionsFromChart());
            String actionID = request.getParameter("actionid");
            if (actionID != null) {
                log.msg("DEBUG_TUNING_ACTIONS: actionID parameter found: " + actionID);
                request.setAttribute("actionData", this.controller.getActionSFById(actionID));
            }
        }
    }

    public void documentation() {
        this.setDefaultRequest();
    }

    public void index() {
        this.setDefaultRequest();
        if (controller.isRunning()) {
            this.redirect = "workload";
        }
    }

    public void workload() {
        this.checkObjectsMemory();
        this.redirect = "";
        this.setWindowSize(request.getParameter("windowSize"));

        // Capturar heurísticas selecionadas
        Enumeration<String> parameterNames = request.getParameterNames();
        while (parameterNames.hasMoreElements()) {
            String paramName = parameterNames.nextElement();
            log.msg("DEBUG_WORKLOAD_PARAM: Parameter: " + paramName + " = " + request.getParameter(paramName));
            if (paramName.startsWith("Heuristica")) {
                Heuristic heuristic = new Heuristic();
                heuristic.setName(paramName);
                this.controller.setSelectedHeuristics(heuristic);
            }
        }

        if (this.controller.getSelectedHeuristics().size() <= 0) {
            this.enableHeuristicsForTest();
        }

        controller.startCaptureWorkload();
        request.setAttribute("workloadData", this.controller.capturedQueryByWindow(this.windowSize));
        this.setRequestSQLDetails(request.getParameter("sql"), request.getParameter("window"));
    }

    private void checkObjectsMemory() {
        if (memory == null) {
            memory = new Memory();
        }
        if (config == null) {
            config = new Configuration();
        }
        if (log == null) {
            log = new Log(config);
        }
        if (controller == null) {
            this.createController();
        }
        this.setDefaultRequest();
    }

    private void createController() {
        if (this.controller == null) {
            if (memory.isNotRunning("TuningAgent")) {
                log.archiveLogFiles();
                log.writePID();
                this.controller = new CoordenatorAgent();
                log.msg("TuningAgent started.");
                memory.addAgent("TuningAgent");
            }
        }
    }

    private void setWindowSize(String windowSize) {
        if (windowSize != null) {
            this.windowSize = request.getParameter("windowSize");
            request.setAttribute("windowSize", this.windowSize);
        }
    }

    private void setDefaultRequest() {
        request.setAttribute("windowSize", this.windowSize);
        request.setAttribute("config", config);
    }

    private void setRequestSQLDetails(String sqlParameter, String windowParameter) {
        if (sqlParameter != null && !sqlParameter.equals("empty")) {
            try {
                int id = Integer.valueOf(URLDecoder.decode(sqlParameter.trim().split("#")[1], "UTF8"));
                request.setAttribute("sqlSelected", id);
                if (windowParameter != null) {
                    request.setAttribute("intervalAsked", this.controller.getIntervalAsked(this.windowSize, URLDecoder.decode(windowParameter, "UTF8")));
                    request.setAttribute("sqlAsked", this.controller.getSQLbyWindow(this.windowSize, windowParameter));
                } else {
                    request.setAttribute("sqlAsked", this.controller.getSQLbyId(id));
                }
            } catch (UnsupportedEncodingException ex) {
                log.error(ex);
            }
        }
    }

    public void debugConcept() {
        try {
            Class<?> c = this.controller.OTAgent.classDispatcherDebug;
            FunctionConceptBase obj = (FunctionConceptBase) c.newInstance();
            ArrayList<Concept> concepts = obj.getIndividualsForInstantiate(this.controller.OTAgent.sourceDebug);
            for (Concept concept : concepts) {
                System.out.println(concept.getMsgToPrint());
            };
        } catch (SecurityException | InstantiationException | IllegalAccessException ex) {
            log.error(ex);
        }

    }

    private void enableHeuristicsForTest() {
        ArrayList<String> heuristics = new ArrayList<>();
        heuristics.add("HeuristicaVisaoMaterializadaCandidatas");
        heuristics.add("HeuristicaVisaoMaterializadaBeneficios");
        heuristics.add("HeuristicaVisaoMaterializadaExpectativa");
        heuristics.add("HeuristicaIndicesCandidatos");
        for (Heuristic heuristic : this.controller.getHeuristicsFromOntology()) {
            if (heuristics.contains(heuristic.getName())) {
                this.controller.setSelectedHeuristics(heuristic);
            }
        }
    }
}
