<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>비밀번호 찾기 페이지</title>
</head>
<body>
<form action="/join" method="post">
    <input type="text" name="account" placeholder="Username"/><br/>
    <input type="email" name="email" placeholder="Email"/><br/>
    <button type="submit">찾기</button>
</form>
</body>
</html>