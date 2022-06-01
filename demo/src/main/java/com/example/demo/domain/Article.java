package com.example.demo.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

public class Article implements Serializable {
    private Integer articleId;

    private String articleTitle;

    private String articleView;

    private Integer articleViewTimes;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "Asia/Shanghai")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date articleTime;

    private String articleContent;

    private static final long serialVersionUID = 1L;

    public Integer getArticleId() {
        return articleId;
    }

    public void setArticleId(Integer articleId) {
        this.articleId = articleId;
    }

    public String getArticleTitle() {
        return articleTitle;
    }

    public void setArticleTitle(String articleTitle) {
        this.articleTitle = articleTitle == null ? null : articleTitle.trim();
    }

    public String getArticleView() {
        return articleView;
    }

    public void setArticleView(String articleView) {
        this.articleView = articleView == null ? null : articleView.trim();
    }

    public Integer getArticleViewTimes() {
        return articleViewTimes;
    }

    public void setArticleViewTimes(Integer articleViewTimes) {
        this.articleViewTimes = articleViewTimes;
    }

    public Date getArticleTime() {
        return articleTime;
    }

    public void setArticleTime(Date articleTime) {
        this.articleTime = articleTime;
    }

    public String getArticleContent() {
        return articleContent;
    }

    public void setArticleContent(String articleContent) {
        this.articleContent = articleContent == null ? null : articleContent.trim();
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", articleId=").append(articleId);
        sb.append(", articleTitle=").append(articleTitle);
        sb.append(", articleView=").append(articleView);
        sb.append(", articleViewTimes=").append(articleViewTimes);
        sb.append(", articleTime=").append(articleTime);
        sb.append(", articleContent=").append(articleContent);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}