<%--
  Created by IntelliJ IDEA.
  User: 20698
  Date: 2022/12/12
  Time: 17:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <base href="http://${header.host}${pageContext.request.contextPath}/"/>
    <title>管理员登录</title>
    <link rel="stylesheet" href="static/css/admin_login.css">
</head>
<body>
<!-- 登陆的大容器 -->
<div class="login-box">
    <!-- 猫头鹰 -->
    <div class="owl" id="owl">
        <!-- 左手和右手 -->
        <div class="hand"></div>
        <div class="hand hand-r"></div>
        <!-- 手臂 -->
        <div class="arms">
            <div class="arm"></div>
            <div class="arm arm-r"></div>
        </div>
    </div>
    <form id="form" method="post" action="AdminLogin">
        <div class="input-box">
            <input type="text" placeholder="账号" id="adminName" name="adminName">
            <input type="password" placeholder="密码" id="password" name="password">
            <input type="text" placeholder="请输入验证码" id="validCode" name="validCode">
            <img src="validCode" alt="验证码图片" id="validImg">
            <button type="submit" id="login">登录</button>
        </div>
    </form>
</div>

<script src="static/jquery-3.5.1/jquery-3.5.1.js"></script>
<script type="text/javascript">
    $(function () {
        $('#password').focus(function () {
            // 密码框获得焦点，追加样式.password
            $('#owl').addClass('password');
        }).blur(function () {
            // 密码框失去焦点，移除样式.password
            $('#owl').removeClass('password');
        })
    })

    // $(function () {
    //     updateImg();
    //     // login();
    // })

    // 写获取验证码的函数
    // function getCode() {
    //     $("#validImg").attr("src", "");
    //     $.ajax({
    //         url: "validCode",
    //         type: "post",
    //         success: function (data) {
    //             $("#validImg").attr("src", data + "?datetime=" + new Date().getTime() + Math.round(Math.random() * 100));
    //         }
    //     });
    // }

    // 更新验证码
    // function updateImg() {
    //     $("#validImg").click(function () {
    //         getCode();
    //     })
    // }

    // 写登录函数
    // function login() {
    //     $('#login').click(function () {
    //         let adminName = $("#form #adminName").val();
    //         let password = $("#form #password").val();
    //         console.log(adminName + " " + password);
    //         $.ajax({
    //             url: "/AdminLogin",
    //             type: "post",
    //             data: JSON.stringify({
    //                 adminName: adminName,
    //                 password: password,
    //             }),
    //             // 定义发送请求的数据格式为JSON字符串
    //             contentType: "application/json;charset=UTF-8",
    //             //定义回调响应的数据格式为JSON字符串,该属性可以省略
    //             dataType: "json",
    //             success: function (data) {
    //                 if (data != null) {
    //                     console.log(data);
    //                     location.href = "test3.jsp";
    //                 }
    //             }
    //         });
    //     });
    // }

</script>
</body>
</html>
