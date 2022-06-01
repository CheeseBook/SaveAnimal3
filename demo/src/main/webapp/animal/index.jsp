<%--
  Created by IntelliJ IDEA.
  User: 24255
  Date: 2019/8/22
  Time: 23:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <title>Home</title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8" />
    <meta name="keywords" content=""/>
    <!--// Meta tag Keywords -->
    <!-- css files -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" type="text/css" media="all">
    <!-- Bootstrap-Core-CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.css" type="text/css" media="all">
    <!-- Font-Awesome-Icons-CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/owl.carousel.css" type="text/css" media="all" />
    <!-- Owl-Carousel-CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css" media="all" />


    <!-- Style-CSS -->
    <!-- //css files -->
    <!-- web fonts -->
    <link href="http://fonts.googleapis.com/css?family=Molle:400i&amp;subset=latin-ext" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i&amp;subset=latin-ext" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext" rel="stylesheet">
</head>
<body>
<jsp:include page="navigation.jsp"></jsp:include>
<div class="box-white"></div>
<!-- //sticky navigation 首页轮播图 -->
<div class="w3l-main" id="home1">
    <div class="container">
        <!-- header -->
        <div class="header">
            <div class="logo">
                <h1>
                    <a href="${pageContext.request.contextPath}/index.jsp">
                        <img class="logo-img center-block" src="${pageContext.request.contextPath}/images/logo.png" alt="" /> 流浪猫狗救助
                    </a>
                </h1>
            </div>
            <div class="clearfix"> </div>
        </div>
        <!-- //header -->
    </div>
    <!-- Slider -->
    <div class="slider">
        <div class="callbacks_container">
            <ul class="rslides" id="slider">
                <li>
                    <div class="slider-img-w3layouts one">
                        <div class="w3l-overlay">
                            <div class="container">
                                <div class="banner-text-info">
                                    <h3>我们随时
                                        <span>欢迎</span> 你们来
                                        <span>咨询</span>！
                                    </h3>
                                    <p> 全面的猫狗护理指南，让您的流浪猫狗感受到您的爱</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="slider-img-w3layouts two">
                        <div class="w3l-overlay">
                            <div class="container">
                                <div class="banner-text-info">
                                    <h3>你可以展示你的
                                        <span>爱</span> 向你
                                        <span>的流浪猫狗</span>!</h3>
                                    <p> 全面的猫狗护理指南，让您的流浪猫狗感受到您的爱</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="slider-img-w3layouts three">
                        <div class="w3l-overlay">
                            <div class="container">
                                <div class="banner-text-info">
                                    <h3>猫狗 是你的
                                        <span>朋友</span>！&nbsp;&nbsp;猫狗是你的
                                        <span>家人</span> !</h3>
                                    <p> 全面的猫狗护理指南，让您的流浪猫狗感受到您的爱</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="slider-img-w3layouts four">
                        <div class="w3l-overlay">
                            <div class="container">
                                <div class="banner-text-info">
                                    <h3>猫狗如此
                                        <span>可爱</span> 你们怎么可能
                                        <span>不爱</span>它们!</h3>
                                    <p>全面的猫狗护理指南，让您的流浪猫狗感受到您的爱</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
        <div class="clearfix"></div>
    </div>
    <!--//Slider-->
</div>
<!--//banner-->



<!-- footer -->
<section class="footer-w3">
    <div class="container" style="width: 100%">
        <div class="pet-msg" style="width: 1050px;margin: auto">
            <div class="pet-title">
                <strong>关于我们</strong>
            </div>
            <div class="pet-content">
                流浪猫狗救助协会，成立于2008年，是一个致力于流浪猫狗救助、领养、文明宣传的非盈利性社会团体我们自成立以来，
                遵照市农业局、民政局的指导思想，在遵守宪法、法律、法规和国家政策的前提下，尊重生命、保护动物、维护动物的生
                存权利，保障它们的健康与福利，减少杀戮、虐待、残害、遗弃动物的行为，并通过教育引导正确科学对待伴侣动物的观
                念，达到人与动物和谐共处的愿景。
            </div>
        </div>
        <div class="pet-msg" style="width: 1050px;margin: auto">
            <div class="pet-title" >
                <strong>我们的工作</strong>
            </div>
            <div class="pet-content">
                <div class="our-work" style="height: 200px;">
                    <div class="work-logo">
                        <img src="${pageContext.request.contextPath}/images/ourwork-img.png" alt="" width="302" height="137">
                    </div>
                    <div class="work-content" style="padding: 18px 0 0 100px;width: 675px;">
                        <p style="font-size: 28px">收养流浪猫狗</p>
                        <p style="font-size: 16px; color: #50555c">我们的工作人员会定时去各个地方查看流浪猫狗的存在，只要我们发现了都会带回到我们的协会中心收养。</p>
                    </div>
                </div>
                <div class="our-work" style="height: 200px">
                    <div class="work-content" style="padding: 18px 0 0 73px;width: 675px;">
                        <p style="font-size: 28px">健康的保障</p>
                        <p style="font-size: 16px; color:#50555c;">收养进来的流浪猫狗，我们会先帮助它们基本的驱虫，然后为它们检查是否有疾病，并保障它们良好的身体健康。</p>
                    </div>
                    <div class="work-logo">
                        <img src="${pageContext.request.contextPath}/images/ourwork-img2.png" alt="" width="302" height="137">
                    </div>
                </div>
                <div class="our-work" style="height: 200px">
                    <div class="work-logo">
                        <img src="${pageContext.request.contextPath}/images/ourwork-img3.png" alt="" width="302" height="137">
                    </div>
                    <div class="work-content" style="padding: 18px 0 0 100px;width: 675px;">
                        <p style="font-size: 28px">帮助找新家</p>
                        <p style="font-size: 16px; color:#50555c;">我们会给健康的流浪猫狗，找到适合它们的新家庭，领养人我们会经过严格的筛选，达到我们的条件才能成功的领养。</p>
                    </div>
                </div>
            </div>
        </div>


        <div id="footer-all" style="width: 100%;height: 260px;margin-top: 20px;background-color: #f1f3f4">
            <div style="width: 1050px;margin:auto;padding-top: 20px">
                <div class="col-lg-4 col-md-4 col-sm-4 footer-agile1"  data-aos="zoom-in">
                    <h3 style="color: #000000">网站简介</h3>
                    <p class="footer-p1" style="color: #000000">
                        该网站是用于想领养流浪猫狗和想成为我们其中一员，那么你将再这里实现你的想法。
                        如果你是领养者，请认真选取想要领养的流浪猫狗领养后，请认真负责对待可爱的猫狗！
                        如果你是想成为志愿者，请联系我们，我们欢迎任何爱心认识，加入我们！
                    </p>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 footer-mid-w3"  data-aos="zoom-in">
                    <h3 style="color: #000000">流浪猫狗展示</h3>
                    <div class="agileinfo_footer_grid1">
                        <a href="#">
                            <img src="../images/f7.jpg" alt=" " class="img-responsive">
                        </a>
                    </div>
                    <div class="agileinfo_footer_grid1">
                        <a href="#">
                            <img src="../images/f2.jpg" alt=" " class="img-responsive">
                        </a>
                    </div>
                    <div class="agileinfo_footer_grid1">
                        <a href="#">
                            <img src="../images/f3.jpg" alt=" " class="img-responsive">
                        </a>
                    </div>
                    <div class="agileinfo_footer_grid1">
                        <a href="#">
                            <img src="../images/f4.jpg" alt=" " class="img-responsive">
                        </a>
                    </div>
                    <div class="agileinfo_footer_grid1">
                        <a href="#">
                            <img src="../images/f5.jpg" alt=" " class="img-responsive">
                        </a>
                    </div>
                    <div class="agileinfo_footer_grid1">
                        <a href="#">
                            <img src="../images/f6.jpg" alt=" " class="img-responsive">
                        </a>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <!--联系方式-->
                <div class="col-lg-4 col-md-4 col-sm-4 footer-agile1" data-aos="zoom-in">
                    <h3 style="color: #000000">联系方式</h3>
                    <p>电话&nbsp;&nbsp;<span style="font-size: 22px;color: #000000">12345678901</span></p>
                    <br>
                    <p>邮件&nbsp;&nbsp;<span style="font-size: 22px;color: #000000">CatDog@aliyun.com</span></p>
                    <br>
                    <p>官网&nbsp;&nbsp;<span style="font-size: 22px;color: #000000">www.pet.com</span></p>
                    <br>
                    <p><a href="${pageContext.request.contextPath}/animal/login.jsp">管理员登录</a></p>
                </div>
            </div>

        </div>
    </div>
</section>


<!-- js 非得用2.0版本得jQuery-->
<script src="${pageContext.request.contextPath}/js/jquery-2.2.3.min.js"></script>

<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
<!-- Necessary-JavaScript-File-For-Bootstrap -->
<!-- //js -->

<!-- Banner Slider -->
<script src="${pageContext.request.contextPath}/js/responsiveslides.min.js"></script>
<script>
    $(function () {
        $("#slider").responsiveSlides({
            auto: true,
            pager: true,
            nav: true,
            speed: 1000,
            namespace: "callbacks",
            before: function () {
                $('.events').append("<li>before event fired.</li>");
            },
            after: function () {
                $('.events').append("<li>after event fired.</li>");
            }
        });

        $(".nav-links li").eq(0).find("a").css("color", "#f15b29")

    });


</script>
<!-- //Banner Slider -->

</body>
</html>
