package com.example.demo.domain;

import java.io.Serializable;

public class Adoption implements Serializable {
    private Integer adoptionId;

    private Integer animalId;

    private String applyName;

    private String applyEmail;

    private String applyTele;

    private String applyReason;

    private Integer applyStatus;

    private static final long serialVersionUID = 1L;

    public Integer getAdoptionId() {
        return adoptionId;
    }

    public void setAdoptionId(Integer adoptionId) {
        this.adoptionId = adoptionId;
    }

    public Integer getAnimalId() {
        return animalId;
    }

    public void setAnimalId(Integer animalId) {
        this.animalId = animalId;
    }

    public String getApplyName() {
        return applyName;
    }

    public void setApplyName(String applyName) {
        this.applyName = applyName == null ? null : applyName.trim();
    }

    public String getApplyEmail() {
        return applyEmail;
    }

    public void setApplyEmail(String applyEmail) {
        this.applyEmail = applyEmail == null ? null : applyEmail.trim();
    }

    public String getApplyTele() {
        return applyTele;
    }

    public void setApplyTele(String applyTele) {
        this.applyTele = applyTele == null ? null : applyTele.trim();
    }

    public String getApplyReason() {
        return applyReason;
    }

    public void setApplyReason(String applyReason) {
        this.applyReason = applyReason == null ? null : applyReason.trim();
    }

    public Integer getApplyStatus() {
        return applyStatus;
    }

    public void setApplyStatus(Integer applyStatus) {
        this.applyStatus = applyStatus;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", adoptionId=").append(adoptionId);
        sb.append(", animalId=").append(animalId);
        sb.append(", applyName=").append(applyName);
        sb.append(", applyEmail=").append(applyEmail);
        sb.append(", applyTele=").append(applyTele);
        sb.append(", applyReason=").append(applyReason);
        sb.append(", applyStatus=").append(applyStatus);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}