<%@ page import="model.User" %><%--
  Created by IntelliJ IDEA.
  User: Levon
  Date: 9/5/2022
  Time: 11:38 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>

<%
    User user = (User) session.getAttribute("user");
%>
<div style="width: 1000px; margin: 0 auto">
    <div>
        <img src="/image/pexels-pixabay-531880.jpg" width="1000" height="400">
    </div>
    <div>
        Hello from library <br>
        <a href="/authors">Show all Authors</a>
        <a href="/books">Show all Books</a>
        <% if (user != null) {%>
        <a href="/books/add">Add Book</a>
        <a href="/authors/add">Add Author</a>
        <a href="/logout">Logout</a>
        <%} else {%>
        <a href="/register"> Register</a>
        <a href="/login">Login</a>
        <%}%>
    </div>
</div>
</body>
</html>
