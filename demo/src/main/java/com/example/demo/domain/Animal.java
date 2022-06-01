package com.example.demo.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

public class Animal implements Serializable {
    private Integer animalId;

    private String animalFamily;

    private String animalBreed;

    private String animalName;

    private String animalSex;

    private String animalAge;

    private String adoptStatus;

    private String healthStatus;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "Asia/Shanghai")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date inputTime;

    private String animalPic;

    private String animalDetails;

    private static final long serialVersionUID = 1L;

    public Integer getAnimalId() {
        return animalId;
    }

    public void setAnimalId(Integer animalId) {
        this.animalId = animalId;
    }

    public String getAnimalFamily() {
        return animalFamily;
    }

    public void setAnimalFamily(String animalFamily) {
        this.animalFamily = animalFamily == null ? null : animalFamily.trim();
    }

    public String getAnimalBreed() {
        return animalBreed;
    }

    public void setAnimalBreed(String animalBreed) {
        this.animalBreed = animalBreed == null ? null : animalBreed.trim();
    }

    public String getAnimalName() {
        return animalName;
    }

    public void setAnimalName(String animalName) {
        this.animalName = animalName == null ? null : animalName.trim();
    }

    public String getAnimalSex() {
        return animalSex;
    }

    public void setAnimalSex(String animalSex) {
        this.animalSex = animalSex == null ? null : animalSex.trim();
    }

    public String getAnimalAge() {
        return animalAge;
    }

    public void setAnimalAge(String animalAge) {
        this.animalAge = animalAge == null ? null : animalAge.trim();
    }

    public String getAdoptStatus() {
        return adoptStatus;
    }

    public void setAdoptStatus(String adoptStatus) {
        this.adoptStatus = adoptStatus == null ? null : adoptStatus.trim();
    }

    public String getHealthStatus() {
        return healthStatus;
    }

    public void setHealthStatus(String healthStatus) {
        this.healthStatus = healthStatus == null ? null : healthStatus.trim();
    }

    public Date getInputTime() {
        return inputTime;
    }

    public void setInputTime(Date inputTime) {
        this.inputTime = inputTime;
    }

    public String getAnimalPic() {
        return animalPic;
    }

    public void setAnimalPic(String animalPic) {
        this.animalPic = animalPic == null ? null : animalPic.trim();
    }

    public String getAnimalDetails() {
        return animalDetails;
    }

    public void setAnimalDetails(String animalDetails) {
        this.animalDetails = animalDetails == null ? null : animalDetails.trim();
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", animalId=").append(animalId);
        sb.append(", animalFamily=").append(animalFamily);
        sb.append(", animalBreed=").append(animalBreed);
        sb.append(", animalName=").append(animalName);
        sb.append(", animalSex=").append(animalSex);
        sb.append(", animalAge=").append(animalAge);
        sb.append(", adoptStatus=").append(adoptStatus);
        sb.append(", healthStatus=").append(healthStatus);
        sb.append(", inputTime=").append(inputTime);
        sb.append(", animalPic=").append(animalPic);
        sb.append(", animalDetails=").append(animalDetails);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}