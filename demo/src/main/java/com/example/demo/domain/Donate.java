package com.example.demo.domain;

import java.io.Serializable;
import java.util.Date;

public class Donate implements Serializable {
    private Integer donateId;

    private String benefactorName;

    private String benefactorTele;

    private Date donateTime;

    private String donateDescribe;

    private static final long serialVersionUID = 1L;

    public Integer getDonateId() {
        return donateId;
    }

    public void setDonateId(Integer donateId) {
        this.donateId = donateId;
    }

    public String getBenefactorName() {
        return benefactorName;
    }

    public void setBenefactorName(String benefactorName) {
        this.benefactorName = benefactorName == null ? null : benefactorName.trim();
    }

    public String getBenefactorTele() {
        return benefactorTele;
    }

    public void setBenefactorTele(String benefactorTele) {
        this.benefactorTele = benefactorTele == null ? null : benefactorTele.trim();
    }

    public Date getDonateTime() {
        return donateTime;
    }

    public void setDonateTime(Date donateTime) {
        this.donateTime = donateTime;
    }

    public String getDonateDescribe() {
        return donateDescribe;
    }

    public void setDonateDescribe(String donateDescribe) {
        this.donateDescribe = donateDescribe == null ? null : donateDescribe.trim();
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", donateId=").append(donateId);
        sb.append(", benefactorName=").append(benefactorName);
        sb.append(", benefactorTele=").append(benefactorTele);
        sb.append(", donateTime=").append(donateTime);
        sb.append(", donateDescribe=").append(donateDescribe);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}