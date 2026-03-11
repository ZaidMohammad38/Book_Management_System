<%@page import="book_Management_System.model.Book"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="">
<tr>
<th>id</th>
<th>title</th>
<th>author</th>
<th>price</th>
<th>update</th>
<th>delete</th>
</tr>
<% List<Book> list = (List<Book>)request.getAttribute("BookDetails");%>
<%if(list!=null)
for(Book b:list){%>
<tr>
<td><%=b.getId()%></td>
<td><%=b.getTitle()%></td>
<td><%=b.getAuthor()%></td>
<td><%=b.getPrice()%></td>
<td><a href="did?id=<%=b.getId() %>">delete</a></td>
<td><a href="editBook.jsp?id=<%=b.getId()%>&&title=<%=b.getTitle()%>&&author=<%=b.getAuthor()%>&&price=<%=b.getPrice()%>">edit</a></td>
</tr>
<%} %>
</table>
</body>
</html>