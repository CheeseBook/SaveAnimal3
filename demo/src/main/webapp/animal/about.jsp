<%--
  Created by IntelliJ IDEA.
  User: 24255
  Date: 2019/8/22
  Time: 23:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8" />
    <meta name="keywords" content=""/>


    <!-- css files -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css" type="text/css" media="all">
    <!-- Owl-Carousel-CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css" media="all" />
    <link href='${pageContext.request.contextPath}/css/simplelightbox.min.css' rel='stylesheet' type='text/css'>
</head>
<body>
<jsp:include page="navigation.jsp"></jsp:include>
<div class="box-white"></div>
<!-- welcome -->
<div class="background">
    <div class="pet-box">
        <div class="pet-msg">
            <div class="pet-title" style="margin-bottom: 20px;">
                <strong>流浪动物知识</strong>
            </div>
        </div>
        <div class="knowledge-screen">
            <ul>
                <li id="new">最新</li>
                <li id="hot">热门</li>
            </ul>
        </div>
        <div class="all-knowledge">
            <ul id="all-knowledge-content">

<%--                <li style="border-bottom: none" class="last-knowledge">--%>
<%--                    已经到底了!--%>
<%--                </li>--%>
            </ul>
        </div>
        <div class="pages">
            <ul id="pagination" class="pagination"></ul>
        </div>
    </div>
</div>


<!-- //Gallery -->
<!-- js -->
<script src="${pageContext.request.contextPath}/JQuery/jquery-3.4.1.min.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jq-paginator.js"></script>
<script src="${pageContext.request.contextPath}/js/animal.js"></script>
<!-- Necessary-JavaScript-File-For-Bootstrap -->
<!-- //js -->

<!-- simple-lightbox -->
<script src="${pageContext.request.contextPath}/js/simple-lightbox.min.js"></script>
<script>
    $(function () {
        var pageNum = 10;
        var s = GetQueryString("s")
        // 获取总页数
        $.ajax({
            url: "${pageContext.request.contextPath}/admin/article/pageNum.action",
            type: "GET",
            success: function (page_num) {
                pageNum = page_num
                if (s === 'hot') {
                    $("#pagination").empty().jqPaginator({
                        totalPages: pageNum,
                        visiblePages: 5,
                        currentPage: 1,
                        first: '<li class="first"><a href="javascript:void(0);">首页<\/a><\/li>',
                        prev: '<li class="prev"><a href="javascript:void(0);"><<\/a><\/li>',
                        next: '<li class="next"><a href="javascript:void(0);">><\/a><\/li>',
                        last: '<li class="last"><a href="javascript:void(0);">尾页<\/a><\/li>',
                        page: '<li class="page"><a href="javascript:void(0);">{{page}}<\/a><\/li>',
                        onPageChange: function (n) {
                            $.ajax({
                                url: "${pageContext.request.contextPath}/admin/article/articlesViewTimes.action",
                                type: "GET",
                                data: {pn : n},
                                dataType: "json",
                                success: function (data) {
                                    $("#all-knowledge-content").empty()
                                    var articles = data.extend.pageInfo.list;
                                    $.each(articles, function (index, article) {
                                        console.log(article)
                                        var title = $("<h2 class='knowledge-title'></h2>")
                                            .append($("<a id='article' target='_blank' href=\"${pageContext.request.contextPath}/animal/article-detail.jsp?id="+ article.articleId +"\"></a>").append(article.articleTitle))

                                        var view = $("<div class='details'></div>").append(article.articleView)
                                        var time = $("<div class='title_time'></div>")
                                            .append($("<span class='times'>浏览次数 "+ article.articleViewTimes +" 次</span>"))
                                            .append($("<span class='time' style='float: right'></span>").append(formatDate(article.articleTime)))
                                        $("<li></li>")
                                            .append(title)
                                            .append(view)
                                            .append(time)
                                            .appendTo("#all-knowledge-content")
                                    })
                                }
                            })
                        }
                    });
                    $("#hot").addClass("knowledge-screen-active").siblings("li").removeClass("knowledge-screen-active")
                } else {
                    $("#pagination").empty().jqPaginator({
                        totalPages: pageNum,
                        visiblePages: 5,
                        currentPage: 1,
                        first: '<li class="first"><a href="javascript:void(0);">首页<\/a><\/li>',
                        prev: '<li class="prev"><a href="javascript:void(0);"><<\/a><\/li>',
                        next: '<li class="next"><a href="javascript:void(0);">><\/a><\/li>',
                        last: '<li class="last"><a href="javascript:void(0);">尾页<\/a><\/li>',
                        page: '<li class="page"><a href="javascript:void(0);">{{page}}<\/a><\/li>',
                        onPageChange: function (n) {
                            $.ajax({
                                url: "${pageContext.request.contextPath}/admin/article/articlesTime.action",
                                type: "GET",
                                data: {pn : n},
                                dataType: "json",
                                success: function (data) {
                                    $("#all-knowledge-content").empty()
                                    var articles = data.extend.pageInfo.list;
                                    $.each(articles, function (index, article) {
                                        console.log(article)
                                        var title = $("<h2 class='knowledge-title'></h2>")
                                            .append($("<a id='article' target='_blank' href=\"${pageContext.request.contextPath}/animal/article-detail.jsp?id="+ article.articleId +"\"></a>").append(article.articleTitle))

                                        var view = $("<div class='details'></div>").append(article.articleView)
                                        var time = $("<div class='title_time'></div>")
                                            .append($("<span class='times'>浏览次数 "+ article.articleViewTimes +" 次</span>"))
                                            .append($("<span class='time' style='float: right'></span>").append(formatDate(article.articleTime)))
                                        $("<li></li>")
                                            .append(title)
                                            .append(view)
                                            .append(time)
                                            .appendTo("#all-knowledge-content")
                                    })
                                }
                            })
                        }
                    });
                    $("#new").addClass("knowledge-screen-active").siblings("li").removeClass("knowledge-screen-active")
                }
            }
        })

        // 点击最新时更新页码
        $("#new").click(function () {
            document.location.href = "${pageContext.request.contextPath}/animal/about.jsp?s=new"
        })
        // 点击最热时更新页面
        $("#hot").click(function () {
            document.location.href = "${pageContext.request.contextPath}/animal/about.jsp?s=hot"
        })



        $(".nav-links li").eq(1).find("a").css("color", "#f15b29")



    });
</script>


<!-- Light-box css -->
<!-- //simple-lightbox -->

</body>
</html>
