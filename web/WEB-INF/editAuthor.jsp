<%@ page import="model.Author" %><%--
  Created by IntelliJ IDEA.
  User: Levon
  Date: 9/6/2022
  Time: 12:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<% Author author = (Author) request.getAttribute("author"); %>

<form action="/authors/edit" method="post">
    <input type="hidden" name="authorId" value="<%=author.getId()%>">
    <input type="text" name="name" value="<%=author.getName()%>"/><br>
    <input type="text" name="surname" value="<%=author.getSurname()%>"/><br>
    <input type="email" name="email" value="<%=author.getEmail()%>"/><br>
    <input type="number" name="age" value="<%=author.getAge()%>"/><br>

    <input type="submit" value="Update">
</form>

</body>
</html>
