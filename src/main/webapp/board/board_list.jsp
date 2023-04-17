<%--
  Created by IntelliJ IDEA.
  User: psh45
  Date: 2023-04-06
  Time: 오후 8:13
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
        <li><a href="../account/accountInfo.jsp">내정보</a></li>
        <li><a href="../member/logout.jsp">로그아웃</a></li>
    </ul>
</nav>

<%-- 게시글 목록--%>
<table>
    <tr>
        <th class="table_num">번호</th>
        <th class="table_title">제목</th>
        <th class="table_writer">작성자</th>
        <th class="table_regtime">작성일</th>
        <th class="table_hits">조회수</th>
    </tr>
    <tr>
        <td>4</td>
        <td class="table_title_value"><a href="view.jsp">글4</a></td>
        <td>101706</td>
        <td>2023-04-06</td>
        <td>3</td>
    </tr>
    <tr>
        <td>3</td>
        <td class="table_title_value"><a href="view.jsp">글3</a></td>
        <td>1011103</td>
        <td>2023-04-06</td>
        <td>4</td>
    </tr>
</table>
<br>
<%-- 글쓰기 버튼 --%>
<div class="wrap_btn">
    <input type="button" value="글쓰기" class="btn" onclick="location.href='write.jsp'">
</div>

</body>
</html>
