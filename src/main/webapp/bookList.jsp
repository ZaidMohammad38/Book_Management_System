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
</tr>
<% List<Book> list = (List<Book>)request.getAttribute("BookDetails");%>
<%if(list!=null)
for(Book b:list){%>
<tr>
<td><%=b.getId()%></td>
<td><%=b.getTitle()%></td>
<td><%=b.getAuthor()%></td>
<td><%=b.getPrice()%></td>
</tr>
<%} %>
</table>
</body>
</html>