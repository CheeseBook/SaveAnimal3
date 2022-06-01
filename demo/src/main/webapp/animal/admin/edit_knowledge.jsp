<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2021/12/29
  Time: 19:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>

    <link href="/bootstrap/css/bootstrap.min.css"rel="stylesheet">
    <script src="/JQuery/jquery-3.4.1.min.js"></script>
    <script src="/bootstrap/js/bootstrap.min.js"></script>
    <link href="/summernote/summernote.css" rel="stylesheet">
    <script src="/summernote/summernote.min.js"></script>
    <script src="/summernote/lang/summernote-zh-CN.js"></script>
    <style>
        .s-blog-body .container,
        .note-editable p,
        .note-editable div{
            line-height: 1.7;
            font-size: 18px;
        }
    </style>
    <script src="${pageContext.request.contextPath}/js/animal.js"></script>
    <script>
        $(function () {
            //获取标识
            var s = GetQueryString("s");

            //初始化summernote
            $('#summernote').summernote({
                //功能图标改为中文
                lang: 'zh-CN',
                //预设内容
                placeholder: '请在此输入内容...',
                overflow: 'auto',
                width: 855,
                height: 500,
                //回调函数
                callbacks: {
                    //初始化
                    onInit: function () {
                        //init
                    },
                    //焦点
                    onFocus: function () {
                        //focus
                    },
                    //图片文件上传
                    onImageUpload: function (files, editor, $editable) {
                        console.log(1)
                        data = new FormData();
                        data.append("file", files[0]);
                        // $.ajax({
                        //     data: data,
                        //     type: "POST",
                        //     url: "",
                        //     cache: false,
                        //     contentType: false,
                        //     processData: false,
                        //     dataType: "json",
                        //     success: function (data) {
                        //         //[服务器所在文件所在目录位置]一般为"http://119.23.216.181/RoboBlogs/Upload_File/default_show.png"
                        //         $('#summernote').summernote('insertImage', "[服务器所在文件所在目录位置]");
                        //     },
                        //     error: function () {
                        //         alert("上传失败");
                        //     }
                        // });
                    }
                }

            });

            // 当页面是为了修改文章时
            if (s === 'edit') {
                var id = GetQueryString("id")
                $.ajax({
                    url: "${pageContext.request.contextPath}/admin/article/findById.action",
                    data: {id: id, isIncre: false},
                    dataType: "json",
                    success: function (data) {
                        var article = data.extend.article;
                        var title = article.articleTitle;
                        var content = article.articleContent;
                        // 将content赋给编辑器
                        $("#summernote").summernote("code", content);
                        $("#article-title").val(title)
                        $("#update_article").html("保存文章")
                    }
                })

                // 点击保存文章
                $("#update_article").click(function () {
                    $.ajax({
                        url: "${pageContext.request.contextPath}/admin/article/update.action",
                        data: {articleId: id, articleContent: $("#summernote").summernote("code"), articleTitle: $("#article-title").val()},
                        dataType: "json",
                        type: "POST",
                        success: function (msg) {
                            if (msg.code === 100) {
                                alert("保存成功！")
                            }
                            if (msg.code === 200) {
                                alert("保存失败")
                            }
                        },
                        error: function () {
                            alert("保存失败")
                        }
                    })
                })
            }

            // 当页面时为了新建文章时
            if (s === 'new') {
                $("#update_article").click(function () {
                    var articleContent = $("#summernote").summernote("code")
                    // 获取文章纯文本
                    var text = $(articleContent).text()
                    // 生成文章概述大小的随机数(150-180)
                    var viewCap = Math.floor(Math.random() * 30 + 150);
                    // 文章概述
                    var articleView = text.substring(0, viewCap) + "..."
                    // 文章生成时间
                    var articleTime = formatDate()

                    $.ajax({
                        url: "${pageContext.request.contextPath}/admin/article/create.action",
                        type: "POST",
                        dataType: "json",
                        data: {articleTitle: $("#article-title").val(), articleContent: articleContent,
                               articleView: articleView, articleTime: articleTime},
                        success: function (msg) {
                            if (msg.code === 100) {
                                alert("新建文章成功！")
                            }
                            if (msg.code === 200) {
                                alert("新建文章失败，请重试")
                            }
                        },
                        error: function () {
                            alert("新建文章失败，请重试")
                        }
                    })
                })
            }

            //解析url
            function GetQueryString(name) {
                var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
                var r = window.location.search.substr(1).match(reg);//search,查询？后面的参数，并匹配正则
                if (r != null) return unescape(r[2]);
                return null;
            }

            // 生成并解析时间
            function formatDate() {
                const date = new Date()
                var y = date.getFullYear() // 年份
                var m = date.getMonth() + 1 // 月份，注意：js里的月要加1
                var d = date.getDate() // 日
                var h = date.getHours() // 小时
                var min = date.getMinutes() // 分钟
                var s = date.getSeconds() // 秒
                // 返回值，根据自己需求调整，现在已经拿到了年月日时分秒了
                return y + '-' + m + '-' + d + ' ' + h + ':' + min + ':' + s
            }

        })
    </script>
</head>
<body>
<div style="height: 200px;position: absolute;margin-left: 50%;left: -417px;">
    <div style="margin-top: 50px;margin-bottom: 35px;">
        <label for="article-title" style="font-size: 20px">文章标题</label>
        <input type="text" id="article-title" class="form-control" style="width: 500px">
    </div>
    <div style="font-size: 20px;font-weight: 700;margin-bottom: 10px;">
        文章内容
        <button class="btn btn-primary" id="update_article" style="float: right">新建文章</button>
    </div>
    <div id="summernote"></div>
</div>
</body>
</html>
