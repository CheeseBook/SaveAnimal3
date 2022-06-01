package com.example.demo.domain;

import java.io.Serializable;
import java.util.Date;

public class Activity implements Serializable {
    private Integer activityId;

    private String activityName;

    private Date activityBegin;

    private Date activityEnd;

    private String activityAddress;

    private String activityDescribe;

    private Integer actorNum;

    private static final long serialVersionUID = 1L;

    public Integer getActivityId() {
        return activityId;
    }

    public void setActivityId(Integer activityId) {
        this.activityId = activityId;
    }

    public String getActivityName() {
        return activityName;
    }

    public void setActivityName(String activityName) {
        this.activityName = activityName == null ? null : activityName.trim();
    }

    public Date getActivityBegin() {
        return activityBegin;
    }

    public void setActivityBegin(Date activityBegin) {
        this.activityBegin = activityBegin;
    }

    public Date getActivityEnd() {
        return activityEnd;
    }

    public void setActivityEnd(Date activityEnd) {
        this.activityEnd = activityEnd;
    }

    public String getActivityAddress() {
        return activityAddress;
    }

    public void setActivityAddress(String activityAddress) {
        this.activityAddress = activityAddress == null ? null : activityAddress.trim();
    }

    public String getActivityDescribe() {
        return activityDescribe;
    }

    public void setActivityDescribe(String activityDescribe) {
        this.activityDescribe = activityDescribe == null ? null : activityDescribe.trim();
    }

    public Integer getActorNum() {
        return actorNum;
    }

    public void setActorNum(Integer actorNum) {
        this.actorNum = actorNum;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", activityId=").append(activityId);
        sb.append(", activityName=").append(activityName);
        sb.append(", activityBegin=").append(activityBegin);
        sb.append(", activityEnd=").append(activityEnd);
        sb.append(", activityAddress=").append(activityAddress);
        sb.append(", activityDescribe=").append(activityDescribe);
        sb.append(", actorNum=").append(actorNum);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}