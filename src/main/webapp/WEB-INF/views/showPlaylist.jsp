<%--
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>플레이 리스트 선택시 나오는 상세 리스트</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</head>
<body>
<div class="outside">
    <div class="container">
        <p class ="mainName">playlist_1</p>&lt;%&ndash; 플레이 리스트 이름 &ndash;%&gt;

        <div>&lt;%&ndash; 트랙 개수 &ndash;%&gt;
            <p class ="track">트랙 <span id="listCount">0</span>개</p>
        </div>

        <div class="header">&lt;%&ndash; 노래 재목,넘버링,등 &ndash;%&gt;
        <span class="number">
           Number
        </span>
            <span class="title">
          Title
        </span>
            <span class="container-42">
          가수
        </span>
            <span class="container-41">
          재생시간
        </span>
            <span class="date">
          Date
        </span>
        </div>

        <ol class="list">&lt;%&ndash; 플레이 리스트 &ndash;%&gt;
        </ol>

    <div class="evaluation"> &lt;%&ndash; 만족도 평가 &ndash;%&gt;
         <button class="good">
         </button>

         <button class="bad">
         </button>
     </div>
    </div>
</div>
</body>
</html>

<style>
    .container {
    position: relative;
    display: flex;
    flex-direction: column;
    box-sizing: border-box;
    .mainName {
    margin-bottom: 24px;
    display: inline-block;
    align-self: flex-start;
    overflow-wrap: break-word;
    font-family: 'Inter';
    font-weight: 600;
    font-size: 42px;
    letter-spacing: -0.4px;
    line-height: 1.4;
    color: #000000;
    }
    .track {
    margin-bottom: 30px;
    display: inline-block;
    align-self: flex-start;
    overflow-wrap: break-word;
    font-family: 'Inter';
    font-weight: 500;
    font-size: 20px;
    line-height: 1.4;
    color: #000000;

    }
        .header {
            margin-bottom: 10px;
            display: flex;
            flex-direction: row;
            justify-content: space-between;
            align-self: flex-start;
            width: 879.4px;
            box-sizing: border-box;
        }
    .outside {
    background: #000000;
    position: relative;
    padding: 60px 16px 89px 16px;
    width: 1473px;
    height: fit-content;
    box-sizing: border-box;
    }
        .bad {
            background: #FFFFFF;
            width: 101px;
            height: 93px;
        }
        .good {
            background: 50% / cover no-repeat;
            width: 102px;
            height: 93px;
        }
        .evaluation {
            display: flex;
            flex-direction: row;
            justify-content: space-between;
            align-self: center;
            width: 347px;
            box-sizing: border-box;

            margin-top: 30px;
        }
        .list{
            height: 420px;
            overflow-y: auto;
            border: 1px solid #ccc; /* 테두리 추가 */
            padding: 0; /* 기본 패딩 제거 */
            margin: 0; /* 기본 마진 제거 */
        }
        .list li {
            margin-bottom: 10px; /* 원하는 간격(px)으로 조절 가능 */
            font-size: 23px;
        }
}</style>

<script type="text/javascript">
    //리스트 요소 개수
    var count=0;

    //시작시 리스트10개 추가
    $(document).ready(function() {

        for(count=0;count<10;count++)
        {
            $('.list').append('<li>'+count+" <button class='removeButton'>Remove</button>"+'</li>');

        }
        updateListCount();
    });
    //만족도 좋다고 평가
    $('.good').click(function() {
        for(var i=0;i<10;i++,count++)
        {
            $('.list').append('<li>'+count+" <button class='removeButton'>Remove</button>"+'</li>');

        }
        updateListCount();
    });

    //노래 제거버튼
    $(document).on("click", ".removeButton", function() {
        $(this).parent().remove();
        updateListCount();
    });

    //현재 리스트 개수 확인
    function updateListCount() {
        var itemCount = $(".list li").length;
        var countText =  + itemCount;
        $("#listCount").text(countText);
    }

    //만족도 불만 클릭
    $('.bad').click(function() {
        $(".list").empty();
        count=0;
        for(count;count<10;count++)
        {
            $('.list').append('<li>'+count+"새로운 노래"+" <button class='removeButton'>Remove</button>"+'</li>');

        }
        updateListCount();
    });


</script>--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Playlist</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 80%;
            margin: 0 auto;
            padding: 20px;
        }
        .song-card, .header-row {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 15px;
            margin: 10px 0;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .header-row {
            background-color: #eee;
            font-weight: bold;
        }
        .song-card h3, .song-card p, .header-row div {
            margin: 0;
        }
        .song-card p, .header-row div {
            color: #555;
        }
        .song-card .song-info, .header-row div.song-info {
            display: flex;
            flex-direction: column;
        }
        .song-card .song-date, .header-row div.song-date {
            color: #888;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Playlist</h1>
    <div class="header-row">
        <div class="song-info">
            <div>Title</div>
            <div>Artist</div>
        </div>
        <div class="song-date">Date</div>
    </div>
    <div id="songsArea"></div>
</div>

</html>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).ready(function() {
        $.ajax({
            type: "GET",
            url: "/user/getSongs",
            data: {/* Any additional parameters you want to send */
                id : ${id}
            },
            success: function(response) {
                var songList = response;
                console.log(songList);
                $('#songsArea').empty();
                // Loop through the product list and generate HTML for each product card
                songList.forEach(function(song) {
                    var songCardHtml = '<div id="' + song["id"] + '" class="song-card">';
                    songCardHtml += '<div class="song-info">';
                    songCardHtml += '<h3>' + song["title"] + '</h3>';
                    songCardHtml += '<p>' + song["artist"] + '</p>';
                    songCardHtml += '</div>';
                    songCardHtml += '<div class="song-date">' + song["date"] + '</div>';
                    songCardHtml += '</div>';
                    $('#songsArea').append(songCardHtml);
                });
            },
            error: function(xhr, status, error) {
                console.error("ajax 호출 error 발생");
            }
        });
    });



</script>

