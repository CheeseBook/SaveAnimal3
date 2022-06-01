<%--
  Created by IntelliJ IDEA.
  User: 24255
  Date: 2019/8/22
  Time: 23:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>activity</title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8"/>
    <meta name="keywords" content=""/>

    <!--// Meta tag Keywords -->
    <!-- css files -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css" type="text/css"
          media="all">
    <!-- Owl-Carousel-CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css" media="all"/>

</head>
<body>
<jsp:include page="navigation.jsp"></jsp:include>
<div class="box-white"></div>
<div class="form-box" id="form-box" style="display: none">
    <div class="save-form-box" style="display: none; height: 540px">
        <div class="shutdown">×</div>
        <div class="save-title">
            申请加入活动申请表填写
        </div>
        <div class="rows">
            <div class="row-name">您的姓名:</div>
            <div class="row-input">
                <input type="text" class="input-area input-text" name="rescuerName" placeholder="请输入您的姓名">
            </div>
        </div>
        <div class="rows">
            <div class="row-name">电话号码:</div>
            <div class="row-input">
                <input type="text" class="input-area input-text" name="rescuerTele" placeholder="请输入您的手机号">
            </div>
        </div>
        <div class="rows">
            <div class="row-name">电子邮箱:</div>
            <div class="row-input">
                <input type="text" class="input-area input-text" name="referAddress" placeholder="请输入您的电子邮箱">
            </div>
        </div>
        <div class="rows">
            <div class="row-name">申请理由:</div>
            <div class="row-input">
                <%--                <div class="flex_textarea js_textarea input-area" contenteditable="true" onpaste="return pasteListener(event, true)"--%>
                <%--                     id="animalDescribe" placeholder="请大概描述一下动物状态"></div>--%>
                <textarea id="animalDescribe" cols="30" rows="5" class="input-area" name="animalDescribe" placeholder="请大概说明一下领养该动物的理由"></textarea>
            </div>
        </div>

        <div id="submit-save-msg">
            提交信息
        </div>
    </div>
</div>

<!-- services -->
<div class="background">


    <%-- 领养动物 --%>
    <div class="pet-box">
        <div class="pet-msg">
            <div class="pet-title" style="margin-bottom: 45px;">
                <strong>志愿活动</strong>
            </div>
        </div>
        <div class="all-pets" style="width: 100%; height: 100%;">
            <div class="service-class-box">
                <div class="class-state service-class">
                    <div class="class-name">活动状态</div>
                    <ul>
                        <li>全部</li>
                        <li>未开始</li>
                        <li>进行中</li>
                        <li>已结束</li>
                    </ul>
                </div>
            </div>
            <div class="pet-preview-box">
                <div class="preview-1 preview">
                    <ul>
                        <li style="height: 170px;width: 850px">

                            <div style="margin: 10px 20px;height: 20px;width: 80%">
                                <h4><b>关爱流浪动物宣传活动</b></h4>
                            </div>

                            <div class="gaishu" style="height: 75px;width: 95%;margin: 0 auto">

                                现在无论是在大街小巷还是在小区垃圾桶旁边，我们总是能看到一些流浪动物的身影，它们失去了主人的关爱，也没有温暖的家庭，它们被迫在外流浪,过着风餐露宿饥寒交迫的日子。一些层出不穷的令人发指的虐待动物事件，使他们的生活更加的艰难。为此，我们学生会生活部，文艺部，媒体公关部三个部门共同组织开展了这次公益活动，特意去到了“宠小乖”
                            </div>
<%--                            <div id="action" style="width: 500px;background-color: #f0f1f2;border-width: 1px;border-style: inherit;border-top-color: cornsilk;height: 210px">--%>


<%--                            </div>--%>
                            <div class="xinxi" style="height: 25px;width: 95%;margin: 0 auto">
                                <div class="address-action" style="display: inline-block;width: 200px ">活动地点：<span style="color: #f15b29">江西师范大学</span></div>
                                <div class="time-begin" style="display: inline-block;width: 200px">活动开始时间：<span style="color: #f15b29">2021-12-1 8:00</span></div>
                                <br>
                                <div class="time-long" style="display: inline-block;width: 200px">活动状态：<span style="color: green">未开始</span></div>
                                <div class="time-long" style="display: inline-block;width: 200px">活动持续时间：<span style="color: #f15b29">3小时</span></div>
                            </div>

                        </li>
                    </ul>
                </div>
                <div class="preview-1 preview">
                    <ul>
                        <li style="height: 170px;width: 850px">

                            <div style="margin: 10px 20px;height: 20px;width: 80%">
                                <h4><b>关爱流浪动物宣传活动</b></h4>
                            </div>

                            <div class="gaishu" style="height: 75px;width: 95%;margin: 0 auto">

                                现在无论是在大街小巷还是在小区垃圾桶旁边，我们总是能看到一些流浪动物的身影，它们失去了主人的关爱，也没有温暖的家庭，它们被迫在外流浪,过着风餐露宿饥寒交迫的日子。一些层出不穷的令人发指的虐待动物事件，使他们的生活更加的艰难。为此，我们学生会生活部，文艺部，媒体公关部三个部门共同组织开展了这次公益活动，特意去到了“宠小乖”
                            </div>
                            <%--                            <div id="action" style="width: 500px;background-color: #f0f1f2;border-width: 1px;border-style: inherit;border-top-color: cornsilk;height: 210px">--%>


                            <%--                            </div>--%>
                            <div class="xinxi" style="height: 25px;width: 95%;margin: 0 auto">
                                <div class="address-action" style="display: inline-block;width: 200px ">活动地点：<span style="color: #f15b29">江西师范大学</span></div>
                                <div class="time-begin" style="display: inline-block;width: 200px">活动开始时间：<span style="color: #f15b29">2021-12-1 8:00</span></div>
                                <br>
                                <div class="time-long" style="display: inline-block;width: 200px">活动状态：<span style="color: green">未开始</span></div>
                                <div class="time-long" style="display: inline-block;width: 200px">活动持续时间：<span style="color: #f15b29">3小时</span></div>
                            </div>

                        </li>
                    </ul>
                </div>
                <div class="preview-1 preview">
                    <ul>
                        <li style="height: 170px;width: 850px">

                            <div style="margin: 10px 20px;height: 20px;width: 80%">
                                <h4><b>关爱流浪动物宣传活动</b></h4>
                            </div>

                            <div class="gaishu" style="height: 75px;width: 95%;margin: 0 auto">

                                现在无论是在大街小巷还是在小区垃圾桶旁边，我们总是能看到一些流浪动物的身影，它们失去了主人的关爱，也没有温暖的家庭，它们被迫在外流浪,过着风餐露宿饥寒交迫的日子。一些层出不穷的令人发指的虐待动物事件，使他们的生活更加的艰难。为此，我们学生会生活部，文艺部，媒体公关部三个部门共同组织开展了这次公益活动，特意去到了“宠小乖”
                            </div>
                            <%--                            <div id="action" style="width: 500px;background-color: #f0f1f2;border-width: 1px;border-style: inherit;border-top-color: cornsilk;height: 210px">--%>


                            <%--                            </div>--%>
                            <div class="xinxi" style="height: 25px;width: 95%;margin: 0 auto">
                                <div class="address-action" style="display: inline-block;width: 200px ">活动地点：<span style="color: #f15b29">江西师范大学</span></div>
                                <div class="time-begin" style="display: inline-block;width: 200px">活动开始时间：<span style="color: #f15b29">2021-12-1 8:00</span></div>
                                <br>
                                <div class="time-long" style="display: inline-block;width: 200px">活动状态：<span style="color: green">未开始</span></div>
                                <div class="time-long" style="display: inline-block;width: 200px">活动持续时间：<span style="color: #f15b29">3小时</span></div>
                            </div>

                        </li>
                    </ul>
                </div>
                <div class="preview-1 preview">
                    <ul>
                        <li style="height: 170px;width: 850px">

                            <div style="margin: 10px 20px;height: 20px;width: 80%">
                                <h4><b>关爱流浪动物宣传活动</b></h4>
                            </div>

                            <div class="gaishu" style="height: 75px;width: 95%;margin: 0 auto">

                                现在无论是在大街小巷还是在小区垃圾桶旁边，我们总是能看到一些流浪动物的身影，它们失去了主人的关爱，也没有温暖的家庭，它们被迫在外流浪,过着风餐露宿饥寒交迫的日子。一些层出不穷的令人发指的虐待动物事件，使他们的生活更加的艰难。为此，我们学生会生活部，文艺部，媒体公关部三个部门共同组织开展了这次公益活动，特意去到了“宠小乖”
                            </div>
                            <%--                            <div id="action" style="width: 500px;background-color: #f0f1f2;border-width: 1px;border-style: inherit;border-top-color: cornsilk;height: 210px">--%>


                            <%--                            </div>--%>
                            <div class="xinxi" style="height: 25px;width: 95%;margin: 0 auto">
                                <div class="address-action" style="display: inline-block;width: 200px ">活动地点：<span style="color: #f15b29">江西师范大学</span></div>
                                <div class="time-begin" style="display: inline-block;width: 200px">活动开始时间：<span style="color: #f15b29">2021-12-1 8:00</span></div>
                                <br>
                                <div class="time-long" style="display: inline-block;width: 200px">活动状态：<span style="color: green">未开始</span></div>
                                <div class="time-long" style="display: inline-block;width: 200px">活动持续时间：<span style="color: #f15b29">3小时</span></div>
                            </div>

                        </li>
                    </ul>
                </div>
            </div>
            <div class="pages">
                <ul id="pagination" class="pagination"></ul>
            </div>
        </div>

        <div class="one-pet-details" style="width: 100%;height: 100%;display: none; padding: 0 55px 0 55px;">
            <div class="back"> < 返回</div>
            <div class="big-pic">
                <img src="${pageContext.request.contextPath}/images/animal/big_pic/u=2609109804,2870642995&fm=26&gp=0.jpg" alt="">
            </div>
            <div class="pet-all-msg">
                <div class="all-msg-rows">
                    <div class="all-msg-title">活动名称：</div>
                    <div class="rows-content">关爱流浪动物宣传活动</div>
                </div>
                <div class="all-msg-rows">
                    <div class="all-msg-title">时&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;间：</div>
                    <div class="rows-content">12月15号下午2点</div>
                </div>
                <div class="all-msg-rows">
                    <div class="all-msg-title">地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;点：</div>
                    <div class="rows-content">南昌市青山湖区</div>
                </div>
                <div class="all-msg-rows">
                    <div class="all-msg-title">人&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;数：</div>
                    <div class="rows-content">15人</div>
                </div>
                <div class="all-msg-rows">
                    <div class="all-msg-title">持续时间：</div>
                    <div class="rows-content">2h</div>
                </div>
            </div>
            <div class="btn-adopt">我要报名</div>
            <div class="pet-details-last">
                <div class="last-title">
                    <div>详细信息</div>
                </div>
                <div class="last-content">
                    <p>现在无论是在大街小巷还是在小区垃圾桶旁边，我们总是能看到一些流浪动物的身影，它们失去了主人的关爱，也没有温暖的家庭，它们被迫在外流浪,过着风餐露宿饥寒交迫的日子。一些层出不穷的令人发指的虐待动物事件，使他们的生活更加的艰难。为此，我们学生会生活部，文艺部，媒体公关部三个部门共同组织开展了这次公益活动，特意去到了“宠小乖”
                        这是三个部门的学生代表在
                        流浪狗保护基地志愿活动的身影
                        帮助工作人员打扫猫舍 消毒 喂食等
                        面对猫舍的清洁任务,我们分别对猫爬架,地面,玻璃进行了清理,并且对整个猫舍彻底消毒,为小猫们提供了一个良好舒适且卫生整洁的生活环境
                        已经洗完澡的狗狗们，在我们的带领下来到户外玩耍,看到它们奔跑嬉戏的样子，它们乖巧依偎在我们臂弯中的样子，它们低头舔舐我们手中狗粮的样子，让我们知道信任纽带已经存在于我们之间，这使我们一天的疲惫被温暖真挚的情感所融化</p>
                </div>
            </div>
        </div>

    </div>

</div>




<!-- //services -->
<!-- js -->
<script src="${pageContext.request.contextPath}/JQuery/jquery-3.4.1.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/js/jq-paginator.js"></script>
<!-- Necessary-JavaScript-File-For-Bootstrap -->
<!-- //js -->
<script>
    $(function () {
        $(".nav-links li").eq(5).find("a").css("color", "#f15b29")
        $(".nav-name").on("click", function () {
            $(this).addClass("nav-name-active").siblings("div").removeClass("nav-name-active")
        })
        $(".nav-name").eq(0).on("click", function () {
            $(".pet-box").eq(1).fadeOut(0)
            $(".pet-box").eq(0).fadeIn(500)
        }).click()
        $(".nav-name").eq(1).on("click", function () {
            $(".pet-box").eq(0).fadeOut(0)
            $(".pet-box").eq(1).fadeIn(500)
        })


        var uls = $(".service-class ul")
        for (let i = 0; i < uls.length; i++) {
            var lis = $(uls[i]).find("li")
            for (let i = 0; i < lis.length; i++) {
                $(lis[i]).click(function () {
                    $(this).addClass("service-class-active").siblings("li").removeClass("service-class-active")
                })
                if (i === 0) {
                    lis[i].click()
                }
            }
        }
        $("#pagination").jqPaginator({
            totalPages: 10,
            visiblePages: 5,
            currentPage: 1,
            first: '<li class="first"><a href="javascript:void(0);">首页<\/a><\/li>',
            prev: '<li class="prev"><a href="javascript:void(0);"><<\/a><\/li>',
            next: '<li class="next"><a href="javascript:void(0);">><\/a><\/li>',
            last: '<li class="last"><a href="javascript:void(0);">尾页<\/a><\/li>',
            page: '<li class="page"><a href="javascript:void(0);">{{page}}<\/a><\/li>',
            onPageChange: function (n) {
                console.log(n)
            }
        });

        var doc = document.documentElement;
        relHeight = (doc.clientHeight > doc.scrollHeight) ? doc.clientHeight : doc.scrollHeight;//获取屏幕高度和当前页面高度中的较大值
        document.getElementById('form-box').style.height = relHeight+'px';//id为bg的div就是我页面中的遮罩层

        $(".back").mouseover(function () {
            $(this).addClass("back-active")
        }).mouseout(function () {
            $(this).removeClass("back-active")
        }).click(function () {
            $(".one-pet-details").fadeOut(500)
            $(".all-pets").fadeIn(500)
        })

        $(".all-pets .preview").on("click", "li", function () {
            $(".all-pets").fadeOut(300)
            $(".one-pet-details").fadeIn(300)
        })

        $(".row-input .input-area").mouseover(function () {
            $(this).css({
                fontSize: "15px",
                fontWeight: "bold",
                transition: "all .5s ease"
            })
        }).mouseout(function () {
            if (!$(this).is(":focus")) {
                $(this).css({
                    fontSize: "13px",
                    fontWeight: "normal",
                    transition: "all .5s ease"
                })
            }
        }).focus(function () {
            $(this).css({
                fontSize: "15px!important",
                fontWeight: "bold!important",
                transition: "all .5s ease",
                border: "2px solid #f15b29"
            })
        }).blur(function () {
            $(this).css({
                fontSize: "13px",
                fontWeight: "normal",
                border: "2px solid transparent"
            })
        })

        $(".btn-adopt").click(function () {
            $("#form-box").css({display: "block"})
            $(".nav-links .navbar-default").css({backgroundColor: "#cfcfcf"})
            $(".save-form-box").fadeIn(300)
        })

        $(".shutdown").click(function () {
            $(".save-form-box").fadeOut(300, function () {
                $("#form-box").css({display: "none"})
                $(".nav-links .navbar-default").css({backgroundColor: "white"})
            })
        })
    })
</script>


</body>

</html>