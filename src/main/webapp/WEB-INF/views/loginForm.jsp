<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>로그인 페이지</title>
</head>
<body>
<h1>로그인 페이지</h1>
<hr/>
<form action="/login" method="post">
    <input type="text" name="username" placeholder="Username"/><br/>
    <input type="password" name="password" placeholder="Password"/><br/>
    <button type="submit">로그인</button>
</form>
<a href="/joinForm">회원가입을 아직 하지 않으셨나요?</a>
</body>
</html>