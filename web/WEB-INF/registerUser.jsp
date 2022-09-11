<%--
  Created by IntelliJ IDEA.
  User: Levon
  Date: 9/11/2022
  Time: 9:47 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String msg = (String) request.getAttribute("msg");
%>
<%
    if (msg != null) {%>
<p style="color: red"><%=msg%>
</p>
<%}%>
Please input User's data:
<form action="${pageContext.request.contextPath}/register" method="post">
    <input type="text" name="name" placeholder="Please input name"/><br>
    <input type="text" name="surname" placeholder="Please input surname"/><br>
    <input type="email" name="email" placeholder="Please input email"/><br>
    <input type="password" name="password" placeholder="Please input password"/><br>
    <input type="submit" value="Register">
</form>
</body>
</html>
