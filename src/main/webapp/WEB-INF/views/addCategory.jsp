<%--
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>카테고리 선택</title>
</head>
<body>
<form action="/playlist" method="get">
<div class="container">
    <div class="container-6">
        카테고리 선택
    </div>
    <div class="container-1">
        <button class="frame-1">
      <span class="container-2">
        #운전
      </span>
        </button>
        <button class="frame-2">
      <span class="container-3">
        #운동
      </span>
        </button>
    </div>

    <div class="container-1">
        <button class="frame-1">
      <span class="container-2">
        #공부
      </span>
        </button>
        <button class="frame-2">
      <span class="container-3">
        #신남
      </span>
        </button>
    </div>

        <div class="container-1">
            <button class="frame-1">
      <span class="container-2">
        #새벽
      </span>
            </button>
            <button class="frame-2">
      <span class="container-3">
        #비
      </span>
            </button>
        </div>


</div>
</form>
</body>
</html>




<style>
    .container {
    background: #FFFFFF;
    display: flex;
    flex-direction: column;
    align-items: center;
    padding: 39px 0 121px 0;
    box-sizing: border-box;
        margin: 0 auto;

}

.container-1 {
    overflow-wrap: break-word;
    font-family: 'Inter';
    font-weight:  500;
    font-size:  16px;
    line-height:  1.5;
    color: #FFFFFF;

}
.frame-1 {
    box-shadow: var(--button-shadow, 0px 1px 2px 0px rgba(0, 0, 0, 0.05));
    border-radius: 20px;
    background: #000000;
    margin-right: 62px;
    display: flex;
    padding: 38px 0.4px 38px 0;
    width: 100px;
    box-sizing: border-box;
    justify-content: center;
}
.container-2 {
    overflow-wrap: break-word;
    font-family:  'Inter';
    font-weight:  500;
    font-size:  16px;
    line-height: 1.5;
    color: #FFFFFF;
}
.frame-2 {
    box-shadow: var(--button-shadow, 0px 1px 2px 0px rgba(0, 0, 0, 0.05));
    border-radius: 20px;
    background: #000000;
    display: flex;
    padding: 38px 0.4px 38px 0;
    width: 100px;
    box-sizing: border-box;
    justify-content: center;
}
 .container-3 {
    overflow-wrap: break-word;
    font-family: 'Inter';
    font-weight: 500;
    font-size:  16px;
    line-height:  1.5;
    color: #FFFFFF;
}

.container-6 {
    margin: 0 0 50px 24px;
    display: inline-block;
    overflow-wrap: break-word;
    font-family: 'Inter';
    font-weight: 600;
    font-size: 36px;
    letter-spacing: -0.4px;
    line-height: 1.5;
    color: #000000;
}
.container {
    display: flex;
    flex-direction: row;
    width: 262px;
    box-sizing: border-box;
    flex-direction: column;
}
.container-1 {
    margin-bottom: 30px;
    display: flex;
    flex-direction: row;
    width: 262px;
    box-sizing: border-box;
}</style>--%>

<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>카테고리 선택</title>
    <style>
      /* 스타일 코드 여기에 붙여넣기 */
    </style>
</head>
<body>
<form id="categoryForm" action="/user/playlist" method="post"> <!-- 폼 추가 -->
    <div class="container">
        <div class="container-6">
            카테고리 선택
        </div>
        <div class="container-1">
            <button class="frame-1" type="button" onclick="submitForm('drive')">
      <span class="container-2">
        #운전
      </span>
            </button>
            <button class="frame-2" type="button" onclick="submitForm('exercise')">
      <span class="container-3">
        #운동
      </span>
            </button>
        </div>

        <div class="container-1">
            <button class="frame-1" type="button" onclick="submitForm('study')">
      <span class="container-2">
        #공부
      </span>
            </button>
            <button class="frame-2" type="button" onclick="submitForm('fun')">
      <span class="container-3">
        #신남
      </span>
            </button>
        </div>

        <div class="container-1">
            <button class="frame-1" type="button" onclick="submitForm('midnight')">
      <span class="container-2">
        #새벽
      </span>
            </button>
            <button class="frame-2" type="button" onclick="submitForm('rain')">
      <span class="container-3">
        #비
      </span>
            </button>
        </div>
    </div>
</form>
<script>
  // 버튼 클릭시 폼 서브밋하는 함수
  function submitForm(category) {
    var form = document.getElementById('categoryForm');
    var input = document.createElement('input');
    input.type = 'hidden';
    input.name = 'category';
    input.value = category;
    form.appendChild(input);
    form.submit();
  }
</script>
</body>
</html>
