<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Book</title>
<style>
    body {
        margin: 0;
        padding: 0;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: #f0f4f8;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    form {
        background: #fff;
        padding: 40px 50px;
        border-radius: 12px;
        box-shadow: 0 8px 20px rgba(0,0,0,0.15);
        display: flex;
        flex-direction: column;
        width: 300px;
    }

    input {
        margin-bottom: 20px;
        padding: 10px;
        font-size: 16px;
        border: 1px solid #ccc;
        border-radius: 6px;
        transition: border-color 0.3s;
    }

    input:focus {
        border-color: #4A90E2;
        outline: none;
    }

    button {
        padding: 12px;
        font-size: 16px;
        font-weight: bold;
        color: #fff;
        background-color: #4A90E2;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        transition: all 0.3s ease;
    }

    button:hover {
        background-color: #357ABD;
        transform: translateY(-2px);
        box-shadow: 0 4px 10px rgba(0,0,0,0.15);
    }
</style>
</head>
<body>
<form action="books" method="post">
    <input type="text" name="title" placeholder="Enter title"><br>
    <input type="text" name="author" placeholder="Enter author"><br>
    <input type="number" name="price" placeholder="Enter price"><br>
    <button>Submit</button>
</form>
</body>
</html>