<%--
  Created by IntelliJ IDEA.
  User: psh45
  Date: 2023-04-12
  Time: 오전 12:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>소음 리뷰 서비스</title>
    <script src="https://kit.fontawesome.com/91f39536d7.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../style/style.css">
</head>
<body>

<%-- navbar --%>
<nav class="navbar">
    <div class="navbar_logo">
        <i class="fa-solid fa-volume-high"></i>
        <a href="/apartInfo">소음 리뷰 서비스</a>
    </div>

    <ul class="navbar_menu">
        <li><a href="/apartInfo">소음 리뷰</a></li>
        <li><a href="../board/board_list.jsp">게시판</a></li>
    </ul>

    <ul class="navbar_account">
        <li><a href="accountInfo.jsp">내정보</a></li>
        <li><a href="../member/logout.jsp">로그아웃</a></li>
    </ul>
</nav>

<div style="margin-left: 40px">아이디: <%=1011005%></div>
<br>
<div style="margin-left: 40px">
    <input type="button" value="수정" onclick="location.href='pwChange.jsp'" class="btn">
    <input type="button" value="탈퇴" onclick="location.href='deleteAccount.jsp'" class="btn">
</div>

</body>
</html>
