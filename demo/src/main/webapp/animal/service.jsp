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
    <title>具体动物信息的展示</title>
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
            领养信息填写
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
            <div class="row-name">想说的话:</div>
            <div class="row-input">
<%--                <div class="flex_textarea js_textarea input-area" contenteditable="true" onpaste="return pasteListener(event, true)"--%>
<%--                     id="animalDescribe" placeholder="请大概描述一下动物状态"></div>--%>
                <textarea id="animalDescribe" cols="30" rows="5" class="input-area" name="animalDescribe" placeholder="说说对领养该动物想说的话吧"></textarea>
            </div>
        </div>

        <div id="submit-save-msg">
            提交信息
        </div>
    </div>
</div>

<!-- services -->
<div class="background">
    <div class="pet-box-1">
        <div class="nav-box">
            <div class="nav-name name-1">领养须知</div>
            <div class="nav-name name-1">我要领养</div>
        </div>
    </div>
    <%-- 领养须知 --%>
    <div class="pet-box">
        <div class="pet-msg">
            <div class="pet-title" style="margin-bottom: 45px;">
                <strong>领养须知</strong>
            </div>
        </div>
        <div class="need-know">
            <p>1、领养人必须年满21岁，有稳定的住所、工作及较好的经济收入。</p>
            <p>2、不接受异地领养，只接受深圳市领养，便于联系和回访。</p>
            <p>3、领养时需提供身份证原件与复印件、电话号码、微信号和详细的家庭住址。</p>
            <p>4、需缴纳领养押金（小型犬RMB300元/只，大型犬RMB500元/只，猫咪RMB100元/只)，由领养之家开具
                收据，并请妥善保管好此收据。如领养半年后宠物健康的被带回领养之家体检合格，需凭此收据退还押金；如
                果半年内宠物丢失或死亡，我们将不退还押金。</p>
            <p>5、领养之家所有适龄宠物均已绝育并接种疫苗，对于领养还没有做绝育的小动物，我们将另加收绝育保证金350元/只，
                并开具收据，小动物年满六个月后，领养之家将给于免费绝育，收回收据后全数退回绝育保证金，绝育康复后再自行带回。
                (原则上我们不建议领养未做绝育的宠物，未绝育母猫母狗不能领养。）</p>
            <p>6、为防止宠物发生坠楼、跑丢等意外情况，在领养前请自觉接受工作人员对领养家庭窗户、阳台或入户花园的安全检查，
                对于有安全隐患的地方需用网格封起来。没有安全隐患后方可领养。</p>
            <p>7、领养时我们需要亲自将宠物送往领养家庭。领养人应加入我们领养人的微信群（方便相互及时沟通了解宠物近况、身体情况等）。
                领养人要不定期的发被领养宠物的照片或视频到群里。如果长时间领养人没有发宠物近况，我们会主动与之联系，有可能需要上门回访。
                如发现领养人对宠物有不负责、照顾不周的情况我们有权接回宠物。</p>
            <p>8、如遇领养人搬家（包括离开深圳去其他城市、回老家）搬家后的新地址及联系方式需要告诉我们以便及时更新。搬家前需要先
                做好新住址的窗户阳台等安全措施，并同意接受我们的回访。</p>
            <p>9、领养后发现生病需及时带到附近宠物医院或到与我们合作的宠物医院进行及时治疗，也可求助于我们领养之家，切勿将
                其遗弃再次流浪街头。</p>
            <p>10、领养后为了您和家人及宠物的健康，请每年定期将其带到宠物医院或领养之家，我们将免费为其注射疫苗。</p>
            <p class="notion">
                注：如遇宠物遗失、跑丢等情况，请第一时间与我们联系（以免耽误找寻的最佳时间）。依据我们的经验，
                大部分宠物能及时找回，我们都不希望它们再次成为流浪动物。
            </p>


        </div>
    </div>
    <%-- 领养动物 --%>
    <div class="pet-box">
        <div class="pet-msg">
            <div class="pet-title" style="margin-bottom: 45px;">
                <strong>领养中心</strong>
            </div>
        </div>
        <div class="all-pets" style="width: 100%; height: 100%;">
            <div class="service-class-box">
                <!-- 领养状态分类 -->
                <div class="class-state service-class">
                    <div class="class-name">领养状态</div>
                    <ul>
                        <li class="animal-class" id="all-adoptStatus">全部</li>
                        <li class="animal-class" id="no-adopt">待领养</li>
                        <li class="animal-class" id="yes-adopt">已领养</li>
                    </ul>
                </div>
                <!-- 动物种类分类 -->
                <div class="class-names service-class">
                    <div class="class-name">动物种类</div>
                    <ul>
                        <li class="animal-class" id="all-family">全部</li>
                        <li class="animal-class" id="cat">猫</li>
                        <li class="animal-class" id="dog">狗</li>
                        <li class="animal-class" id="other">其他</li>
                    </ul>
                </div>
                <!-- 动物性别分类 -->
                <div class="class-sex service-class">
                    <div class="class-name">动物性别</div>
                    <ul>
                        <li class="animal-class" id="all-sex">全部</li>
                        <li class="animal-class" id="male">公</li>
                        <li class="animal-class" id="female">母</li>
                    </ul>
                </div>
                <!-- 动物年龄分类 -->
                <div class="class-year service-class">
                    <div class="class-name">动物年龄</div>
                    <ul>
                        <li class="animal-class" id="all-age">全部</li>
                        <li class="animal-class" id="age-1">0-6个月</li>
                        <li class="animal-class" id="age-2">6个月-2岁</li>
                        <li class="animal-class" id="age-3">2岁-8岁</li>
                        <li class="animal-class" id="age-4">8岁以上</li>
                    </ul>
                </div>

            </div>
            <!-- 动物展示区 -->
            <div class="pet-preview-box">
                <div class="preview-1 preview">
                    <ul>
                        <li>
                            <div class="pet-pic">
                                <img src="${pageContext.request.contextPath}/images/animal/img.png" alt="">
                            </div>
                            <div class="about-msg">
                                <span class="adopt-status not-adopt">未领养</span>
                                <div class="pet-age-box pet-class-box">
                                    <span style="font-size: 12px;vertical-align: bottom;">年龄：</span>
                                    <span class="pet-age pet-details">6个月-2岁</span>
                                </div>
                                <span class="pet-sex" style="margin-top: 14px;margin-right: 28px;">母</span>
                                <div class="pet-name-box pet-class-box">
                                    <span style="font-size: 12px;vertical-align: bottom;">昵称：</span>
                                    <span class="pet-name pet-details">茶多酚</span>
                                </div>
                                <div class="pet-name-box pet-class-box" style="margin-top: -18px;">
                                    <span style="font-size: 12px;vertical-align: bottom;">种类：</span>
                                    <span class="pet-breed pet-details">家猫</span>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="pet-pic">
                                <img src="${pageContext.request.contextPath}/images/animal/img.png" alt="">
                            </div>
                            <div class="about-msg">
                                <span class="adopt-status not-adopt">未领养</span>
                                <div class="pet-age-box pet-class-box">
                                    <span style="font-size: 12px;vertical-align: bottom;">年龄：</span>
                                    <span class="pet-age pet-details">6个月-2岁</span>
                                </div>
                                <span class="pet-sex" style="margin-top: 14px;margin-right: 28px;">母</span>
                                <div class="pet-name-box pet-class-box">
                                    <span style="font-size: 12px;vertical-align: bottom;">昵称：</span>
                                    <span class="pet-name pet-details">茶多酚</span>
                                </div>
                                <div class="pet-name-box pet-class-box" style="margin-top: -18px;">
                                    <span style="font-size: 12px;vertical-align: bottom;">种类：</span>
                                    <span class="pet-breed pet-details">家猫</span>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="pet-pic">
                                <img src="${pageContext.request.contextPath}/images/animal/img.png" alt="">
                            </div>
                            <div class="about-msg">
                                <span class="adopt-status have-adopt">已领养</span>
                                <div class="pet-age-box pet-class-box">
                                    <span style="font-size: 12px;vertical-align: bottom;">年龄：</span>
                                    <span class="pet-age pet-details">6个月-2岁</span>
                                </div>
                                <span class="pet-sex" style="margin-top: 14px;margin-right: 28px;">母</span>
                                <div class="pet-name-box pet-class-box">
                                    <span style="font-size: 12px;vertical-align: bottom;">昵称：</span>
                                    <span class="pet-name pet-details">茶多酚</span>
                                </div>
                                <div class="pet-name-box pet-class-box" style="margin-top: -18px;">
                                    <span style="font-size: 12px;vertical-align: bottom;">种类：</span>
                                    <span class="pet-breed pet-details">家猫</span>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="pet-pic">
                                <img src="${pageContext.request.contextPath}/images/animal/img.png" alt="">
                            </div>
                            <div class="about-msg">
                                <span class="adopt-status not-adopt">未领养</span>
                                <div class="pet-age-box pet-class-box">
                                    <span style="font-size: 12px;vertical-align: bottom;">年龄：</span>
                                    <span class="pet-age pet-details">6个月-2岁</span>
                                </div>
                                <span class="pet-sex" style="margin-top: 14px;margin-right: 28px;">母</span>
                                <div class="pet-name-box pet-class-box">
                                    <span style="font-size: 12px;vertical-align: bottom;">昵称：</span>
                                    <span class="pet-name pet-details">茶多酚</span>
                                </div>
                                <div class="pet-name-box pet-class-box" style="margin-top: -18px;">
                                    <span style="font-size: 12px;vertical-align: bottom;">种类：</span>
                                    <span class="pet-breed pet-details">家猫</span>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="preview-2 preview">
                    <ul>
                        <li>
                            <div class="pet-pic">
                                <img src="${pageContext.request.contextPath}/images/animal/img.png" alt="">
                            </div>
                            <div class="about-msg">
                                <span class="adopt-status not-adopt">未领养</span>
                                <div class="pet-age-box pet-class-box">
                                    <span style="font-size: 12px;vertical-align: bottom;">年龄：</span>
                                    <span class="pet-age pet-details">6个月-2岁</span>
                                </div>
                                <span class="pet-sex" style="margin-top: 14px;margin-right: 28px;">母</span>
                                <div class="pet-name-box pet-class-box">
                                    <span style="font-size: 12px;vertical-align: bottom;">昵称：</span>
                                    <span class="pet-name pet-details">茶多酚</span>
                                </div>
                                <div class="pet-name-box pet-class-box" style="margin-top: -18px;">
                                    <span style="font-size: 12px;vertical-align: bottom;">种类：</span>
                                    <span class="pet-breed pet-details">家猫</span>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="pet-pic">
                                <img src="${pageContext.request.contextPath}/images/animal/img.png" alt="">
                            </div>
                            <div class="about-msg">
                                <span class="adopt-status not-adopt">未领养</span>
                                <div class="pet-age-box pet-class-box">
                                    <span style="font-size: 12px;vertical-align: bottom;">年龄：</span>
                                    <span class="pet-age pet-details">6个月-2岁</span>
                                </div>
                                <span class="pet-sex" style="margin-top: 14px;margin-right: 28px;">母</span>
                                <div class="pet-name-box pet-class-box">
                                    <span style="font-size: 12px;vertical-align: bottom;">昵称：</span>
                                    <span class="pet-name pet-details">茶多酚</span>
                                </div>
                                <div class="pet-name-box pet-class-box" style="margin-top: -18px;">
                                    <span style="font-size: 12px;vertical-align: bottom;">种类：</span>
                                    <span class="pet-breed pet-details">家猫</span>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="pet-pic">
                                <img src="${pageContext.request.contextPath}/images/animal/img.png" alt="">
                            </div>
                            <div class="about-msg">
                                <span class="adopt-status not-adopt">未领养</span>
                                <div class="pet-age-box pet-class-box">
                                    <span style="font-size: 12px;vertical-align: bottom;">年龄：</span>
                                    <span class="pet-age pet-details">6个月-2岁</span>
                                </div>
                                <span class="pet-sex" style="margin-top: 14px;margin-right: 28px;">母</span>
                                <div class="pet-name-box pet-class-box">
                                    <span style="font-size: 12px;vertical-align: bottom;">昵称：</span>
                                    <span class="pet-name pet-details">茶多酚</span>
                                </div>
                                <div class="pet-name-box pet-class-box" style="margin-top: -18px;">
                                    <span style="font-size: 12px;vertical-align: bottom;">种类：</span>
                                    <span class="pet-breed pet-details">家猫</span>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="pet-pic">
                                <img src="${pageContext.request.contextPath}/images/animal/img.png" alt="">
                            </div>
                            <div class="about-msg">
                                <span class="adopt-status not-adopt">未领养</span>
                                <div class="pet-age-box pet-class-box">
                                    <span style="font-size: 12px;vertical-align: bottom;">年龄：</span>
                                    <span class="pet-age pet-details">6个月-2岁</span>
                                </div>
                                <span class="pet-sex" style="margin-top: 14px;margin-right: 28px;">母</span>
                                <div class="pet-name-box pet-class-box">
                                    <span style="font-size: 12px;vertical-align: bottom;">昵称：</span>
                                    <span class="pet-name pet-details">茶多酚</span>
                                </div>
                                <div class="pet-name-box pet-class-box" style="margin-top: -18px;">
                                    <span style="font-size: 12px;vertical-align: bottom;">种类：</span>
                                    <span class="pet-breed pet-details">家猫</span>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="pages">
                <ul id="pagination" class="pagination"></ul>
            </div>
        </div>
        <!-- 动物详情 -->
        <div class="one-pet-details" style="width: 100%;height: 100%;display: none; padding: 0 55px 0 55px;">
            <div class="back"> < 返回</div>
            <div class="big-pic">
                <img id="animalPic" width="386" height="270" src="${pageContext.request.contextPath}/images/animal/img.png" alt="">
            </div>
            <div class="pet-all-msg">
                <div class="all-msg-rows">
                    <div class="all-msg-title">我的名字：</div>
                    <div id="animalName" class="rows-content">史莱姆</div>
                </div>
                <div class="all-msg-rows">
                    <div class="all-msg-title">年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;龄：</div>
                    <div id="animalAge" class="rows-content">6个月-2岁</div>
                </div>
                <div class="all-msg-rows">
                    <div class="all-msg-title">品&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;种：</div>
                    <div id="animalBreed" class="rows-content">家猫</div>
                </div>
                <div class="all-msg-rows">
                    <div class="all-msg-title">性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：</div>
                    <div id="animalSex" class="rows-content">母（已绝育）</div>
                </div>
                <div class="all-msg-rows">
                    <div class="all-msg-title">健康状况：</div>
                    <div id="healthStatus" class="rows-content">非常健康</div>
                </div>
            </div>
            <div class="btn-adopt" id="adoptStatus">我要领养</div>
            <div class="pet-details-last">
                <div class="last-title">
                    <div>详细信息</div>
                </div>
                <div id="animalDetails" class="last-content">
                    <p>特征：三花色</p>
                    <p>性格：温和&nbsp;&nbsp;亲人</p>
                    <p>简历：2021年8月30日下午六时许，我们工作人员发现两只小猫被人遗弃在地铁7号线珠光站B出口附近草丛，经领养之家负责人同意，进入领养之家，等待爱心人士领养。</p>
                </div>
            </div>
        </div>

    </div>

</div>
<!-- js -->
<script src="${pageContext.request.contextPath}/JQuery/jquery-3.4.1.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/js/jq-paginator.js"></script>
<script src="${pageContext.request.contextPath}/js/animal.js"></script>
<!-- Necessary-JavaScript-File-For-Bootstrap -->
<!-- //js -->
<script>
    $(function () {
        var pageNum = 10;
        var s = GetQueryString("s");
        var adoptStatus = GetQueryString("adoptStatus");
        var animalFamily = GetQueryString("animalFamily");
        var animalSex = GetQueryString("animalSex");
        var animalAge = GetQueryString("animalAge");

        // 初始化页面
        function build_animal_msg() {
            $.ajax({
                url: "${pageContext.request.contextPath}/animal/pageNum.action",
                type: "GET",
                data: {adoptStatus: adoptStatus, animalFamily: animalFamily, animalSex: animalSex, animalAge: animalAge},
                dataType: "json",
                success: function (page_num){
                    pageNum = page_num
                    console.log(pageNum)
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
                                url: "${pageContext.request.contextPath}/animal/certain.action",
                                type: "GET",
                                data: {pn: n, adoptStatus: adoptStatus, animalFamily: animalFamily, animalSex: animalSex, animalAge: animalAge},
                                dataType: "json",
                                success: function (data) {
                                    $(".preview ul").empty()
                                    var animals = data.extend.pageInfo.list;
                                    $.each(animals, function (index, animal) {
                                        // 动物图片
                                        var pic = $("<div class='pet-pic'></div>")
                                            .append($("<img width='185' height='130' src='${pageContext.request.contextPath}"+ animal.animalPic +"' alt=''>"))
                                        // 领养状态
                                        var adoptStatus
                                        if (animal.adoptStatus === "待领养") {
                                            adoptStatus = $("<span class='adopt-status not-adopt'>待领养</span>")
                                        } else {
                                            adoptStatus = $("<span class='adopt-status have-adopt'>已领养</span>")
                                        }
                                        // 动物年龄
                                        var pet_age = formatAge(animal.animalAge)
                                        var animalAge = $("<div class='pet-age-box pet-class-box' style='margin-top: -1px;'></div>")
                                            .append($("<span style='font-size: 12px; vertical-align: bottom'>年龄：</span>"))
                                            .append($("<span class='pet-age pet-details'>"+ pet_age +"</span>"))
                                        // 动物性别
                                        var animalSex = $("<span class='pet-sex' style='margin-top: 14px;margin-right: 28px;'>"+ animal.animalSex +"</span>")
                                        // 动物昵称
                                        var animalName = $("<div class='pet-name-box pet-class-box'></div>")
                                            .append($("<span style='font-size: 12px;vertical-align: bottom'>昵称：</span>"))
                                            .append($("<span class='pet-name pet-details'>"+ animal.animalName +"</span>"))
                                        // 动物种类
                                        var animalBreed = $("<div class='pet-name-box pet-class-box' style='margin-top: -16px;'></div>")
                                            .append($("<span style='font-size: 12px;vertical-align: bottom'>种类：</span>"))
                                            .append($("<span class='pet-breed pet-details'>"+ animal.animalBreed +"</span>"))
                                        // 动物概述信息
                                        var msg = $("<div class='about-msg'></div>")
                                            .append(adoptStatus)
                                            .append(animalAge)
                                            .append(animalSex)
                                            .append(animalName)
                                            .append(animalBreed)
                                        if (index < 4) {
                                            $("<li></li>").attr("pet-id", animal.animalId).append(pic).append(msg).appendTo(".preview-1 ul")
                                        } else {
                                            $("<li></li>").attr("pet-id", animal.animalId).append(pic).append(msg).appendTo(".preview-2 ul")
                                        }
                                    })
                                }
                            })
                        }
                    });
                }
            })
        }

        build_animal_msg()

        // 每一点击动物分类，则发送新的请求
        $(".animal-class").click(function () {
            $(this).addClass("service-class-active").siblings("li").removeClass("service-class-active")
            var actives = $.find(".service-class-active")
            $.each(actives, function (index, active) {
                var text = active.innerText
                if (index === 0) {
                    if (text === "全部") {
                        adoptStatus = ""
                    } else {
                        adoptStatus = text
                    }
                }
                if (index === 1) {
                    if (text === "全部") {
                        animalFamily = ""
                    } else {
                        animalFamily = text
                    }
                }
                if (index === 2) {
                    if (text === "全部") {
                        animalSex = ""
                    } else {
                        animalSex = text
                    }
                }
                if (index === 3) {
                    if (text === "全部") {
                        animalAge = ""
                    }
                    if (text === "0-6个月") {
                        animalAge = "0.00-0.06"
                    }
                    if (text === "6个月-2岁") {
                        animalAge = "0.06-2.00"
                    }
                    if (text === "2岁-8岁") {
                        animalAge = "2.00-8.00"
                    }
                    if (text === "8岁以上") {
                        animalAge = "8.00"
                    }
                }
            })
            document.location.href = "${pageContext.request.contextPath}/animal/service.jsp?adoptStatus=" + adoptStatus + "&animalFamily="
                + animalFamily + "&animalSex=" + animalSex + "&animalAge=" +animalAge + "&s=adopt"
        })

        // 切换左侧导航栏
        $(".nav-name").on("click", function () {
            $(this).addClass("nav-name-active").siblings("div").removeClass("nav-name-active")
        })
        $(".name-1").eq(0).on("click", function () {
            $(".pet-box").eq(1).fadeOut(0)
            $(".pet-box").eq(0).fadeIn(500)
        })
        $(".name-1").eq(1).on("click", function () {
            $(".pet-box").eq(0).fadeOut(0)
            $(".pet-box").eq(1).fadeIn(500)
        })

        if (s === "adopt") {
            $(".nav-name").eq(1).click()
        } else {
            $(".nav-name").eq(0).click()
        }

        // 格式化动物年龄
        function formatAge(age) {
            var year = Math.floor(age)
            var month = Math.floor((age - year)*100)
            if (year === 0) {
                year = ""
            } else {
                year = year + "年"
            }
            return year + month + "个月"
        }

        // 调整遮罩层高度
        var doc = document.documentElement;
        relHeight = (doc.clientHeight > doc.scrollHeight) ? doc.clientHeight : doc.scrollHeight;//获取屏幕高度和当前页面高度中的较大值
        document.getElementById('form-box').style.height = relHeight+'px';//id为bg的div就是我页面中的遮罩层

        // 动物详情页面的返回
        $(".back").mouseover(function () {
            $(this).addClass("back-active")
        }).mouseout(function () {
            $(this).removeClass("back-active")
        }).click(function () {
            $(".one-pet-details").fadeOut(500)
            $(".all-pets").fadeIn(500)
        })

        // 查看动物详情
        $(".all-pets .preview").on("click", "li", function () {
            var animalId = $(this).attr("pet-id")
            $.ajax({
                url: "${pageContext.request.contextPath}/animal/getById.action",
                type: "GET",
                data: {animalId: animalId},
                dataType: "json",
                success: function (data) {
                    var animal = data.extend.animal
                    $("#animalPic").prop("src", "${pageContext.request.contextPath}" + animal.animalPic)
                    $("#animalBreed").text(animal.animalBreed)
                    $("#animalAge").text(formatAge(animal.animalAge))
                    $("#animalSex").text(animal.animalSex)
                    $("#healthStatus").text(animal.healthStatus)
                    $("#animalName").text(animal.animalName)
                    $("#animalDetails").text(animal.animalDetails)
                    if (animal.adoptStatus === "待领养") {
                        $("#adoptStatus").text("我要领养")
                            .css({
                                backgroundColor: "#f15b29",
                                pointerEvents: "auto",
                                cursor: "pointer"
                            })
                    } else {
                        $("#adoptStatus").text("已领养")
                            .css({
                                backgroundColor: "#808080",
                                cursor: "auto",
                                pointerEvents: "none"
                            })
                    }
                }
            })
            // 显示动物详情
            $(".all-pets").fadeOut(300)
            $(".one-pet-details").fadeIn(300)
        })

        // 领养表单样式
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
        // 点击“我要领养”，弹出表单
        $(".btn-adopt").click(function () {
            $("#form-box").css({display: "block"})
            $(".nav-links .navbar-default").css({backgroundColor: "#cfcfcf"})
            $(".save-form-box").fadeIn(300)
        })
        // 关闭“我要领养”表单
        $(".shutdown").click(function () {
            $(".save-form-box").fadeOut(300, function () {
                $("#form-box").css({display: "none"})
                $(".nav-links .navbar-default").css({backgroundColor: "white"})
            })
        })
        // 顶部导航栏变色
        $(".nav-links li").eq(2).find("a").css("color", "#f15b29")
        // 领养状态按钮激活
        if (adoptStatus === "" || adoptStatus === null) {
            $("#all-adoptStatus").addClass("service-class-active").siblings("li").removeClass("service-class-active")
        } else if (adoptStatus === "待领养") {
            $("#no-adopt").addClass("service-class-active").siblings("li").removeClass("service-class-active")
        } else {
            $("#yes-adopt").addClass("service-class-active").siblings("li").removeClass("service-class-active")
        }
        // 动物种类按钮激活
        if (animalFamily === "" || animalFamily === null) {
            $("#all-family").addClass("service-class-active").siblings("li").removeClass("service-class-active")
        } else if (animalFamily === "猫") {
            $("#cat").addClass("service-class-active").siblings("li").removeClass("service-class-active")
        } else if (animalFamily === "狗"){
            $("#dog").addClass("service-class-active").siblings("li").removeClass("service-class-active")
        } else {
            $("#other").addClass("service-class-active").siblings("li").removeClass("service-class-active")
        }
        // 动物性别按钮激活
        if (animalSex === "" || animalSex === null) {
            $("#all-sex").addClass("service-class-active").siblings("li").removeClass("service-class-active")
        } else if (animalSex === "公") {
            $("#male").addClass("service-class-active").siblings("li").removeClass("service-class-active")
        } else {
            $("#female").addClass("service-class-active").siblings("li").removeClass("service-class-active")
        }
        // 动物年龄按钮激活
        if (animalAge === "" || animalAge === null) {
            $("#all-age").addClass("service-class-active").siblings("li").removeClass("service-class-active")
        } else if (animalAge === "0.00-0.06") {
            $("#age-1").addClass("service-class-active").siblings("li").removeClass("service-class-active")
        } else if (animalAge === "0.06-2.00") {
            $("#age-2").addClass("service-class-active").siblings("li").removeClass("service-class-active")
        } else if (animalAge === "2.00-8.00") {
            $("#age-3").addClass("service-class-active").siblings("li").removeClass("service-class-active")
        } else if (animalAge === "8.00") {
            $("#age-4").addClass("service-class-active").siblings("li").removeClass("service-class-active")
        } else {
            alert("传入动物年龄参数不正确")
        }
    })
</script>


</body>

</html>