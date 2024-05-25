<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>비밀번호 찾기 페이지</title>
</head>
<body>
<form action="/join" method="post">
    <div class="container">
        <div class="copy">
    <span class="container-1">
      비밀번호 찾기
    </span>
        </div>
        <div class="input-and-button">
    <input type="text" name="account" placeholder="Username" class="label"/><br/>
    <input type="email" name="email" placeholder="Email" class="label-2"/><br/>
    <button type="submit" class="button">
        <span class="container-2">찾기</span>
    </button>
    </div>
    </div>
</form>
</body>
</html>

<style>.container {
    background: #FFFFFF;
    display: flex;
    flex-direction: column;
    align-items: center;
    padding: 127px 0 231px 0;
    box-sizing: border-box;
}
.copy {
    margin-bottom: 24px;
    display: flex;
    box-sizing: border-box;
}
.container-1 {
    overflow-wrap: break-word;
    font-family: 'Inter';
    font-weight: 600;
    font-size: 24px;
    letter-spacing: -0.2px;
    line-height: 1.5;
    color: #000000;
}
.input-and-button {
    display: flex;
    flex-direction: column;
    width: fit-content;
    box-sizing: border-box;
}
.field {
    border-radius: 8px;
    border: 1px solid #E0E0E0;
    background: #FFFFFF;
    margin-bottom: 16px;
    padding: 4px 15px;
    width: fit-content;
    box-sizing: border-box;
}
.label {
    overflow-wrap: break-word;
    font-family: 'Inter';
    font-weight: 500;
    font-size:  20px;
    line-height:  1.5;
    color: #828282;
}
.button {
    border-radius: 8px;
    background: #000000;
    display: flex;
    padding: 8px 0.9px 8px 0;
    width: 320px;
    box-sizing: border-box;
    justify-content: center;
    display: flex;


}
.container-2 {

    overflow-wrap: break-word;
    font-family: 'Inter';
    font-weight:  500;
    font-size: 16px;
    line-height:  1.5;
    color: #FFFFFF;
}
.field-1 {
    border-radius: 8px;
    border: 1px solid #E0E0E0;
    background: #FFFFFF;
    margin-bottom: 16px;
    padding: 3px 15px;
    width: fit-content;
    box-sizing: border-box;
}
.label-1 {
    overflow-wrap: break-word;
    font-family:'Inter';
    font-weight: 500;
    font-size:  20px;
    line-height: 1.5;
    color: #828282;
}
.field-2 {
    border-radius: 8px;
    border: 1px solid #E0E0E0;
    background: #FFFFFF;
    margin-bottom: 16px;
    padding: 4px 15px;
    width: fit-content;
    box-sizing: border-box;
}
.label-2 {
    overflow-wrap: break-word;
    font-family:  'Inter';
    font-weight:  500;
    font-size:  20px;
    line-height:  1.5;
    color: #828282;
}</style>