<%-- 
    Document   : mylogin
    Created on : Apr 28, 2024, 9:32:07 PM
    Author     : thenuka
--%>

1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Bookshop Website</title>
</head>
<body>
    <div style="text-align: center">
        <h1>Admin Login</h1>
        <form action="login" method="post">
            <label for="email">Email:</label>
            <input name="email" size="30" />
            <br><br>
            <label for="password">Password:</label>
            <input type="password" name="password" size="30" />
            <br>${message}
            <br><br>           
            <button type="submit">Login</button>
        </form>
    </div>
</body>
</html>