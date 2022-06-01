package com.example.demo.domain;

import java.io.Serializable;

public class Actor extends ActorKey implements Serializable {
    private String actorName;

    private String actorTele;

    private String remark;

    private static final long serialVersionUID = 1L;

    public String getActorName() {
        return actorName;
    }

    public void setActorName(String actorName) {
        this.actorName = actorName == null ? null : actorName.trim();
    }

    public String getActorTele() {
        return actorTele;
    }

    public void setActorTele(String actorTele) {
        this.actorTele = actorTele == null ? null : actorTele.trim();
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
        sb.append(", actorName=").append(actorName);
        sb.append(", actorTele=").append(actorTele);
        sb.append(", remark=").append(remark);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}