<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>회원가입 페이지</title>
</head>
<body>
<form action="/join" method="post">
    <input type="text" name="account" placeholder="Username"/><br/>
    <input type="password" name="password" placeholder="Password"/><br/>
    <input type="email" name="email" placeholder="Email"/><br/>
    <button type="submit">회원가입</button>
</form>
</body>
</html>