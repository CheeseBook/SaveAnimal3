<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2021/12/28
  Time: 13:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>流浪动物知识信息</title>
    <!-- 引入css样式文件 -->
    <script src="${pageContext.request.contextPath}/JQuery/jquery-3.4.1.min.js"></script>
    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- MetisMenu CSS -->
    <link href="${pageContext.request.contextPath}/js/houtai/css/metisMenu.min.css" rel="stylesheet">
    <!-- DataTables CSS -->
    <link href="${pageContext.request.contextPath}/js/houtai/css/dataTables.bootstrap.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/js/houtai/css/sb-admin-2.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="${pageContext.request.contextPath}/js/houtai/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/js/houtai/css/boot-crm.css" rel="stylesheet" type="text/css">
    <style>
        .panel-heading {
            background-color: #337ab7;
            border-color: #2e6da4;
            font-size: 14px;
            padding-left: 20px;
            height: 36px;
            line-height: 18px;
            color: white;
            position: relative;
        }

        /*转成手形图标*/
        .panel-heading span {
            position: absolute;
            right: 10px;
            top: 12px;
        }

        .panel-body {
            padding: 15px 15px 0 15px;
        }

        .pagination li a {
            cursor: pointer;
        }

        #admin_table tbody .center {
            line-height: 62px;
            text-align: center;
        }
    </style>
    <script>
        $(function () {
            //总的数据 当前的页面
            var totalRecord, currentPage, currentSize, currentPageSize, currentPages;

            to_page(1)

            function to_page(pn) {
                $.ajax({
                    url: "${pageContext.request.contextPath}/admin/article/articlesTime.action",
                    data: "pn=" + pn,
                    type: "GET",
                    success: function (result) {
                        resolving(result);
                    }
                });
            }

            function resolving(result) {
                //1、解析并显示员工数据
                build_articles_table(result);
                //2、解析并显示分页信息
                build_page_info(result);
                //3、解析显示分页条数据
                build_page_nav(result);
            }

            //构建表单
            function build_articles_table(result) {
                //清空table表格
                $("#admin_table tbody").empty();
                //index：下标 user：单个对象
                var articles = result.extend.pageInfo.list;
                $.each(articles, function (index, article) {
                    var articleIdTd = $("<td class='center'></td>").append(article.articleId);
                    var articleTitleTd = $("<td class='center'></td>").append(article.articleTitle);
                    var articleViewTd = $("<td style='height: 80px;overflow: hidden;text-overflow: ellipsis;display: -webkit-box;" +
                        "-webkit-line-clamp:3;-webkit-box-orient: vertical'></td>").append(article.articleView);
                    var articleViewTimesTd = $("<td class='center'></td>").append(article.articleViewTimes);
                    var articleTimeTd = $("<td class='center'></td>").append(formatDate(article.articleTime));

                    var editBtn = $("<button></button>").addClass("btn btn-primary btn-sm edit_btn")
                        .append($("<span></span>").addClass("glyphicon glyphicon-pencil")).append("修改");
                    //为编辑按钮添加一个自定义的属性，来表示当前员工id
                    editBtn.attr("edit-id", article.articleId);
                    var delBtn = $("<button></button>").addClass("btn btn-danger btn-sm delete_btn")
                        .append($("<span></span>").addClass("glyphicon glyphicon-trash")).append("删除");
                    //为删除按钮添加一个自定义的属性来表示当前删除的员工id
                    delBtn.attr("del-id", article.articleId);
                    var btnTd = $("<td class='center'></td>").append(editBtn).append(" ").append(delBtn);
                    //var delBtn =
                    //append方法执行完成以后还是返回原来的元素
                    $("<tr></tr>")
                        .append(articleIdTd)
                        .append(articleTitleTd)
                        .append(articleViewTd)
                        .append(articleViewTimesTd)
                        .append(articleTimeTd)
                        .append(btnTd)
                        .appendTo("#admin_table tbody");
                });
            }

            //解析显示分页信息
            function build_page_info(result) {
                $("#page_info_area").empty();
                $("#page_info_area").append("当前" + result.extend.pageInfo.pageNum + "页,总" +
                    result.extend.pageInfo.pages + "页,总" +
                    result.extend.pageInfo.total + "条记录");
                totalRecord = result.extend.pageInfo.total;//最后的数据
                currentPage = result.extend.pageInfo.pageNum;//当前页
                var currentPages = result.extend.pageInfo.pages;
                currentSize = result.extend.pageInfo.size;//当前页面的尺寸
                currentPageSize = result.extend.pageInfo.pageSize;//每页的尺寸
            }

            //解析显示分页条，点击分页要能去下一页....
            function build_page_nav(result) {
                //page_nav_area
                $("#page_nav_area").empty();
                var ul = $("<ul></ul>").addClass("pagination");

                //构建元素
                var firstPageLi = $("<li></li>").append($("<a></a>").append("首页").attr("href", "#"));
                var prePageLi = $("<li></li>").append($("<a></a>").append("&laquo;"));
                if (result.extend.pageInfo.hasPreviousPage == false) {
                    firstPageLi.addClass("disabled");
                    prePageLi.addClass("disabled");
                } else {
                    //为元素添加点击翻页的事件
                    firstPageLi.click(function () {
                        to_page(1);
                    });
                    prePageLi.click(function () {
                        to_page(result.extend.pageInfo.pageNum - 1);
                    });
                }

                var nextPageLi = $("<li></li>").append($("<a></a>").append("&raquo;"));
                var lastPageLi = $("<li></li>").append($("<a></a>").append("末页").attr("href", "#"));
                if (result.extend.pageInfo.hasNextPage == false) {
                    nextPageLi.addClass("disabled");
                    lastPageLi.addClass("disabled");
                } else {
                    nextPageLi.click(function () {
                        to_page(result.extend.pageInfo.pageNum + 1);
                    });
                    lastPageLi.click(function () {
                        to_page(result.extend.pageInfo.pages);
                    });
                }

                //添加首页和前一页 的提示
                ul.append(firstPageLi).append(prePageLi);
                //1,2，3遍历给ul中添加页码提示
                $.each(result.extend.pageInfo.navigatepageNums, function (index, item) {

                    var numLi = $("<li></li>").append($("<a></a>").append(item));
                    if (result.extend.pageInfo.pageNum == item) {
                        numLi.addClass("active");
                    }
                    numLi.click(function () {
                        to_page(item);
                    });
                    ul.append(numLi);
                });
                //添加下一页和末页 的提示
                ul.append(nextPageLi).append(lastPageLi);

                //把ul加入到nav
                var navEle = $("<nav></nav>").append(ul);
                navEle.appendTo("#page_nav_area");
            }

            // 生成并解析时间
            function formatDate(now) {
                const date = new Date(now)
                var y = date.getFullYear() // 年份
                var m = date.getMonth() + 1 // 月份，注意：js里的月要加1
                var d = date.getDate() // 日
                var h = date.getHours() // 小时
                var min = date.getMinutes() // 分钟
                var s = date.getSeconds() // 秒
                // 返回值，根据自己需求调整，现在已经拿到了年月日时分秒了
                return y + '-' + m + '-' + d
            }

            // 新增文章
            $("#article_add_modal_btn").click(function () {
                window.open("${pageContext.request.contextPath}/animal/admin/edit_knowledge.jsp?s=new");
            })

            // 修改文章
            // 删除文章
            $("tbody").on("click", ".edit_btn", function () {
                var id = $(this).attr("edit-id")
                window.open("${pageContext.request.contextPath}/animal/admin/edit_knowledge.jsp?s=edit&id=" + id);
            }).on("click", ".delete_btn", function () {
                var title = $(this).parents("tr").find("td:eq(1)").text();
                var id = $(this).attr("del-id")
                if (confirm("确认删除文章标题【" + title + "】吗？")) {
                    $.ajax({
                        url: "${pageContext.request.contextPath}/admin/article/delete.action",
                        type: "GET",
                        data: {id: id},
                        dataType: "json",
                        success: function (msg) {
                            if (msg.code === 100) {
                                alert("文章删除成功！");
                                // 如果删除的是当前页的最后一条记录，则跳转到上一页
                                if (currentSize === 1) {
                                    to_page(currentPage - 1);
                                } else {
                                    to_page(currentPage);
                                }
                            } else {
                                alert("文章删除失败！");
                                to_page(currentPage);
                            }
                        }
                    })
                }
            })

            //查询管理员
            $("#article_find_modal_btn").click(function () {
                $("#admin_table tbody").empty();
                var articleName = $("#findByName").val();
                to_findByName(1, articleName);
            });

            $("#findByName").keypress(function (e) {
                if (e.keyCode === 13) {
                    $("#article_find_modal_btn").click()
                }
            })

            function to_findByName(pn, articleName) {
                $.ajax({
                    url: "${pageContext.request.contextPath}/admin/article/findByTitle.action",
                    type: "POST",
                    dataType: "json",
                    data: {"pn": pn, "articleTitle": articleName},
                    async: "true",
                    success: function (result) {
                        if (result.extend.pageInfo.total === 0) {
                            alert("未查询到此文章");
                        } else {
                            build_articles_table(result);
                            build_page_info(result);
                            build_page_findByName(result, articleName);
                        }
                    },
                    error: function (result) {
                        alert("查询文章失败")
                    }
                });
            }

            //解析显示分页条，点击分页要能去下一页....
            function build_page_findByName(result, articleName) {
                //page_nav_area
                $("#page_nav_area").empty();
                var ul = $("<ul></ul>").addClass("pagination");

                //构建元素
                var firstPageLi = $("<li></li>").append($("<a></a>").append("首页").attr("href", "#"));
                var prePageLi = $("<li></li>").append($("<a></a>").append("&laquo;"));
                if (result.extend.pageInfo.hasPreviousPage == false) {
                    firstPageLi.addClass("disabled");
                    prePageLi.addClass("disabled");
                } else {
                    //为元素添加点击翻页的事件
                    firstPageLi.click(function () {
                        to_findByName(1, articleName);
                    });
                    prePageLi.click(function () {
                        to_findByName(result.extend.pageInfo.pageNum - 1, articleName);
                    });
                }

                var nextPageLi = $("<li></li>").append($("<a></a>").append("&raquo;"));
                var lastPageLi = $("<li></li>").append($("<a></a>").append("末页").attr("href", "#"));
                if (result.extend.pageInfo.hasNextPage == false) {
                    nextPageLi.addClass("disabled");
                    lastPageLi.addClass("disabled");
                } else {
                    nextPageLi.click(function () {
                        to_findByName(result.extend.pageInfo.pageNum + 1, articleName);
                    });
                    lastPageLi.click(function () {
                        to_findByName(result.extend.pageInfo.pages, articleName);
                    });
                }

                //添加首页和前一页 的提示
                ul.append(firstPageLi).append(prePageLi);
                //1,2，3遍历给ul中添加页码提示
                $.each(result.extend.pageInfo.navigatepageNums, function (index, item) {

                    var numLi = $("<li></li>").append($("<a></a>").append(item));
                    if (result.extend.pageInfo.pageNum == item) {
                        numLi.addClass("active");
                    }
                    numLi.click(function () {
                        to_findByName(item, articleName);
                    });
                    ul.append(numLi);
                });
                //添加下一页和末页 的提示
                ul.append(nextPageLi).append(lastPageLi);

                //把ul加入到nav
                var navEle = $("<nav></nav>").append(ul);
                navEle.appendTo("#page_nav_area");
            }

            $("#all_articles").click(function (){
                to_page(1)
            })

        })
    </script>
</head>
<body>
<div id="wrapper">
    <!-- 导航栏部分 -->
    <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <a class="navbar-brand" href="">流浪猫狗管理系统</a>
        </div>
        <!-- 导航栏右侧图标部分 -->
        <!-- 导航栏右侧图标部分 -->
        <ul class="nav navbar-top-links navbar-right">
            <!-- 消息通知 end -->
            <!-- 用户信息和系统设置 start -->
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="crmclass/list.action#">
                    <i class="fa fa-user fa-fw"></i>
                    <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-user ">
                    <li><a href="crmclass/list.action#"><i class="fa fa-user fa-fw"></i>
                        用户：</a>
                    </li>
                    <li><a href="crmclass/list.action#"><i class="fa fa-gear fa-fw"></i> 系统设置</a></li>
                    <li class="divider"></li>
                    <li>
                        <a href="${pageContext.request.contextPath}/admin/logout.action">
                            <i class="fa fa-sign-out fa-fw"></i>退出登录
                        </a>
                    </li>
                </ul>
            </li>
            <!-- 用户信息和系统设置结束 -->
        </ul> <!-- 左侧显示列表部分 start-->
        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse">
                <!-- 教学管理  折叠的分组列表 -->
                <div class="panel-heading" id="collapseListGroupHeading3" data-toggle="collapse"
                     data-target="#collapseListGroup3" role="tab">
                    <h4 class="panel-title">
                        后台管理 <span class="fa fa-chevron-up right"></span>
                    </h4>
                </div>
                <div id="collapseListGroup3" class="panel-collapse collapse in" role="tabpanel"
                     aria-labelledby="collapseListGroupHeading3">
                    <ul class="list-group">
                        <li class="list-group-item my_font">
                            <a href="${pageContext.request.contextPath}/animal/admin/admin.jsp">
                                <i class="fa fa-flash fa-fw"></i> 管理员信息
                            </a>
                        </li>
                        <li class="list-group-item my_font">
                            <a href="${pageContext.request.contextPath}/animal/admin/knowledge.jsp">
                                <i class="fa fa-flash fa-fw"></i> 流浪动物知识信息
                            </a>
                        </li>
                        <li class="list-group-item my_font">
                            <a href="${pageContext.request.contextPath}/animal/admin/pet.jsp">
                                <i class="fa fa-sitemap fa-fw"></i> 流浪猫狗管理
                            </a>
                        </li>
                        <li class="list-group-item my_font">
                            <a href="${pageContext.request.contextPath}/animal/admin/adopt.jsp">
                                <i class="fa fa-sitemap fa-fw"></i> 领养管理
                            </a>
                        </li>
                        <li class="list-group-item my_font">
                            <a href="${pageContext.request.contextPath}/animal/admin/blog.jsp">
                                <i class="fa fa-sitemap fa-fw"></i> 活动管理
                            </a>
                        </li>
                        <li class="list-group-item my_font">
                            <a href="${pageContext.request.contextPath}/animal/admin/agree.jsp">
                                <i class="fa fa-sitemap fa-fw"></i> 同意领养列表
                            </a>
                        </li>
                        <li class="list-group-item my_font">
                            <a href="${pageContext.request.contextPath}/animal/admin/disAgree.jsp">
                                <i class="fa fa-sitemap fa-fw"></i> 不同意领养列表
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div><!-- 左侧显示列表部分 end-->
    </nav>
    <!-- 班级列表查询部分  start-->
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">流浪动物知识管理</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="panel panel-default">
            <!-- 搜索部分 -->
            <div class="panel-body">
                <!-- 关闭表单的自动提交 -->
                <form class="form-inline" method="get" onsubmit="return false;">
                    <div class="form-group">
                        <label for="findByName">文章标题</label>
                        <input type="text" class="form-control" id="findByName" value="" name="adminUsername"
                               placeholder="全部文章">
                    </div>
                    <button type="button" class="btn btn-primary" id="article_find_modal_btn">查询</button>
                </form>
                <form class="form-inline" method="get" onsubmit="return false;" style="margin-top: 20px;">
                    <button type="button" class="btn btn-primary" id="all_articles">查询全部文章</button>
                </form>
            </div>
        </div>

        <button class="btn btn-primary" id="article_add_modal_btn">新增</button>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">动物知识信息列表</div>
                    <!-- /.panel-heading -->
                    <table class="table table-bordered table-striped" id="admin_table">
                        <thead>
                        <tr>
                            <th>文章编号</th>
                            <th>文章标题</th>
                            <th style="width: 460px;">文章概述</th>
                            <th>浏览次数</th>
                            <th>发布时间</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>

                        </tbody>
                    </table>
                    <div class="col-md-12 text-right">

                    </div>
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->
            </div>
            <!-- /.col-lg-12 -->
            <!-- 显示分页信息 -->
            <div class="row">
                <!--分页文字信息  -->
                <div class="col-md-8" id="page_info_area"></div>
                <!-- 分页条信息 -->
                <div class="col-md-4" id="page_nav_area" style="margin-bottom: 150px;">

                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
