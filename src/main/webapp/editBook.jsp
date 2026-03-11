<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="books/edit/{id}" method="post">
<input type="number" name="id" value="<%=request.getParameter("id")%>" hidden=""><br>
<input type="text" name="title" value="<%=request.getParameter("title")%>"><br>
<input type="text" name="author" value="<%=request.getParameter("author")%>"><br>
<input type="number" name="price" value="<%=request.getParameter("price")%>"><br>
<button>update</button>
</form>
</body>
</html>