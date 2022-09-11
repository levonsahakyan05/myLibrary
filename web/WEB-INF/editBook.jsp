<%@ page import="model.Book" %>
<%@ page import="model.Author" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Levon
  Date: 9/6/2022
  Time: 11:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Book book = (Book) request.getAttribute("books");

    List<Author> authors = (List<Author>) request.getAttribute("authors");
%>
Please update Book's data:
<form action="/books/edit" method="post" enctype="multipart/form-data">
    <input type="hidden" name="bookId" value="<%=book.getId()%>">
    <input type="text" name="title" value="<%=book.getTitle()%>"/><br>
    <input type="text" name="description" value="<%=book.getDescription()%>"/><br>
    <input type="number" name="price" value="<%= book.getPrice()%>"/><br>
    <select name="authorId">
        <%
            for (Author author : authors) {
                if (author.equals(book.getAuthor())) {
        %>

        <option selected value="<%=author.getId()%>"><%=author.getName()%> <%=author.getSurname()%>
        </option>
        <% } else {%>
        <option value="<%=author.getId()%>"><%=author.getName()%> <%=author.getSurname()%>

                <% }} %>

    </select>
    <input type="file" name="profilePic" value="<%=book.getProfilePic()%>">

    <input type="submit" value="Update">

</form>
</body>
</html>
