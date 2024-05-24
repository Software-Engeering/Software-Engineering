<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
</head>
<body>
<style>
     .container {
        overflow-wrap: break-word;
        font-family: 'Inter';
        font-weight: 400;
        font-size: 16px;
        line-height: 1.5;
        color: #828282;
    }
    .container-1 {
        background: #FFFFFF;
        display: flex;
        flex-direction: column;
        align-items: center;
        padding: 118px 0 166px 0;
        width: 1480px;
        box-sizing: border-box;
    }
     .content {
        margin-left: 27px;
        display: flex;
        flex-direction: column;
        align-items: center;
        width: fit-content;
        box-sizing: border-box;
    }
     .container-2 {
        margin: 0 0 13px 28px;
        display: inline-block;
        overflow-wrap: break-word;
        font-family: 'Inter';
        font-weight: 600;
        font-size: 64px;
        letter-spacing: -0.6px;
        line-height: 1.5;
        color: #000000;
    }
     .input-and-button {
        margin-bottom: 24px;
        display: flex;
        flex-direction: column;
        width: fit-content;
        box-sizing: border-box;
         margin-left: 515px;
    }
     .field {
        border-radius: 8px;
        border: 1px solid #E0E0E0;
        background: #FFFFFF;
        margin-bottom: 16px;
        padding: 4px 15px;
        width: 400px;
        box-sizing: border-box;
    }
     .button {
        border-radius: 8px;
        background: #000000;
        display: flex;
        padding: 8px 0.9px 8px 0;
        width: 400px;
        box-sizing: border-box;
    }
     .field-1 {
        border-radius: 8px;
        border: 1px solid #E0E0E0;
        background: #FFFFFF;
        margin-bottom: 16px;
        padding: 4px 15px;
        width: 400px;
        box-sizing: border-box;
    }
     .container {
        margin: 0 96px 44px 0;
        display: flex;
        flex-direction: row;
        width: 331px;
        box-sizing: border-box;
    }
</style>

<div class="container-1">
    <div class="container-2">
        곡 추천 시스템
    </div>
    <div class="container">
        <img src="${pageContext.request.contextPath}/images/image_1.png" alt="spotifyLogo">
    </div>
    </div>
    <div class="content">
        <div class="input-and-button">
            <form action="/login" method="post">
                <input type="text" name="username" placeholder="Username" class="field"/><br/>
                <input type="password" name="password" placeholder="Password" class="field-1"/><br/>
                <button class="button" type="submit">
                    <span style="font-family: Inter;font-weight: 500;font-size: 16px;line-height: 1.5;color:#FFFFFF;text-align:center;">로그인</span>
                </button>
            </form>
        </div>
        <a href="/joinForm">
        <span class="container">
      회원가입
    </span>
        </a>
    </div>
</div>

</body>
</html>