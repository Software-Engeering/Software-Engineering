<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <%--    jquery(ajax)--%>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</head>

<body>
    <div id="youtube-video"></div>
    <button id="play-button">Play</button>
    <button id="pause-button">Pause</button>
</body>


</html>

<script>
    $(document).ready(function() {
        // YouTube Data API 키
        var apiKey = 'AIzaSyClBGCTWjdiAwG8Kwf--O_julSFSQ_bxRo';

        // 검색할 키워드
        var keyword = 'bloodline';

        // YouTube Data API 요청 URL
        var apiUrl = 'https://www.googleapis.com/youtube/v3/search?part=snippet&maxResults=1&q=' + encodeURIComponent(keyword) + '&key=' + apiKey;

        // YouTube Data API 호출
        // $.get(apiUrl, function(data) {
        //     // 첫 번째 검색 결과의 동영상 ID 가져오기
        //     var videoId = data.items[0].id.videoId;
        //
        //     // iframe을 동적으로 생성하여 YouTube 동영상 삽입
        //     var iframe = $('<iframe width="200" height="200" src="https://www.youtube.com/embed/' + videoId + '?autoplay=1" frameborder="0" allowfullscreen></iframe>');
        //
        //     // 생성된 iframe을 페이지에 추가
        //     $('#youtube-video').append(iframe);
        // });

        // YouTube 플레이어 변수
        var player;

        // YouTube Data API 호출
        $.get(apiUrl, function(data) {
            // 첫 번째 검색 결과의 동영상 ID 가져오기
            var videoId = data.items[0].id.videoId;

            // YouTube IFrame Player API를 사용하여 플레이어 생성
            window.onYouTubeIframeAPIReady = function() {
                player = new YT.Player('youtube-video', {
                    height: '200',
                    width: '200',
                    videoId: videoId,
                    events: {
                        'onReady': onPlayerReady
                    }
                });
            };

            // 플레이어가 준비되었을 때 호출되는 함수
            function onPlayerReady(event) {
                // Play 버튼 클릭 시 동영상 재생
                $('#play-button').on('click', function() {
                    player.playVideo();
                });

                // Pause 버튼 클릭 시 동영상 일시정지
                $('#pause-button').on('click', function() {
                    player.pauseVideo();
                });
            }

            // IFrame Player API를 비동기로 로드
            var tag = document.createElement('script');
            tag.src = "https://www.youtube.com/iframe_api";
            var firstScriptTag = document.getElementsByTagName('script')[0];
            firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);
        });
    });

</script>