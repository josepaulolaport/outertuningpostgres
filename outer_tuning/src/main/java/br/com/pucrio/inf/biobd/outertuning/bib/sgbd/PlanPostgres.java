package br.com.pucrio.inf.biobd.outertuning.bib.sgbd;

import br.com.pucrio.inf.biobd.outertuning.bib.sgbd.postgres.Explain;
import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;

import java.util.*;
import java.util.concurrent.TimeUnit;
import java.util.function.Function;
import java.util.stream.Collectors;

public class PlanPostgres extends Plan {

    private long cost;
    private long numRow;
    private long rowSize;
    private long duration;
    private String html;
    private ArrayList<SeqScan> seqScanList;

    public PlanPostgres(String plan, Date time) {
        this.duration = System.currentTimeMillis() - time.getTime();
        setDateExecution(time);
        setPlan(plan);
        Explain explain;
        try {
            explain = new Gson().fromJson(plan, Explain[].class)[0];
            if (explain != null) {
                this.html = explain.html();
                this.cost = Optional.ofNullable(explain.getPlan())
                        .map(Explain.Plan::getTotalCost)
                        .map(Double::longValue)
                        .orElse(0L);
                this.numRow = Optional.ofNullable(explain.getPlan())
                        .map(Explain.Plan::getPlanRows)
                        .orElse(0);
                this.rowSize = Optional.ofNullable(explain.getPlan())
                        .map(Explain.Plan::getPlanWidth)
                        .orElse(0);
                List<Explain.Plan> nestedPlans = Optional.ofNullable(explain.getPlan())
                        .map(Explain.Plan::getPlans)
                        .orElse(Collections.emptyList());
                Function<Explain.Plan, SeqScan> planToSeqScanFunction = planInfo ->
                        new SeqScan(planInfo.getRelationName(), new ArrayList<>(), planInfo.getStartupCost().longValue());
                this.seqScanList = nestedPlans.stream().map(planToSeqScanFunction).collect(Collectors.toCollection(ArrayList::new));
            }
        } catch (JsonSyntaxException e) {
            System.err.println(plan);
        }
    }

    @Override
    public long getCost() {
        return this.cost;
    }

    @Override
    public long getNumRow() {
        return this.numRow;
    }

    @Override
    public long getRowSize() {
        return this.rowSize;
    }

    @Override
    public ArrayList<SeqScan> getSeqScanOperations() {
        return this.seqScanList;
    }

    @Override
    public float getDuration() {
        return TimeUnit.MILLISECONDS.toSeconds(duration);
    }

    @Override
    public String getPlanToViewHtml() {
        return this.html; // PostgreSQL does not provide HTML by default; you may adapt this.
    }
}
