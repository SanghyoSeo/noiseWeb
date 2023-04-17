<%--
  Created by IntelliJ IDEA.
  User: psh45
  Date: 2023-04-06
  Time: 오후 10:10
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

<form action="#" method="post">
    <table>
        <tr>
            <th class="th_width">제목</th>
            <td><input type="text" name="title" class="board_input"></td>
        </tr>
        <tr>
            <th class="th_width">작성자</th>
            <td style="text-align: left">101706</td>
        </tr>
        <tr>
            <th class="th_width">내용</th>
            <td><textarea name="content" rows="30" style="resize: none"></textarea></td>
        </tr>
    </table>

    <br>
    <div class="wrap_btn">
        <input type="submit" value="저장" class="btn">
        <input type="button" value="취소" onclick="history.back()" class="btn">
    </div>
</form>

</body>
</html>
