<%@ page import="model.Author" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Levon
  Date: 9/5/2022
  Time: 1:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  List<Author> authors = (List<Author>) request.getAttribute("author");
%>
Please input Book's data:
<form action="/books/add" method="post">
  <input type="text" name="title" placeholder="Please input title"/><br>
  <input type="text" name="description" placeholder="Please input description"/><br>
  <input type="number" name="price" placeholder="Please input price"/><br>
  <select name="authorId">
    <%
      for (Author author : authors) { %>
    <option value="<%=author.getId()%>"><%=author.getName()%> <%=author.getSurname()%></option>
    <%  } %>
  </select>


  <input type="submit" value="Register">

</form>
</body>
</html>
