<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
<%--    jquery(ajax)--%>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
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
        box-sizing: border-box;
    }
     .content {
        margin-left: 27px;
        display: flex;
        flex-direction: column;
        align-items: center;
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
     .container {
        display: flex;
        justify-content: center;
        flex-direction: row;
        width: 331px;
        box-sizing: border-box;
        margin: 0 auto;
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
                <input type="password" name="password" placeholder="Password" class="field"/><br/>
                <button class="button" type="submit" id="loginButton">
                    <span style="font-family: Inter;font-weight: 500;font-size: 16px;line-height: 1.5;color:#FFFFFF;text-align:center;">로그인</span>
                </button>
            </form>
        </div>
        <a href="/findPassword">
        <span class="container">
      비밀번호 찾기
    </span>
        </a>
        <a href="/joinForm">
        <span class="container">
      회원가입
    </span>
        </a>
    </div>
</div>

</body>
</html>


<%--
<script type="text/javascript">
    $(document).ready(function(){
        //jquery 는 js를 쉽게 쓸 수 있도록 도와주는 라이브러리입니다. 대표적으로 $ 가 있음.
        // console.log("F12 를 눌러보세요. 디버깅 및 테스트용도로 사용");
        // alert("이 기능은 alert 입니다. 로그인 실패시 java throw exception 사용하면 되어서 그런 알림까지는 구현할 필요 없습니다.");

        //달러 안에 선택자를 넣어서 활용하시면 됩니다. #은 id .은 클래스 지정 문자 입니다. 가급적이면 유일한 컴포넌트는 html 에 id 속성 주고 사용
        //ajax 는 백엔드와 통신하는 기능입니다. 간략하게라도 공부해보시는게 좋을듯.
        //아래는 이벤트 함수지만, 페이지 열때 무조건 한번 실행하려면 그냥 바깥 맨위에 두면 되겠죠?

        $("#loginButton").click(function(){
            $.ajax({
                url: 'myServlet', // 자바 컨트롤러에 호출할 url
                type: 'GET',
                success: function(response) {
                    $("#result").html(response);
                },
                error: function() {
                    alert("AJAX 요청 중 오류 발생");
                }
            });
        });

        $("#yourButton").click(function(){
            if(1==1){
                alert("안에서는 자유롭게 js코드 쓰면 됨");
            }
        });



    });
</script>--%>
