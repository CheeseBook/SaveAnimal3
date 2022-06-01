package com.example.demo.domain;

import java.io.Serializable;

public class Apply extends ApplyKey implements Serializable {
    private String applicantName;

    private String applicantTele;

    private String applicantReason;

    private String applyState;

    private String feedback;

    private static final long serialVersionUID = 1L;

    public String getApplicantName() {
        return applicantName;
    }

    public void setApplicantName(String applicantName) {
        this.applicantName = applicantName == null ? null : applicantName.trim();
    }

    public String getApplicantTele() {
        return applicantTele;
    }

    public void setApplicantTele(String applicantTele) {
        this.applicantTele = applicantTele == null ? null : applicantTele.trim();
    }

    public String getApplicantReason() {
        return applicantReason;
    }

    public void setApplicantReason(String applicantReason) {
        this.applicantReason = applicantReason == null ? null : applicantReason.trim();
    }

    public String getApplyState() {
        return applyState;
    }

    public void setApplyState(String applyState) {
        this.applyState = applyState == null ? null : applyState.trim();
    }

    public String getFeedback() {
        return feedback;
    }

    public void setFeedback(String feedback) {
        this.feedback = feedback == null ? null : feedback.trim();
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", applicantName=").append(applicantName);
        sb.append(", applicantTele=").append(applicantTele);
        sb.append(", applicantReason=").append(applicantReason);
        sb.append(", applyState=").append(applyState);
        sb.append(", feedback=").append(feedback);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}