<%--
  Created by IntelliJ IDEA.
  User: 24255
  Date: 2019/8/22
  Time: 14:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>登录页面</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/base.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
</head>
<body>
<div class="bg"></div>
<div class="container">
    <div class="line bouncein">
        <div class="xs6 xm4 xs3-move xm4-move">
            <div style="height:150px;"></div>
            <div class="media media-y margin-big-bottom">

<%--            <form action="${pageContext.request.contextPath}/login.action" method="post">--%>
                <div class="panel loginbox">
                    <div class="text-center margin-big padding-big-top">
                        <h1>欢迎使用流浪猫狗领养管理系统</h1>
                    </div>
                    ${msg}
                    <div class="panel-body"style="padding:30px; padding-bottom:10px; padding-top:10px;">
                        <div class="form-group">
                            <div class="field field-icon-right">
                                <input type="text" class="input input-big" name="adminUsername" id="name" placeholder="账号" />
                                <span class="icon icon-user margin-small"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="field field-icon-right">
                                <input type="password" class="input input-big" name="adminPassword" id="password"  placeholder="密码" />
                                <span class="icon icon-key margin-small"></span>
                            </div>
                        </div>
                        <div class="form-group v_container">
                            <div class="field">
                                <input type="text" id="code_input" class="input input-big" name="code" placeholder="验证码" />
                                <div id="v_container" style="width: 100px;height: 45px;" class="passcode"></div>
                            </div>
                        </div>
                    <div style="padding: 18px 30px 30px 30px;">
                        <span class="tips">我</span>
                        <input type="submit" id="button" class="button button-block bg-main text-big input-big" value="登录">
                    </div>
<%--            </form>--%>
        </div>
    </div>
</div>

        </div>
    </div>
</div>
</body>
<script src="${pageContext.request.contextPath}/JQuery/jquery-3.4.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/gVerify.js"></script>
<script>

    var verifyCode = new GVerify("v_container");

    console.log(${msg})
    $(function (){
        $(".tips").css({color: "white"})
    })

    $("#button").click(function () {
        var adminUsername = $("#name").val()
        var adminPassword = $("#password").val()
        var res = verifyCode.validate(document.getElementById("code_input").value);
        if(res){
            $.ajax({
                url: "${pageContext.request.contextPath}/admin/login.action",
                data: {adminUsername : adminUsername, adminPassword : adminPassword},
                type: "POST",
                dateType: "json",
                beforeSend: function () {
                    $(".tips").text("正在登陆，请稍候...").css({color: "green"});
                },
                success: function (data) {
                    if (data.success) {
                        document.location.href = "admin/admin.jsp"
                    } else {
                        $(".tips").text(data.message).css({color: "red"})
                        $("#code_input").val("");
                        $("#verifyCanvas").click();
                    }
                }
            })
        }else{
            $(".tips").text("验证码错误").css({color: "red"})

        }


    })
</script>
</html>
