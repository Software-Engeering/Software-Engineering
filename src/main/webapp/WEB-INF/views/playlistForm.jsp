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
        </div>
        <div class="card">
        </div>
        <div class="card">
        </div>
        <div class="card">
        </div>
    </div>
    <div class="large-grid">
        <div class="card">
        </div>
        <div class="card">
        </div>
        <div class="card">
        </div>
        <div class="card">
        </div>
    </div>
</div>

<script type="text/javascript">
    let cdNum;

    window.onload = displayPlaylist();

    $(document).on("click", ".addButton", function () {
        goToAddCategory();
    });

    function refreshPlaylist(){
        for (let j = 0; j < 9; j++){
            cdNum = $(".card").eq(j);
            cdNum.empty();
        }
        displayPlaylist();
    }

    function displayPlaylist(){
        $.ajax({
            type: "POST",
            url: "/user/getPlaylist",
            data: {/* Any additional parameters you want to send */
                // category : "study"
            },
            success: function (response) {
                let i = 0;
                let playList = response;
                playList.forEach(function(product) {
                    if (i < 9) {
                        let id = product["id"];
                        cdNum = $(".card").eq(i);
                        cdNum.append('<div class="playlistGraphic" style="background-color: #B5FFDB" id="'
                            + id + '" onclick=goToPlaylist(id)>' + '<div class="playlistNumber">'
                            + product["title"] + '</div> <button class="deleteButton" onclick="event.stopPropagation(); deletePlaylist(id)"> - </button> </div> <div class="copy"> <span class="playlistText">'
                            + product["title"] + '</span> <span class="container">#' + product["category"] + '</span> </div>');
                        i++;
                    }
                });
                if (i < 7) {
                    cdNum = $(".card").eq(i);
                    cdNum.append('<button class="addButton" id = "addButton"> + </button>');
                }
            },
            error: function (xhr, status, error) {
                console.error("ajax 호출 error 발생");
            }
        });
    }

    function deletePlaylist(id){
        if (confirm("정말로 삭제하시겠습니까?")){
            //삭제
            refreshPlaylist();
        }
    }

    function goToPlaylist(id){
        window.location.href = "/user/playlist/" + id;
    }

    function goToAddCategory(){
        window.location.href = "/user/playlist";
    }

</script>