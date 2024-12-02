package br.com.pucrio.inf.biobd.outertuning.bib.sgbd.postgres;

import com.google.gson.annotations.SerializedName;

import java.util.List;
import java.util.Optional;

public class Explain {

    @SerializedName("Plan")
    private Plan plan;

    public Plan getPlan() {
        return plan;
    }

    public void setPlan(Plan plan) {
        this.plan = plan;
    }

    public String html() {
        return Optional.ofNullable(plan)
                .map(p -> String.format("Cost: %s <br/>", p.getTotalCost()))
                .orElse("");
    }

    public static class Plan {
        @SerializedName("Node Type")
        private String nodeType;

        @SerializedName("Relation Name")
        private String relationName;

        @SerializedName("Startup Cost")
        private Double startupCost;

        @SerializedName("Total Cost")
        private Double totalCost;

        @SerializedName("Plan Rows")
        private Integer planRows;

        @SerializedName("Plan Width")
        private Integer planWidth;

        @SerializedName("Filter")
        private String filter;

        @SerializedName("Index Cond")
        private String indexCond;

        @SerializedName("Plans")
        private List<Plan> plans;

        public String getNodeType() {
            return nodeType;
        }

        public void setNodeType(String nodeType) {
            this.nodeType = nodeType;
        }

        public String getRelationName() {
            return relationName;
        }

        public void setRelationName(String relationName) {
            this.relationName = relationName;
        }

        public Double getStartupCost() {
            return startupCost;
        }

        public void setStartupCost(Double startupCost) {
            this.startupCost = startupCost;
        }

        public Double getTotalCost() {
            return totalCost;
        }

        public void setTotalCost(Double totalCost) {
            this.totalCost = totalCost;
        }

        public Integer getPlanRows() {
            return planRows;
        }

        public void setPlanRows(Integer planRows) {
            this.planRows = planRows;
        }

        public Integer getPlanWidth() {
            return planWidth;
        }

        public void setPlanWidth(Integer planWidth) {
            this.planWidth = planWidth;
        }

        public String getFilter() {
            return filter;
        }

        public void setFilter(String filter) {
            this.filter = filter;
        }

        public String getIndexCond() {
            return indexCond;
        }

        public void setIndexCond(String indexCond) {
            this.indexCond = indexCond;
        }

        public List<Plan> getPlans() {
            return plans;
        }

        public void setPlans(List<Plan> plans) {
            this.plans = plans;
        }
    }
}
