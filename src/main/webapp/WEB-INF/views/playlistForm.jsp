<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
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
    .grid .playlist-1 {
        overflow-wrap: break-word;
        font-family: 'Inter';
        font-weight: 500;
        font-size: 20px;
        line-height: 1.5;
        color: #000000;
    }
    .grid .container {
        margin-right: 14px;
        overflow-wrap: break-word;
        font-family: 'Inter';
        font-weight: 400;
        font-size: 16px;
        line-height: 1.5;
        color: #454545;
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
    .grid .playlist-2 {
        overflow-wrap: break-word;
        font-family: 'Inter';
        font-weight: 600;
        font-size: 32px;
        letter-spacing: -1.3px;
        line-height: 1;
        color: #FFFFFF;
    }
    .grid .copy-1 {
        display: flex;
        flex-direction: column;
        align-items: center;
        align-self: flex-start;
        width: fit-content;
        box-sizing: border-box;
    }
    .grid .playlist-21 {
        overflow-wrap: break-word;
        font-family: 'Inter';
        font-weight: 500;
        font-size: 20px;
        line-height: 1.5;
        color: #000000;
    }
    .grid .container-1 {
        margin-right: 16.8px;
        overflow-wrap: break-word;
        font-family: 'Inter';
        font-weight: 400;
        font-size: 16px;
        line-height: 1.5;
        color: #454545;
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
    .grid .playlist-3 {
        overflow-wrap: break-word;
        font-family: 'Inter';
        font-weight: 600;
        font-size: 32px;
        letter-spacing: -1.3px;
        line-height: 1;
        color: #FFFFFF;
    }
    .grid .copy-2 {
        display: flex;
        flex-direction: column;
        align-items: center;
        align-self: flex-start;
        width: fit-content;
        box-sizing: border-box;
    }
    .grid .playlist-31 {
        overflow-wrap: break-word;
        font-family: 'Inter';
        font-weight: 500;
        font-size: 20px;
        line-height: 1.5;
        color: #000000;
    }
    .grid .container-2 {
        margin-right: 17.4px;
        overflow-wrap: break-word;
        font-family: 'Inter';
        font-weight: 400;
        font-size: 16px;
        line-height: 1.5;
        color: #454545;
    }
    .grid .image-2 {
        border-radius: 8px;
        background: url('../assets/images/image_2.jpeg') 50% / cover no-repeat, url('../assets/images/image_3.jpeg') 50% / cover no-repeat, url('../assets/images/image.jpeg') 50% / cover no-repeat, linear-gradient(#F5F5F5, #F5F5F5);
        margin-bottom: 12px;
        padding: 16px 16px 0 16px;
        width: fit-content;
        height: 232px;
        box-sizing: border-box;
    }
    .grid .playlist-4 {
        overflow-wrap: break-word;
        font-family: 'Inter';
        font-weight: 600;
        font-size: 32px;
        letter-spacing: -1.3px;
        line-height: 1;
        color: #FFFFFF;
    }
    .grid .copy-3 {
        display: flex;
        flex-direction: column;
        align-items: center;
        align-self: flex-start;
        width: fit-content;
        box-sizing: border-box;
    }
    .grid .playlist-32 {
        overflow-wrap: break-word;
        font-family: 'Inter';
        font-weight: 500;
        font-size: 20px;
        line-height: 1.5;
        color: #000000;
    }
    .grid .container-3 {
        margin-right: 17.4px;
        overflow-wrap: break-word;
        font-family: 'Inter';
        font-weight: 400;
        font-size: 16px;
        line-height: 1.5;
        color: #454545;
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
        background: url('../assets/images/graphic.jpeg') 50% / cover no-repeat, linear-gradient(#B5DBFF, #B5DBFF);
        margin-bottom: 12px;
        padding: 16px 16px 0 16px;
        width: fit-content;
        height: 232px;
        box-sizing: border-box;
    }
    .grid .playlist-5 {
        overflow-wrap: break-word;
        font-family: 'Inter';
        font-weight: 600;
        font-size: 32px;
        letter-spacing: -1.3px;
        line-height: 1;
        color: #FFFFFF;
    }
    .grid .copy-5 {
        display: flex;
        flex-direction: column;
        align-items: center;
        align-self: flex-start;
        width: fit-content;
        box-sizing: border-box;
    }
    .grid .playlist-51 {
        overflow-wrap: break-word;
        font-family: 'Inter';
        font-weight: 500;
        font-size: 20px;
        line-height: 1.5;
        color: #000000;
    }
    .grid .container-4 {
        margin-right: 16.9px;
        overflow-wrap: break-word;
        font-family: 'Inter';
        font-weight: 400;
        font-size: 16px;
        line-height: 1.5;
        color: #454545;
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
    .grid .playlist-6 {
        overflow-wrap: break-word;
        font-family: 'Inter';
        font-weight: 600;
        font-size: 32px;
        letter-spacing: -1.3px;
        line-height: 1;
        color: #FFFFFF;
    }
    .grid .copy-6 {
        display: flex;
        flex-direction: column;
        align-items: center;
        align-self: flex-start;
        width: fit-content;
        box-sizing: border-box;
    }
    .grid .playlist-61 {
        overflow-wrap: break-word;
        font-family: 'Inter';
        font-weight: 500;
        font-size: 20px;
        line-height: 1.5;
        color: #000000;
    }
    .grid .container-5 {
        margin-right: 17.2px;
        overflow-wrap: break-word;
        font-family: 'Inter';
        font-weight: 400;
        font-size: 16px;
        line-height: 1.5;
        color: #454545;
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
    .grid .playlist-7 {
        overflow-wrap: break-word;
        font-family: 'Inter';
        font-weight: 600;
        font-size: 32px;
        letter-spacing: -1.3px;
        line-height: 1;
        color: #FFFFFF;
    }
    .grid .copy-7 {
        display: flex;
        flex-direction: column;
        align-items: center;
        align-self: flex-start;
        width: fit-content;
        box-sizing: border-box;
    }
    .grid .playlist-71 {
        overflow-wrap: break-word;
        font-family: 'Inter';
        font-weight: 500;
        font-size: 20px;
        line-height: 1.5;
        color: #000000;
    }
    .grid .container-6 {
        margin-right: 16.1px;
        overflow-wrap: break-word;
        font-family: 'Inter';
        font-weight: 400;
        font-size: 16px;
        line-height: 1.5;
        color: #454545;
    }
    .grid .image-5 {
        border-radius: 8px;
        background: #F5F5F5;
        position: relative;
        width: 232px;
        height: 232px;
    }
    .grid .button {
        box-shadow: var(--button-shadow, 0px 1px 2px 0px rgba(0, 0, 0, 0.05));
        border-radius: 10px;
        background: #828282;
        position: absolute;
        left: 50%;
        bottom: -1px;
        translate: -50% 0;
        display: flex;
        width: 232px;
        height: 233px;
    }
    .grid .primary-button {
        border-radius: 60px;
        background: rgba(255, 209, 209, 0.49);
        position: relative;
        width: 50px;
        height: 50px;
    }
    .grid .container-7 {
        position: absolute;
        top: -13.5px;
        right: 8.4px;
        overflow-wrap: break-word;
        font-family: 'Inter';
        font-weight: 700;
        font-size: 48px;
        line-height: 1.5;
        color: #FFFFFF;
    }
    .grid .primary-button-1 {
        opacity: 0.8;
        border-radius: 60px;
        background: #FF0000;
        display: flex;
        padding: 0 9px 0 8.5px;
        box-sizing: border-box;
    }
    .grid .container-8 {
        overflow-wrap: break-word;
        font-family: 'Inter';
        font-weight: 500;
        font-size: 40px;
        line-height: 1.5;
        color: #FFFFFF;
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
        width: 100%;
        justify-content: space-between;
        box-sizing: border-box;
    }
    .grid .playlistGraphic {
        border-radius: 8px;
        background: url('../assets/images/graphic.jpeg') 50% / cover no-repeat, linear-gradient(#B5DBFF, #B5DBFF);
        margin-bottom: 12px;
        display: flex;
        flex-direction: row;
        justify-content: space-between;
        padding: 14px 8px 0 16px;
        width: 232px;
        height: 232px;
        box-sizing: border-box;
    }
    .grid .playlist-11 {
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
    .grid .container {
        margin: 0 0 0 0;
        display: flex;
        width: 100%;
        flex-direction: row;
        box-sizing: border-box;
        justify-content: space-between;
        align-content: center;
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
            <div class="playlistGraphic">
                <div class="playlist-11">
                    Playlist 1
                </div>
                <div class="primary-button-1">
          <span class="container-8">
            -
          </span>
                </div>
            </div>
            <div class="copy">
        <span class="playlist-1">
          Playlist 1
        </span>
                <span class="container">
          #카테고리
        </span>
            </div>
        </div>
        <div class="card">
            <div class="image">
        <span class="playlist-2">
          Playlist 2
        </span>
            </div>
            <div class="copy-1">
        <span class="playlist-21">
          Playlist 2
        </span>
                <span class="container-1">
          #카테고리
        </span>
            </div>
        </div>
        <div class="card">
            <div class="image-1">
        <span class="playlist-3">
          Playlist 3
        </span>
            </div>
            <div class="copy-2">
        <span class="playlist-31">
          Playlist 3
        </span>
                <span class="container-2">
          #카테고리
        </span>
            </div>
        </div>
        <div class="card">
            <div class="image-2">
        <span class="playlist-4">
          Playlist 4
        </span>
            </div>
            <div class="copy-3">
        <span class="playlist-32">
          Playlist 3
        </span>
                <span class="container-3">
          #카테고리
        </span>
            </div>
        </div>
    </div>
    <div class="large-grid">
        <div class="card">
            <div class="playlistGraphic">
        <span class="playlist-5">
          Playlist 5
        </span>
            </div>
            <div class="copy-5">
        <span class="playlist-51">
          Playlist 5
        </span>
                <span class="container-4">
          #카테고리
        </span>
            </div>
        </div>
        <div class="card">
            <div class="image-3">
        <span class="playlist-6">
          Playlist 6
        </span>
            </div>
            <div class="copy-6">
        <span class="playlist-61">
          Playlist 6
        </span>
                <span class="container-5">
          #카테고리
        </span>
            </div>
        </div>
        <div class="card">
            <div class="image-4">
        <span class="playlist-7">
          Playlist 7
        </span>
            </div>
            <div class="copy-7">
        <span class="playlist-71">
          Playlist 7
        </span>
                <span class="container-6">
          #카테고리
        </span>
            </div>
        </div>
        <div class="card">
            <div class="image-5">
                <div class="button">
                    <div class="primary-button">
            <span class="container-7">
              +
            </span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>