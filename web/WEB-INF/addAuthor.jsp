<%--
  Created by IntelliJ IDEA.
  User: Levon
  Date: 9/5/2022
  Time: 12:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
Please input author's data:
<form action="/authors/add" method="post">
    <input type="text" name="name" placeholder="Please input name"/><br>
    <input type="text" name="surname" placeholder="Please input surname"/><br>
    <input type="email" name="email" placeholder="Please input email"/><br>
    <input type="number" name="age" placeholder="Please input age"/><br>
    <br>
    <input type="submit" value="Add">

</form>
</body>
</html>
