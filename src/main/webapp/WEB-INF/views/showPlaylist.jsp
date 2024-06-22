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
            display: flex;
            flex-direction: column;
        }
        .title {
            width: 100%;
            text-align: left;
            margin-bottom: 20px;
        }
        .content {
            display: flex;
            flex-direction: row;
            align-items: center;
        }
        .player-container {
            flex: 1;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }
        .youtube-player {
            width: 100%;
            max-width: 640px;
            height: 360px;
            margin-bottom: 20px;
        }
        .controls {
            display: flex;
            gap: 20px;
        }
        .controls button {
            background: none;
            border: none;
            cursor: pointer;
        }
        .controls button img {
            width: 50px;
            height: 50px;
        }
        .like-dislike-container {
            display: flex;
            gap: 20px;
            margin-top: 40px;
            padding: 20px;
            background-color: #eee;
            border-radius: 5px;
            align-items: center;
        }
        .like-dislike-container button {
            background: none;
            border: none;
            cursor: pointer;
        }
        .like-dislike-container button img {
            width: 50px;
            height: 50px;
        }
        .like-dislike-text {
            font-size: 18px;
            color: #333;
            margin-left: 20px;
        }
        .playlist-container {
            flex: 1;
            margin-left: 20px;
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
    <h1 class="title">Playlist</h1>
    <div class="content">
        <div class="player-container">
            <div id="youtube-video" class="youtube-player" style="border-radius: 10px"></div>
            <div class="controls">
                <button id="prev-button"><img src="${pageContext.request.contextPath}/images/prev-icon.png" alt="Previous"></button>
                <button id="play-pause-button"><img src="${pageContext.request.contextPath}/images/play-icon.png" alt="Play" id="play-pause-img"></button>
                <button id="next-button"><img src="${pageContext.request.contextPath}/images/next-icon.png" alt="Next"></button>
            </div>
            <div class="like-dislike-container">
                <button id="like-button"><img src="${pageContext.request.contextPath}/images/like.png" alt="Like"></button>
                <button id="dislike-button"><img src="${pageContext.request.contextPath}/images/dislike.png" alt="Dislike"></button>

            </div>
        </div>
        <div class="playlist-container">
            <div id="songsArea"></div>
        </div>
    </div>
</div>



<script>
    $(document).ready(function() {
        var songList = [];  // 전역 변수로 songList 선언
        var currentIndex = -1;  // 현재 재생 중인 곡의 인덱스
        var isPlaying = false;  // 현재 재생 상태를 나타내는 변수
        displaySongs();

        function displaySongs(){
            $.ajax({
                type: "GET",
                url: "/user/getSongs",
                data: { id: ${id} },  // Any additional parameters you want to send
                success: function(response) {
                    songList = response;
                    console.log(songList);
                    $('#songsArea').empty();
                    // Loop through the product list and generate HTML for each product card
                    songList.forEach(function(song) {
                        var songCardHtml = '<div id="' + song["id"] + '" class="song-card">';
                        songCardHtml += '<div class="song-info">';
                        songCardHtml += '<h3 class="song-title">' + song["title"] + '</h3>';
                        songCardHtml += '<p class="song-artist">' + song["artist"] + '</p>';
                        songCardHtml += '</div>';
                        songCardHtml += '<div class="song-date">' + song["date"] + '</div>';
                        songCardHtml += '</div>';
                        $('#songsArea').append(songCardHtml);
                    });

                    // 첫 번째 곡을 자동으로 로드하고 재생
                    if (songList.length > 0) {
                        loadAndPlaySong(0);
                    }
                },
                error: function(xhr, status, error) {
                    console.error("ajax 호출 error 발생");
                }
            });
        }

        var player;

        function loadAndPlaySong(index) {
            if (index < 0 || index >= songList.length) {
                return;  // 인덱스가 범위를 벗어나면 아무 것도 하지 않음
            }

            var song = songList[index];
            var title = song.title;
            var artist = song.artist;
            var keyword = title + " " + artist;
            // var apiKey = 'AIzaSyClBGCTWjdiAwG8Kwf--O_julSFSQ_bxRo';
            var apiKey = 'AIzaSyCqb0nNDIxDGNG0GrA5kzcxF4zVYdKumH8';
            var apiUrl = 'https://www.googleapis.com/youtube/v3/search?part=snippet&maxResults=1&q=' + encodeURIComponent(keyword) + '&key=' + apiKey;

            // YouTube Data API 호출
            $.get(apiUrl, function(data) {
                var videoId = data.items[0].id.videoId;

                if (player) {
                    player.loadVideoById(videoId);
                } else {
                    player = new YT.Player('youtube-video', {
                        height: '360',
                        width: '640',
                        videoId: videoId,
                        playerVars: {
                            'fs': 0,  // 전체화면 버튼 비활성화
                            'rel': 0, // 관련 동영상 표시 안 함
                            'modestbranding': 1 // 최소 브랜딩
                        },
                        events: {
                            'onReady': onPlayerReady,
                            'onStateChange': onPlayerStateChange
                        }
                    });
                }
            });

            currentIndex = index;
        }

        $('#songsArea').on('click', '.song-card', function() {
            var index = $(this).index();
            loadAndPlaySong(index);
        });

        $('#play-pause-button').on('click', function() {
            if (player) {
                if (isPlaying) {
                    player.pauseVideo();
                    $('#play-pause-img').attr('src', '${pageContext.request.contextPath}/images/play-icon.png');
                } else {
                    player.playVideo();
                    $('#play-pause-img').attr('src', '${pageContext.request.contextPath}/images/pause-icon.png');
                }
                isPlaying = !isPlaying;
            }
        });

        $('#like-button').on('click', function () {
            $.ajax({
                type: "GET",
                url: "/user/addSongs",
                data: { id: ${id} },  // Any additional parameters you want to send
                success: function(response) {
                    console.log("Like Success")
                },
                error: function(xhr, status, error) {
                    console.error("ajax 호출 error 발생");
                }
            });
            displaySongs();
        });

        $('#dislike-button').on('click', function() {
            $.ajax({
                type: "GET",
                url: "/user/deleteSongs",
                data: { id: ${id} },  // Any additional parameters you want to send
                success: function(response) {
                    console.log("Dislike success");
                },
                error: function(xhr, status, error) {
                    console.error("ajax 호출 error 발생");
                }
            });
            displaySongs();
        });

        $('#prev-button').on('click', function() {
            if (currentIndex > 0) {
                loadAndPlaySong(currentIndex - 1);
            }
        });

        $('#next-button').on('click', function() {
            if (currentIndex < songList.length - 1) {
                loadAndPlaySong(currentIndex + 1);
            }
        });

        // IFrame Player API를 비동기로 로드 (최초 1회만)
        if (!window.YT) {
            var tag = document.createElement('script');
            tag.src = "https://www.youtube.com/iframe_api";
            var firstScriptTag = document.getElementsByTagName('script')[0];
            firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);
        }

        // 플레이어가 준비되었을 때 호출되는 함수
        function onPlayerReady(event) {
            // 플레이어가 준비되었을 때 추가적인 설정이 필요하면 여기에 추가
        }

        // 플레이어 상태 변경 시 호출되는 함수
        function onPlayerStateChange(event) {
            if (event.data == YT.PlayerState.ENDED) {
                if (currentIndex < songList.length - 1) {
                    loadAndPlaySong(currentIndex + 1);
                }
                $('#play-pause-img').attr('src', '${pageContext.request.contextPath}/images/play-icon.png');  // 재생이 끝나면 아이콘을 플레이로 변경
                isPlaying = false;  // 재생 상태 변경
            }
        }
    });
</script>
</body>
</html>
