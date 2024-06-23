<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>비밀번호 찾기 페이지</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>

    <div class="container">
        <div class="copy">
    <span class="container-1">
      비밀번호 찾기
    </span>
        </div>
        <div class="input-and-button">
    <input type="text" id="account" placeholder="Username" class="label field"/><br/>
    <input type="email" id="email" placeholder="Email" class="label-2 field"/><br/>
            <button id="findPasswordButton" class="button"><span style="color: #FFFFFF;">Find Password</span></button>
                <span class="container-2">찾기</span>
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

.button {
    border-radius: 8px;
    background: #000000;
    display: flex;
    padding: 8px 0.9px 8px 0;
    width: 400px;
    justify-content: center;
    box-sizing: border-box;
}
</style>

<script>
    $(document).ready(function() {
        $('#findPasswordButton').click(function() {
            var account = $('#account').val();
            var email = $('#email').val();
            $.ajax({
                url: '/findPassword',
                type: 'POST',
                data: { account: account, email: email },
                success: function(response) {
                    alert(response);
                    window.location.href = "/loginForm"
                },
                error: function(xhr) {
                    alert('No user found with the provided information.');
                }
            });
        });
    });
</script>