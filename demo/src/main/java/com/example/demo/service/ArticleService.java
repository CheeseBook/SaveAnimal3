package com.example.demo.service;

import com.example.demo.domain.Article;

import java.util.List;

public interface ArticleService {

    Integer getPageNum();

    List<Article> getBaseArticlesByTime();

    Article findById(Integer id, boolean isIncrement);

    List<Article> getBaseArticlesByViewTimes();

    int updateArticle(Article article);

    int addArticle(Article article);

    int delArticle(Integer id);

    List<Article> findByTitle(String articleTitle);
}
