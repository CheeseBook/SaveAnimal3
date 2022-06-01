package com.example.demo.domain;

import java.io.Serializable;
import java.util.Date;

public class Share implements Serializable {
    private Integer shareId;

    private Integer adopterId;

    private Date shareTime;

    private String shareType;

    private String shareContent;

    private static final long serialVersionUID = 1L;

    public Integer getShareId() {
        return shareId;
    }

    public void setShareId(Integer shareId) {
        this.shareId = shareId;
    }

    public Integer getAdopterId() {
        return adopterId;
    }

    public void setAdopterId(Integer adopterId) {
        this.adopterId = adopterId;
    }

    public Date getShareTime() {
        return shareTime;
    }

    public void setShareTime(Date shareTime) {
        this.shareTime = shareTime;
    }

    public String getShareType() {
        return shareType;
    }

    public void setShareType(String shareType) {
        this.shareType = shareType == null ? null : shareType.trim();
    }

    public String getShareContent() {
        return shareContent;
    }

    public void setShareContent(String shareContent) {
        this.shareContent = shareContent == null ? null : shareContent.trim();
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", shareId=").append(shareId);
        sb.append(", adopterId=").append(adopterId);
        sb.append(", shareTime=").append(shareTime);
        sb.append(", shareType=").append(shareType);
        sb.append(", shareContent=").append(shareContent);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}