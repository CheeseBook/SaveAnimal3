package com.example.demo.domain;

import java.io.Serializable;

public class Adopter implements Serializable {
    private Integer adopterId;

    private Integer animalId;

    private String adopterName;

    private String adopterTele;

    private String adopterEmail;

    private String remark;

    private static final long serialVersionUID = 1L;

    public Integer getAdopterId() {
        return adopterId;
    }

    public void setAdopterId(Integer adopterId) {
        this.adopterId = adopterId;
    }

    public Integer getAnimalId() {
        return animalId;
    }

    public void setAnimalId(Integer animalId) {
        this.animalId = animalId;
    }

    public String getAdopterName() {
        return adopterName;
    }

    public void setAdopterName(String adopterName) {
        this.adopterName = adopterName == null ? null : adopterName.trim();
    }

    public String getAdopterTele() {
        return adopterTele;
    }

    public void setAdopterTele(String adopterTele) {
        this.adopterTele = adopterTele == null ? null : adopterTele.trim();
    }

    public String getAdopterEmail() {
        return adopterEmail;
    }

    public void setAdopterEmail(String adopterEmail) {
        this.adopterEmail = adopterEmail == null ? null : adopterEmail.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", adopterId=").append(adopterId);
        sb.append(", animalId=").append(animalId);
        sb.append(", adopterName=").append(adopterName);
        sb.append(", adopterTele=").append(adopterTele);
        sb.append(", adopterEmail=").append(adopterEmail);
        sb.append(", remark=").append(remark);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}