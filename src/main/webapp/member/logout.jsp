<%--
  Created by IntelliJ IDEA.
  User: psh45
  Date: 2023-04-05
  Time: 오후 6:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
  session.removeAttribute("userId");

  response.sendRedirect("login_main.jsp");
%>

<html>
<head>
    <title></title>
</head>
<body>

</body>
</html>
