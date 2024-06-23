<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>회원가입 페이지</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</head>
<body>

    <div class="container">

        <div class="copy">
    <span class="container-1">
      회원가입
    </span>
        </div>

        <div class="input-and-button">

        <input type="text" id="account" placeholder="Username(id)" class="label field" /><br/>
        <input type="password" id="password" placeholder="Password" class="label-1 field"/><br/>
            <input type="email" id="email" placeholder="Email" class="label-2 field"/><br/>

            <button id="joinButton" class="button">
      <span class="container-2">회원가입</span>
            </button>
        </div>
    </div>


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
    width: 400px;
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
.label-1 {
    overflow-wrap: break-word;
    font-family:'Inter';
    font-weight: 500;
    font-size:  20px;
    line-height: 1.5;
    color: #828282;
}
.label-2 {
    overflow-wrap: break-word;
    font-family:  'Inter';
    font-weight:  500;
    font-size:  20px;
    line-height:  1.5;
    color: #828282;
}

.field {
    border-radius: 8px;
    border: 1px solid #E0E0E0;
    background: #FFFFFF;
    margin-bottom: 16px;
    padding: 4px 15px;
    height: 40px;
    width: 400px;
    justify-content: center;
    box-sizing: border-box;
}
</style>


<script>
    $(document).ready(function() {
        $('#joinButton').click(function() {
            var account = $('#account').val();
            var password = $('#password').val();
            var email = $('#email').val();
            $.ajax({
                url: '/join',
                type: 'POST',
                data: { account: account, password: password, email: email },
                success: function(response) {
                    if(response){
                        alert("회원가입 성공. 로그인 창으로 이동합니다.");
                        window.location.href = "/loginForm"
                    } else {
                        alert("이미 등록된 이메일 주소입니다. 다시 시도하세요.");
                    }
                },
                error: function(xhr) {
                    alert("요청 도중 error 발생");
                }
            });
        });
    });
</script>