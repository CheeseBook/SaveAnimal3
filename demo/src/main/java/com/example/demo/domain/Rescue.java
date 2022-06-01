package com.example.demo.domain;

import java.io.Serializable;
import java.util.Date;

public class Rescue implements Serializable {
    private Integer rescueId;

    private String rescuerName;

    private String rescuerTele;

    private Date rescueTime;

    private String rescueAddress;

    private String animalFamily;

    private String animalDescribe;

    private String animalPicture;

    private static final long serialVersionUID = 1L;

    public Integer getRescueId() {
        return rescueId;
    }

    public void setRescueId(Integer rescueId) {
        this.rescueId = rescueId;
    }

    public String getRescuerName() {
        return rescuerName;
    }

    public void setRescuerName(String rescuerName) {
        this.rescuerName = rescuerName == null ? null : rescuerName.trim();
    }

    public String getRescuerTele() {
        return rescuerTele;
    }

    public void setRescuerTele(String rescuerTele) {
        this.rescuerTele = rescuerTele == null ? null : rescuerTele.trim();
    }

    public Date getRescueTime() {
        return rescueTime;
    }

    public void setRescueTime(Date rescueTime) {
        this.rescueTime = rescueTime;
    }

    public String getRescueAddress() {
        return rescueAddress;
    }

    public void setRescueAddress(String rescueAddress) {
        this.rescueAddress = rescueAddress == null ? null : rescueAddress.trim();
    }

    public String getAnimalFamily() {
        return animalFamily;
    }

    public void setAnimalFamily(String animalFamily) {
        this.animalFamily = animalFamily == null ? null : animalFamily.trim();
    }

    public String getAnimalDescribe() {
        return animalDescribe;
    }

    public void setAnimalDescribe(String animalDescribe) {
        this.animalDescribe = animalDescribe == null ? null : animalDescribe.trim();
    }

    public String getAnimalPicture() {
        return animalPicture;
    }

    public void setAnimalPicture(String animalPicture) {
        this.animalPicture = animalPicture == null ? null : animalPicture.trim();
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", rescueId=").append(rescueId);
        sb.append(", rescuerName=").append(rescuerName);
        sb.append(", rescuerTele=").append(rescuerTele);
        sb.append(", rescueTime=").append(rescueTime);
        sb.append(", rescueAddress=").append(rescueAddress);
        sb.append(", animalFamily=").append(animalFamily);
        sb.append(", animalDescribe=").append(animalDescribe);
        sb.append(", animalPicture=").append(animalPicture);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}