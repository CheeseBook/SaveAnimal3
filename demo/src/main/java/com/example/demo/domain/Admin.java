package com.example.demo.domain;

import java.io.Serializable;

public class Admin implements Serializable {
    private Integer adminId;

    private String adminUsername;

    private String adminPassword;

    private String adminName;

    private String adminSex;

    private Integer adminAge;

    private String adminTele;

    private String adminEmail;

    private static final long serialVersionUID = 1L;

    public Integer getAdminId() {
        return adminId;
    }

    public void setAdminId(Integer adminId) {
        this.adminId = adminId;
    }

    public String getAdminUsername() {
        return adminUsername;
    }

    public void setAdminUsername(String adminUsername) {
        this.adminUsername = adminUsername == null ? null : adminUsername.trim();
    }

    public String getAdminPassword() {
        return adminPassword;
    }

    public void setAdminPassword(String adminPassword) {
        this.adminPassword = adminPassword == null ? null : adminPassword.trim();
    }

    public String getAdminName() {
        return adminName;
    }

    public void setAdminName(String adminName) {
        this.adminName = adminName == null ? null : adminName.trim();
    }

    public String getAdminSex() {
        return adminSex;
    }

    public void setAdminSex(String adminSex) {
        this.adminSex = adminSex == null ? null : adminSex.trim();
    }

    public Integer getAdminAge() {
        return adminAge;
    }

    public void setAdminAge(Integer adminAge) {
        this.adminAge = adminAge;
    }

    public String getAdminTele() {
        return adminTele;
    }

    public void setAdminTele(String adminTele) {
        this.adminTele = adminTele == null ? null : adminTele.trim();
    }

    public String getAdminEmail() {
        return adminEmail;
    }

    public void setAdminEmail(String adminEmail) {
        this.adminEmail = adminEmail == null ? null : adminEmail.trim();
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", adminId=").append(adminId);
        sb.append(", adminUsername=").append(adminUsername);
        sb.append(", adminPassword=").append(adminPassword);
        sb.append(", adminName=").append(adminName);
        sb.append(", adminSex=").append(adminSex);
        sb.append(", adminAge=").append(adminAge);
        sb.append(", adminTele=").append(adminTele);
        sb.append(", adminEmail=").append(adminEmail);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}