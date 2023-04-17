<%--
  Created by IntelliJ IDEA.
  User: psh45
  Date: 2023-04-05
  Time: 오후 4:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.capstoneDesign.noiseWeb.ApartInfo" %>
<html>
<head>
    <title>소음 리뷰 서비스</title>
    <link rel="stylesheet" href="/style/style.css">
</head>
<body>

<%
    if ((String)session.getAttribute("userId") != null) {
        response.sendRedirect("/apartInfo");

    } else {
%>

<h1 class="noise_logo">ㅇㅇ아파트<br>소음 리뷰 서비스</h1>


<div class="login_box_wrap">
    <div class="login_box">
        <form action="/login" method="post">
            <input type="text" name="id" placeholder="아이디" onfocus="this.placeholder=''"
                           onblur="this.placeholder='아이디'" class="login_input">
            <br>
            <input type="password" name="pw" placeholder="비밀번호" onfocus="this.placeholder=''"
                           onblur="this.placeholder='비밀번호'" class="login_input">
            <br><br>
            <input type="submit" value="로그인" class="login_btn">
        </form>
    </div>
</div>

<%
    }
%>

</body>
</html>
