<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>비밀번호 결과</title>
    <script type="text/javascript">
      // 페이지가 로드될 때 실행
      window.onload = function() {
        // JSP에서 전달된 비밀번호 값을 가져오기
        alert("임시 비밀번호 " + 1234 + "\n로그인 후 비밀번호를 변경해주세요.");

        // alert 이후에 리다이렉트
        window.location.href = "/loginForm";
      }
    </script>
</head>
<body>
<!-- Optional: Add some content or a loading message here -->
</body>
</html>