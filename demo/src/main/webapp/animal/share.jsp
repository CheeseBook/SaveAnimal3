<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2021/12/16
  Time: 16:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8" />
    <meta name="keywords" content=""/>

    <!--// Meta tag Keywords -->
    <!-- css files -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css" type="text/css" media="all">
    <!-- Owl-Carousel-CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css" media="all" />
    <!-- Bootstrap-Core-CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.css" type="text/css" media="all">

</head>
<body>

<jsp:include page="navigation.jsp"></jsp:include>
<div class="box-white"></div>
<!-- team -->
<div class="background">
    <div class="pet-box-1">
        <div class="nav-box">
            <div class="nav-name name-1">爱心图片</div>
            <div class="nav-name name-1">暖心故事</div>
        </div>
    </div>
    <div class="pet-box" id="sweet-img">
        <div class="pet-msg">
            <div class="pet-title" style="margin-bottom: 45px;">
                <strong>爱心图片</strong>
            </div>
        </div>
        <div class="sweet-pic">
            <ul>
                <li>
                    <a href="${pageContext.request.contextPath}/images/sweet_img/img.png" target="_blank">
                        <img src="${pageContext.request.contextPath}/images/sweet_img/img.png" alt="" width="238" height="180">
                        <div class="sweet-pic-name">
                            ”小鹏“与领养人
                        </div>
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/images/sweet_img/img.png" target="_blank">
                        <img src="${pageContext.request.contextPath}/images/sweet_img/img.png" alt="" width="238" height="180">
                        <div class="sweet-pic-name">
                            ”小鹏“与领养人
                        </div>
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/images/sweet_img/img.png" target="_blank">
                        <img src="${pageContext.request.contextPath}/images/sweet_img/img.png" alt="" width="238" height="180">
                        <div class="sweet-pic-name">
                            ”小鹏“与领养人
                        </div>
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/images/sweet_img/img.png" target="_blank">
                        <img src="${pageContext.request.contextPath}/images/sweet_img/img.png" alt="" width="238" height="180">
                        <div class="sweet-pic-name">
                            ”小鹏“与领养人
                        </div>
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/images/sweet_img/img.png" target="_blank">
                        <img src="${pageContext.request.contextPath}/images/sweet_img/img.png" alt="" width="238" height="180">
                        <div class="sweet-pic-name">
                            ”小鹏“与领养人
                        </div>
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/images/sweet_img/img.png" target="_blank">
                        <img src="${pageContext.request.contextPath}/images/sweet_img/img.png" alt="" width="238" height="180">
                        <div class="sweet-pic-name">
                            ”小鹏“与领养人
                        </div>
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/images/sweet_img/img.png" target="_blank">
                        <img src="${pageContext.request.contextPath}/images/sweet_img/img.png" alt="" width="238" height="180">
                        <div class="sweet-pic-name">
                            ”小鹏“与领养人
                        </div>
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/images/sweet_img/img.png" target="_blank">
                        <img src="${pageContext.request.contextPath}/images/sweet_img/img.png" alt="" width="238" height="180">
                        <div class="sweet-pic-name">
                            ”小鹏“与领养人
                        </div>
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/images/sweet_img/img.png" target="_blank">
                        <img src="${pageContext.request.contextPath}/images/sweet_img/img.png" alt="" width="238" height="180">
                        <div class="sweet-pic-name">
                            ”小鹏“与领养人
                        </div>
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/images/sweet_img/img.png" target="_blank">
                        <img src="${pageContext.request.contextPath}/images/sweet_img/img.png" alt="" width="238" height="180">
                        <div class="sweet-pic-name">
                            ”小鹏“与领养人
                        </div>
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/images/sweet_img/img.png" target="_blank">
                        <img src="${pageContext.request.contextPath}/images/sweet_img/img.png" alt="" width="238" height="180">
                        <div class="sweet-pic-name">
                            ”小鹏“与领养人
                        </div>
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/images/sweet_img/img.png" target="_blank">
                        <img src="${pageContext.request.contextPath}/images/sweet_img/img.png" alt="" width="238" height="180">
                        <div class="sweet-pic-name">
                            ”小鹏“与领养人
                        </div>
                    </a>
                </li>
            </ul>
        </div>
        <div class="pages">
            <ul id="pagination" class="pagination"></ul>
        </div>
    </div>
    <div class="pet-box" id="sweet-story">
        <div class="pet-msg">
            <div class="pet-title" style="margin-bottom: 45px;">
                <strong>暖心故事</strong>
            </div>
        </div>
        <div class="adopt-story-list">
            <div class="adopt-story">
                <h4>一个简单的小故事（九九）</h4>
                <div class="adopt-story-preview">
                    感谢受邀撰写“领养故事”网站宣文，荣幸之至且受宠若惊，本人文笔并不好，撰写前一直在思考文章的
                    立意，领养过程陈述、领养心得、养狗好物分享等一一被我否定，最后定为我领养狗狗时的初心“我想给
                    他更好的生活”。
                </div>
                <div class="adopt-story-time">
                    <span>2019</span>-<span>05</span>-<span>12</span>
                </div>
            </div>
            <div class="adopt-story">
                <h4>一个简单的小故事（九九）</h4>
                <div class="adopt-story-preview">
                    感谢受邀撰写“领养故事”网站宣文，荣幸之至且受宠若惊，本人文笔并不好，撰写前一直在思考文章的
                    立意，领养过程陈述、领养心得、养狗好物分享等一一被我否定，最后定为我领养狗狗时的初心“我想给
                    他更好的生活”。
                </div>
                <div class="adopt-story-time">
                    <span>2019</span>-<span>05</span>-<span>12</span>
                </div>
            </div>
            <div class="adopt-story">
                <h4>一个简单的小故事（九九）</h4>
                <div class="adopt-story-preview">
                    感谢受邀撰写“领养故事”网站宣文，荣幸之至且受宠若惊，本人文笔并不好，撰写前一直在思考文章的
                    立意，领养过程陈述、领养心得、养狗好物分享等一一被我否定，最后定为我领养狗狗时的初心“我想给
                    他更好的生活”。
                </div>
                <div class="adopt-story-time">
                    <span>2019</span>-<span>05</span>-<span>12</span>
                </div>
            </div>
            <div class="adopt-story">
                <h4>一个简单的小故事（九九）</h4>
                <div class="adopt-story-preview">
                    感谢受邀撰写“领养故事”网站宣文，荣幸之至且受宠若惊，本人文笔并不好，撰写前一直在思考文章的
                    立意，领养过程陈述、领养心得、养狗好物分享等一一被我否定，最后定为我领养狗狗时的初心“我想给
                    他更好的生活”。
                </div>
                <div class="adopt-story-time">
                    <span>2019</span>-<span>05</span>-<span>12</span>
                </div>
            </div>

        </div>
        <div class="pages">
            <ul id="pagination2" class="pagination"></ul>
        </div>
    </div>
    <div class="pet-box" id="text-details" style="display: none; padding: 50px 50px 80px 50px">
        <div class="back"> < 返回</div>
        <div class="overall-text">
            <h3>一个简单的小故事(九九)</h3>
            <p>感谢受邀撰写“领养故事”网站宣文，荣幸之至且受宠若惊，本人文笔并不好，撰写前一直在思考文章的立意，领养过程陈述、领养心得、养狗好物分享等一一被我否定，最后定为我领养狗狗时的初心“我想给他更好的生活”。</p>

            <p>2021年1月23日，我在领养中心领养了一只狗狗九九（以下简称“我儿”），我儿是一只做过截肢手术的黄色小型中华田园犬。</p>

            <p>我是去大勘狗场见到的我儿，在众多狗狗中，我儿显得不太起眼，甚至我都没有注意到在地上嗅食的他，我儿跳过来把他仅有的一只前脚搭在了我的手上，结束了这长达20分钟的纠结，当机立断跟阿姨说我想养这只狗狗可以吗？我问的小心翼翼，阿姨最开始给我介绍的时候说年长及受伤的狗狗为了更好的照顾不建议领养（这其实充分的体现了领养中心在照顾流浪猫狗时的尽心尽责，我非常尊重且感谢领养中心的所有工作人员）。之后，待与工作人员确认，经过一系列详细的流程后，我获得了我儿的领养资格。</p>

            <p>当天晚上回家途中，我隐忍了良久的情绪爆发，我儿受伤的时候我不在，不能为他排除伤害，我儿手术的时候我不在，不能为他安抚加油，我儿住院的时候我不在，不能时时照顾虚弱的他，我儿出院的时候我不在，不能接他回家，我儿遭路人疑惑嘲笑，不能及时出现为他发声，这一路狠狠的自责，失职且缺席，这以后“我想给他更好的生活”。</p>

            <p>冷静后，非常谢谢领养中心收养了受伤的他，安排香港高级宠物医生为他做截肢手术，常驻医生时时为他检查身体是否健康，认真且负责，领养中心的工作人员耐心的陪伴与宠爱，感恩，鸣谢！</p>

            <p>在我和我儿相处的这几个月了里我给了他独独一份的宠爱，爱吃醋，妈从不摸别的狗，爱吃零食，买，爱睡觉，最舒服的狗窝，营养均衡，各种蔬菜等等等，但这些丰富的物质条件真的意味着我儿过上了更好的生活？</p>

            <p>在相处的过程中，我发现我儿最喜欢的是妈妈，他希望每天跟妈妈在一起，他喜欢跟妈妈散步，他喜欢妈妈抱着他，他喜欢妈妈摸他的小肚子，他喜欢妈妈跟他玩，他想要的最好的爱都是和我在一起...</p>

            <p>我在力所能及的范围内给了他最好的陪伴和宠爱，小区的狗狗都很喜欢和他玩，遇见他的人我都会解释他的经历，别人都会称赞他是个勇敢的孩子，我儿每天晚上都可以在小区里肆意的奔跑，开心的笑着，回头的时候我都在......</p>
        </div>
    </div>
</div>


<!-- contact -->

<!-- //team -->
<!-- js -->
<script src="${pageContext.request.contextPath}/JQuery/jquery-3.4.1.min.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jq-paginator.js"></script>
<!-- Necessary-JavaScript-File-For-Bootstrap -->
<!-- //js -->
<script type="text/javascript">
    $(".nav-links li").eq(4).find("a").css("color", "#f15b29")
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

    $(".adopt-story-list").on("mouseover", ".adopt-story", function () {
        $(this).find("h4").css({
            color: "#f15b29"
        })
    }).on("mouseout", ".adopt-story", function () {
        $(this).find("h4").css({
            color: "black"
        })
    }).on("click", ".adopt-story", function () {
        $(this).parents(".pet-box").fadeOut(500)
        $("#text-details").fadeIn(500)

    })

    $(".back").mouseover(function () {
        $(this).addClass("back-active")
    }).mouseout(function () {
        $(this).removeClass("back-active")
    }).click(function () {
        $("#text-details").fadeOut(500)
        $("#sweet-story").fadeIn(500)
    })

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

    $("#pagination2").jqPaginator({
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

</script>
</body>
</html>
