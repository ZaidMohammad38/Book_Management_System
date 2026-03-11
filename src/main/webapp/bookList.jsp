<%@page import="book_Management_System.model.Book"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Books List</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: #f0f4f8;
        display: flex;
        justify-content: center;
        padding: 50px 0;
    }

    table {
        border-collapse: collapse;
        width: 80%;
        background: #fff;
        border-radius: 10px;
        overflow: hidden;
        box-shadow: 0 8px 20px rgba(0,0,0,0.15);
    }

    th, td {
        padding: 12px 20px;
        text-align: center;
        border-bottom: 1px solid #ddd;
    }

    th {
        background-color: #4A90E2;
        color: #fff;
        font-size: 16px;
    }

    tr:nth-child(even) {
        background-color: #f9f9f9;
    }

    tr:hover {
        background-color: #e1f0ff;
    }

    a {
        color: #4A90E2;
        text-decoration: none;
        font-weight: bold;
        transition: color 0.3s;
    }

    a:hover {
        color: #357ABD;
        text-decoration: underline;
    }
</style>
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