package com.example.demo.service.Impl;

import com.example.demo.dao.ArticleMapper;
import com.example.demo.domain.Article;
import com.example.demo.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ArticleServiceImpl implements ArticleService {
    @Resource
    private ArticleMapper articleMapper;

    /**
     * 获取文章数量可分页的页数
     * @return 页数
     */
    @Override
    public Integer getPageNum() {
        int num = articleMapper.getAllNum();
        return num / 4 + 1;
    }

    /**
     * 获取所有的文章信息，不包括文章内容
     * @return 所有文章集合
     */
    @Override
    public List<Article> getBaseArticlesByTime() {
        return articleMapper.getAllBaseArticlesByTime();
    }

    /**
     * 根据文章id查找文章的全部信息
     * @param id 文章id
     * @return 匹配的文章
     */
    @Transactional
    @Override
    public Article findById(Integer id, boolean isIncrement) {
        // 更新文章的浏览次数
        if (isIncrement) {
            articleMapper.upViewTimes(id);
        }
        return articleMapper.getArticleById(id);

    }

    @Override
    public List<Article> getBaseArticlesByViewTimes() {
        return articleMapper.getAllBaseArticlesByViewTimes();
    }

    @Override
    public int updateArticle(Article article) {
        return articleMapper.updateArticle(article);
    }

    @Override
    public int addArticle(Article article) {
        return articleMapper.addArticle(article);
    }

    @Override
    public int delArticle(Integer id) {
        return articleMapper.delArticle(id);
    }

    @Override
    public List<Article> findByTitle(String articleTitle) {
        return articleMapper.findByTitle(articleTitle);
    }
}
