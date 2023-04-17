<%--
  Created by IntelliJ IDEA.
  User: psh45
  Date: 2023-04-05
  Time: 오후 10:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList" %>

<html>
<head>
    <title>소음 리뷰 서비스</title>
    <script src="https://kit.fontawesome.com/91f39536d7.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../style/style.css">
</head>
<body>

<%
%>

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
        <li><a href="../account/accountInfo.jsp">내정보</a></li>
        <li><a href="../member/logout.jsp">로그아웃</a></li>
    </ul>
</nav>

<%
    ArrayList<Integer> aptInfo = (ArrayList<Integer>) request.getAttribute("aptInfo");

    System.out.println("jsp로 온 값: " + aptInfo);
%>

<div class="wrap_dong">
    <%
        for (int i = 1; i <= aptInfo.get(3); i++) {
    %>
            <input type="button" value="<%=100 + i%>동" onclick="location.href='/apartInfo?dong=<%=100 + i%>'" class="dong">
    <%
        }
    %>
</div>

<br>

<main>
    <aside class="left_aside">
        <h2></h2>
    </aside>

    <div class="review_list">
        <div>소음 리뷰를 남기고 싶은 집을 선택하세요</div>
        <br>
        <%
            for (int i = aptInfo.get(1); i > 0; i--) {
                for (int j = 1; j <= aptInfo.get(2); j++) {
        %>
                    <input type="button" value="<%=i * 100 + j%>" name="<%=i * 100 + j%>" class="apt_btn">
        <%
                }
        %>
                <br>
        <%
            }
        %>
    </div>

    <aside style="width: 20%; margin-top: 80px">
        <ul class="noise_level">
            <li><span class="red_square"></span>매우 시끄러운 집</li>
            <br>
            <li><span class="orange_square"></span>시끄러운 집</li>
            <br>
            <li><span class="yellow_square"></span>신경쓰이는 집</li>
        </ul>
    </aside>
</main>

</body>
</html>
