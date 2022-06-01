package com.example.demo.controller;

import com.example.demo.domain.Article;
import com.example.demo.service.ArticleService;
import com.example.demo.util.Message;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/admin/article/")
public class ArticleController {
    @Autowired
    private ArticleService articleService;

    /**
     * 得到记录条数的总页数
     * @return 总页数
     */
    @RequestMapping("pageNum.action")
    @ResponseBody
    public Integer getPageNum() {
        return articleService.getPageNum();
    }

    /**
     * 查询对应页码的文章，按文章发布时间降序排列
     * @param pn 页码
     * @return 提示信息
     */
    @RequestMapping("articlesTime.action")
    @ResponseBody
    public Message getArticlesByTime(Integer pn) {
        // 引入PageHelper分页插件
        // 在查询之前只需要调用，传入页码，以及每页的大小
        PageHelper.startPage(pn,4);
        List<Article> articles = articleService.getBaseArticlesByTime();
        // startPage后面紧跟的这个查询就是一个分页查询
        // 使用pageInfo包装查询后的结果，只需要将pageInfo交给页面就行了。
        // 封装了详细的分页信息,包括有我们查询出来的数据，传入连续显示的页数
        PageInfo page=new PageInfo(articles,3);
        return Message.success().add("pageInfo",page);
    }

    /**
     * 查询对应页码的文章，按文章发布浏览次数降序排列
     * @param pn 页码
     * @return 提示信息
     */
    @RequestMapping("articlesViewTimes.action")
    @ResponseBody
    public Message getArticlesByViewTimes(Integer pn) {
        // 引入PageHelper分页插件
        // 在查询之前只需要调用，传入页码，以及每页的大小
        PageHelper.startPage(pn,4);
        List<Article> articles = articleService.getBaseArticlesByViewTimes();
        // startPage后面紧跟的这个查询就是一个分页查询
        // 使用pageInfo包装查询后的结果，只需要将pageInfo交给页面就行了。
        // 封装了详细的分页信息,包括有我们查询出来的数据，传入连续显示的页数
        PageInfo page=new PageInfo(articles,2);
        return Message.success().add("pageInfo",page);
    }

    /**
     * 根据文章id查询文章
     * @param id 文章id
     * @param isIncre 是否更新浏览次数，false则不更新，true则依据其他情况判断是否更新
     * @param session 当前会话
     * @return 提示信息
     */
    @RequestMapping("findById.action")
    @ResponseBody
    public Message findById(Integer id, boolean isIncre, HttpSession session) {
        boolean isIncrement = true;
        // 限制浏览次数增加
        if (!isIncre) {
            isIncrement = false;
        } else {
            List<Integer> ids = (List<Integer>) session.getAttribute("ids");
            if (ids == null) {
                List<Integer> msg = new ArrayList<>();
                msg.add(id);
                session.setAttribute("ids", msg);
            }
            if (ids != null && ids.contains(id)) {
                isIncrement = false;
            }
            if (ids != null && !ids.contains(id)) {
                ids.add(id);
            }
        }

        Article article = articleService.findById(id, isIncrement);
        if (article != null) {
            return Message.success().add("article", article);
        } else {
            return Message.fail();
        }
    }

    /**
     * 更新文章
     * @param article 最新的文章
     * @return 提示信息
     */
    @RequestMapping("update.action")
    @ResponseBody
    public Message updateArticle(Article article) {
        int i = articleService.updateArticle(article);
        System.out.println(i);
        if(i>0){
            return Message.success();
        }else{
            return Message.fail();
        }
    }

    /**
     * 创建文章
     * @param article 文章对象
     * @return 提示信息
     */
    @RequestMapping("create.action")
    @ResponseBody
    public Message addArticle(Article article){
        int i = articleService.addArticle(article);
        System.out.println(i);
        if(i>0){
            return Message.success();
        }else{
            return Message.fail();
        }
    }

    /**
     * 根据文章id删除文章
     * @param id 文章id
     * @return 提示信息
     */
    @RequestMapping("delete.action")
    @ResponseBody
    public Message delArticle(Integer id){
        int i = articleService.delArticle(id);
        System.out.println(i);
        if(i>0){
            return Message.success();
        }else{
            return Message.fail();
        }
    }

    /**
     * 根据文章标题查询到对应文章
     * @param pn 页码
     * @param articleTitle 文章标题
     * @return 提示信息
     */
    @RequestMapping("findByTitle.action")
    @ResponseBody
    public Message findByTitle(Integer pn, String articleTitle){
        PageHelper.startPage(pn,4);
        List<Article> articles = articleService.findByTitle(articleTitle);
        if(articles != null){
            PageInfo page = new PageInfo(articles,2);
            return Message.success().add("pageInfo",page);
        }else{
            return Message.fail();
        }
    }
}
