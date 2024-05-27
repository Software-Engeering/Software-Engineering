
<%--
<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    &lt;%&ndash;    jquery(ajax)&ndash;%&gt;
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</head>
<body>

<style>
    .grid .copy {
        display: flex;
        flex-direction: column;
        align-items: center;
        align-self: flex-start;
        width: fit-content;
        box-sizing: border-box;
    }
    .grid .playlistText {
        overflow-wrap: break-word;
        font-family: 'Inter';
        font-weight: 500;
        font-size: 20px;
        line-height: 1.5;
        color: #000000;
    }
    .grid .container {
        overflow-wrap: break-word;
        margin: 0 0 0 0;
        display: flex;
        width: 100%;
        flex-direction: row;
        box-sizing: border-box;
        justify-content: space-between;
        align-content: center;
    }
    .grid .card {
        display: flex;
        flex-direction: column;
        width: 232px;
        box-sizing: border-box;
    }
    .grid .image {
        border-radius: 8px;
        background: url('../assets/images/image.jpeg') 50% / cover no-repeat, linear-gradient(#FFEE93, #FFEE93);
        margin-bottom: 12px;
        padding: 16px 16px 0 16px;
        width: fit-content;
        height: 232px;
        box-sizing: border-box;
    }
    .grid .image-1 {
        border-radius: 8px;
        background: url('../assets/images/image_3.jpeg') 50% / cover no-repeat, linear-gradient(#FFC1C1, #FFC1C1);
        margin-bottom: 12px;
        padding: 16px 16px 0 16px;
        width: fit-content;
        height: 232px;
        box-sizing: border-box;
    }
    .grid .image-2 {
        border-radius: 8px;
        background: url('../assets/images/image_2.jpeg') 50%  / cover no-repeat, linear-gradient(#F5F5F5, #F5F5F5);
        margin-bottom: 12px;
        padding: 16px 16px 0 16px;
        width: fit-content;
        height: 232px;
        box-sizing: border-box;
    }
    .grid .title {
        margin: 32px 0 0 0;
        display: flex;
        box-sizing: border-box;
        text-align: center;
    }
    .grid .hello-id {
        font-family: 'Inter';
        font-weight: 600;
        font-size: 45px;
        letter-spacing: -0.7px;
        line-height: 1.0;
        color: #000000;
    }
    .grid .graphic {
        border-radius: 48px;
        background: url('../assets/images/graphic.jpeg') 50% / cover no-repeat, linear-gradient(#B5DBFF, #B5DBFF);
        width: 100px;
        height: 100px;
    }
    .grid .copy-4 {
        margin: 0 43.1px 67px 43.1px;
        display: flex;
        align-self: flex-end;
        box-sizing: border-box;
    }
    .grid .id {
        overflow-wrap: break-word;
        font-family: 'Inter';
        font-weight: 500;
        font-size: 14px;
        line-height: 1.4;
        color: #000000;
    }
    .grid .playlistGraphic {
        border-radius: 8px;
        margin-bottom: 12px;
        display: flex;
        flex-direction: row;
        justify-content: space-between;
        padding: 14px 8px 0 16px;
        width: 232px;
        height: 232px;
        box-sizing: border-box;
    }
    .grid .image-3 {
        border-radius: 8px;
        background: url('../assets/images/image.jpeg') 50% / cover no-repeat, linear-gradient(#FFEE93, #FFEE93);
        margin-bottom: 12px;
        padding: 16px 16px 0 16px;
        width: fit-content;
        height: 232px;
        box-sizing: border-box;
    }
    .grid .image-4 {
        border-radius: 8px;
        background: url('../assets/images/image_3.jpeg') 50% / cover no-repeat, linear-gradient(#FFC1C1, #FFC1C1);
        margin-bottom: 12px;
        padding: 16px 16px 0 16px;
        width: fit-content;
        height: 232px;
        box-sizing: border-box;
    }
    .grid .addButton {
        border-radius: 8px;
        background: transparent;
        position: relative;
        font-family: 'Inter';
        font-weight: 500;
        font-size: 40px;
        color: #000000;
        width: 232px;
        height: 232px;
        border: dashed;
    }
    .grid .addButton:hover {
        background: #DADADA;
    }
    .grid .deleteButton
    {
        background-color:transparent;
        border-radius: 60px;
        font-size: 0px;
        display: flex;
        padding: 0;
        box-sizing: border-box;
        height: 33px;
        width: 33px;
        border: none;
    }
    .grid .deleteButton:hover
    {
        border-radius: 60px;
        background: #FF0000;
        font-family: 'Inter';
        font-weight: 500;
        font-size: 40px;
        color: #FFFFFF;
        display: flex;
        padding: 0;
        box-sizing: border-box;
        justify-content: center;
        line-height: 23px;
        height: 33px;
        width: 33px;
    }
    .grid {
        background: #FFFFFF;
        display: flex;
        flex-direction: column;
        align-items: center;
        padding: 45px 45px 45px 45px;
        width: 100%;
        box-sizing: border-box;
    }
    .grid .large-grid {
        margin: 0 0 40px 0;
        display: flex;
        flex-direction: row;
        width: 1200px;
        justify-content: space-between;
        box-sizing: border-box;
    }
    .grid .playlistNumber {
        margin: 2px 16px 2px 0;
        display: inline-block;
        width: 156px;
        overflow-wrap: break-word;
        font-family: 'Inter';
        font-weight: 600;
        font-size: 32px;
        letter-spacing: -1.3px;
        line-height: 1;
        color: #FFFFFF;
    }
</style>

<div class="grid">
    <div class="container">
        <div class="title">
      <span class="hello-id">
        Hello ID
      </span>
        </div>
        <div class="graphic">
        </div>
    </div>
    <div class="copy-4">
    <span class="id">
      ID
    </span>
    </div>
    <div class="large-grid">
        <div class="card">
            <button class="addButton" id = "addButton1">
                +
            </button>
            <div class="playlistGraphic" style="background-color: #B5FFDB; display: none" id="playList1">
                <div class="playlistNumber">
                    Playlist 1
                </div>
                <button class="deleteButton">
                    -
                </button>
            </div>
            <div class="copy">
        <span class="playlistText" style="display: none" id="playlistText1">
          Playlist 1
        </span>
                <span class="container" style="display: none" id="container1">
          #카테고리
        </span>
            </div>
        </div>
        <div class="card">
            <button class="addButton" style="display: none" id = "addButton2">
                +
            </button>
            <div class="playlistGraphic" style="background-color: #B5FFDB; display: none" id="playList2">
                <div class="playlistNumber">
                    Playlist 2
                </div>
                <button class="deleteButton">
                    -
                </button>
            </div>
            <div class="copy">
        <span class="playlistText" style="display: none" id="playlistText2">
          Playlist 2
        </span>
                <span class="container" style="display: none" id="container2">
          #카테고리
        </span>
            </div>
        </div>
        <div class="card">
            <button class="addButton" style="display: none" id = "addButton3">
                +
            </button>
            <div class="playlistGraphic" style="background-color: #B5FFDB; display: none" id="playList3">
                <div class="playlistNumber">
                    Playlist 3
                </div>
                <button class="deleteButton">
                    -
                </button>
            </div>
            <div class="copy">
        <span class="playlistText" style="display: none" id="playlistText3">
          Playlist 3
        </span>
                <span class="container" style="display: none" id="container3">
          #카테고리
        </span>
            </div>
        </div>
        <div class="card">
            <button class="addButton" style="display: none" id = "addButton4">
                +
            </button>
            <div class="playlistGraphic" style="background-color: #B5FFDB; display: none" id="playList4">
                <div class="playlistNumber">
                    Playlist 4
                </div>
                <button class="deleteButton">
                    -
                </button>
            </div>
            <div class="copy">
        <span class="playlistText" style="display: none" id="playlistText4">
          Playlist 4
        </span>
                <span class="container" style="display: none" id="container4">
          #카테고리
        </span>
            </div>
        </div>
    </div>
    <div class="large-grid">
        <div class="card">
            <button class="addButton" style="display: none" id = "addButton5">
                +
            </button>
            <div class="playlistGraphic" style="background-color: #B5FFDB; display: none" id="playList5">
                <div class="playlistNumber">
                    Playlist 5
                </div>
                <button class="deleteButton">
                    -
                </button>
            </div>
            <div class="copy">
        <span class="playlistText" style="display: none" id="playlistText5">
          Playlist 5
        </span>
                <span class="container" style="display: none" id="container5">
          #카테고리
        </span>
            </div>
        </div>
        <div class="card">
            <button class="addButton" style="display: none" id = "addButton6">
                +
            </button>
            <div class="playlistGraphic" style="background-color: #B5FFDB; display: none" id="playList6">
                <div class="playlistNumber">
                    Playlist 6
                </div>
                <button class="deleteButton">
                    -
                </button>
            </div>
            <div class="copy">
        <span class="playlistText" style="display: none" id="playlistText6">
          Playlist 6
        </span>
                <span class="container" style="display: none" id="container6">
          #카테고리
        </span>
            </div>
        </div>
        <div class="card">
            <button class="addButton" style="display: none" id = "addButton7">
                +
            </button>
            <div class="playlistGraphic" style="background-color: #B5FFDB; display: none" id="playList7">
                <div class="playlistNumber">
                    Playlist 7
                </div>
                <button class="deleteButton">
                    -
                </button>
            </div>
            <div class="copy">
        <span class="playlistText" style="display: none" id="playlistText7">
          Playlist 7
        </span>
                <span class="container" style="display: none" id="container7">
          #카테고리
        </span>
            </div>
        </div>
        <div class="card">
            <button class="addButton" style="display: none" id = "addButton8">
                +
            </button>
        </div>
    </div>
</div>

<script type="text/javascript">
    $("#addButton1").click(function () {
        $("#addButton1").hide();
        $("#playList1").show();
        $("#container1").show();
        $("#playlistText1").show();
        $("#addButton2").show();
    });

    $("#addButton2").click(function () {
        $("#addButton2").hide();
        $("#playList2").show();
        $("#container2").show();
        $("#playlistText2").show();
        $("#addButton3").show();
    });

    $("#addButton3").click(function () {
        $("#addButton3").hide();
        $("#playList3").show();
        $("#container3").show();
        $("#playlistText3").show();
        $("#addButton4").show();
    });

    $("#addButton4").click(function () {
        $("#addButton4").hide();
        $("#playList4").show();
        $("#container4").show();
        $("#playlistText4").show();
        $("#addButton5").show();
    });

    $("#addButton5").click(function () {
        $("#addButton5").hide();
        $("#playList5").show();
        $("#container5").show();
        $("#playlistText5").show();
        $("#addButton6").show();
    });
    $("#addButton6").click(function () {
        $("#addButton6").hide();
        $("#playList6").show();
        $("#container6").show();
        $("#playlistText6").show();
        $("#addButton7").show();
    });
    $("#addButton7").click(function () {
        $("#addButton7").hide();
        $("#playList7").show();
        $("#container7").show();
        $("#playlistText7").show();
        $("#addButton8").show();
    });
    $("#addButton8").click(function () {
        $("#addButton8").hide();
    });
</script>--%>

<%--
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Playlist</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>

<div id="playlistContainer">
    <!-- 여기에 플레이리스트가 동적으로 추가될 것입니다. -->
</div>

<script type="text/javascript">
  $(document).ready(function () {
    var playlists = ${playlist}; // model로부터 받은 데이터를 JavaScript 변수에 할당합니다.
    // 받아온 플레이리스트 데이터를 순회하며 화면에 출력합니다.
    playlists.forEach(function (playlist) {
      var playlistElement = '<div>';
      playlistElement += '<p>ID: ' + playlist.id + '</p>';
      playlistElement += '<p>Category: ' + playlist.category + '</p>';
      playlistElement += '</div>';

      // 플레이리스트를 출력할 컨테이너에 추가합니다.
      $('#playlistContainer').append(playlistElement);
    });
  });
</script>

</body>
</html>--%>


<%--
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Playlist</title>
</head>
<body>

<div id="playlistContainer">
    &lt;%&ndash; 플레이리스트가 동적으로 추가될 영역 &ndash;%&gt;
    <c:forEach items="${playlist}" var="playlistItem">
        <div>
            <p>ID: ${playlistItem.id}</p>
            <p>Category: ${playlistItem.category}</p>
        </div>
    </c:forEach>
</div>

</body>
</html>--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Playlist</title>
    <style>
      #playlistContainer {
        max-width: 600px;
        margin: 0 auto;
        padding: 20px;
        background-color: #f8f9fa;
        border-radius: 5px;
      }
      .playlistItem {
        width: 150px;
        height: 150px;
        margin: 10px;
        padding: 20px;
        background-color: #fff;
        border: 1px solid #ddd;
        border-radius: 5px;
        cursor: pointer;
      }
      .playlistItem:hover {
        background-color: #f0f0f0;
      }
      .playlistItem p {
        margin: 5px 0;
        font-size: 16px;
        color: #333;
      }
      .addCategoryButton {
        width: 150px;
        height: 150px;
        margin: 10px;
        padding: 20px;
        background-color: #fff;
        border: 1px solid #ddd;
        border-radius: 5px;
        cursor: pointer;
      }
      .addCategoryButton:hover {
        background-color: #f0f0f0;
      }
    </style>
    <script>
      // 각 플레이리스트 아이템을 클릭했을 때 이동하는 함수
      function goToPlaylist(id) {
        window.location.href = "/user/playlist/" + id;
      }

      // addCategory 페이지로 이동하는 함수
      function goToAddCategory() {
        window.location.href = "/user/playlist";
      }
    </script>
</head>
<body>

<div id="playlistContainer">
    <%-- 플레이리스트가 동적으로 추가될 영역 --%>
    <c:forEach items="${playlist}" var="playlistItem">
        <div class="playlistItem" onclick="goToPlaylist(${playlistItem.id})">
            <p><strong>ID:</strong> ${playlistItem.id}</p>
            <p><strong>Category:</strong> ${playlistItem.category}</p>
        </div>
    </c:forEach>

    <div class="addCategoryButton" onclick="goToAddCategory()">
        <p>Add Playlist</p>
    </div>
</div>

</body>
</html>