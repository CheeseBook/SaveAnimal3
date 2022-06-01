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
    <meta charset="UTF-8" />
    <meta name="keywords" content=""/>

    <!--// Meta tag Keywords -->
    <!-- css files -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css" type="text/css" media="all">
    <!-- Owl-Carousel-CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css" media="all" />

</head>
<body>
<jsp:include page="navigation.jsp"></jsp:include>
<div class="box-white"></div>
<!-- services -->
<div class="background">

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
        $(".nav-links li").eq(6).find("a").css("color", "#f15b29")





    })
</script>


</body>

</html>