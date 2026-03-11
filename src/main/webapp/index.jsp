<html>
<head>
    <meta charset="UTF-8">
    <title>Book Management System</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #74ebd5, #ACB6E5);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        h2 {
            margin-bottom: 30px;
            color: #333;
            font-size: 2em;
        }

        button {
            display: block;
            width: 180px;
            padding: 12px 0;
            margin: 15px auto;
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
            transform: translateY(-3px);
            box-shadow: 0 6px 12px rgba(0,0,0,0.2);
        }

        a {
            text-decoration: none;
        }
    </style>
</head>
<body>
<div>
    <h2>Book Management System</h2>

    <a href="addBook.jsp"><button style="height: 40px;width: 150px;">Add Book</button></a><br><br>

    <a href="booksread"><button style="height: 40px;width: 150px;">Books List</button></a><br><br>

    <a href="Deletebyid.jsp"><button style="height: 40px;width: 150px;">Delete by id</button></a><br><br>

</div>
</body>
</html>