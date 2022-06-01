package com.example.demo.dao;

import com.example.demo.domain.Article;

import java.util.List;

public interface ArticleMapper {
    Integer getAllNum();

    List<Article> getAllBaseArticlesByTime();

    Article getArticleById(Integer id);

    void upViewTimes(Integer id);

    List<Article> getAllBaseArticlesByViewTimes();

    int updateArticle(Article article);

    int addArticle(Article article);

    int delArticle(Integer id);

    List<Article> findByTitle(String articleTitle);
}