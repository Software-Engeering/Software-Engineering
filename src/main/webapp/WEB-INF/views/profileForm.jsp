<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit Profile</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
    <div style="display:flex;flex-direction: row">
        <div>
        <form action="/join" method="post">
            <div class="container">

                <div class="copy">
                    <span class="container-1">
                      Edit Profile
                    </span>
                </div>

                <div class="input-and-button">
                    <b>Username</b>
                    <input type="text" name="account" placeholder="${user.account}" class="label" /><br/>
                    <b>Email</b>
                    <input type="email" name="email"  placeholder="${user.email}" class="label-2"/><br/>
                    <b>Current Password</b>
                    <input type="password" name="password" placeholder="Current Password" class="label-1"/><br/>
                    <b>New Password</b>
                    <input type="password" name="password" placeholder="New Password" class="label-1"/><br/>

                    <button class="button" type="submit">
                        <span class="container-2">Save changes</span>
                    </button>
                </div>
            </div>

        </form>
        </div>

        <!-- 데이터베이스에서 가져온 데이터 -->
        <c:set var="categories" value="${resultList}" />

        <div class="container">
            <span class="container-1" style="margin-top: 0px">유저성향</span>
            <canvas id="myChart" width="600px" height="300px" style="margin-left:120px; margin-top: 40px"></canvas>
        </div>

    </div>

    <div>
        <p>
              <span class="container-1" style="margin-left: 200px">
                      Favorite Artists
              </span>
        </p>
    </div>
    <div class="favorite-artists">

        <c:forEach var="artist" items="${favoriteList}">
            <div class="artist">
                <div class="artist-name">${artist.artist_name}</div>
                <div class="artist-count">Songs: ${artist.num}</div>
            </div>
        </c:forEach>
    </div>
</body>
</html>

<style>
    .favorite-artists {
        display: flex;
        flex-wrap: wrap;
        gap: 20px; /* 카드 간격 */
        padding: 20px;
        justify-content: center; /* 중앙 정렬 */
    }
    .artist {
        width: 150px; /* 카드 너비 */
        height: 150px; /* 카드 높이 */
        background-color: #f8f9fa;
        border: 1px solid #ddd;
        border-radius: 8px;
        padding: 10px;
        text-align: center;
        font-family: Arial, sans-serif;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        display: flex;
        flex-direction: column;
        justify-content: center;
    }
    .artist-name {
        font-size: 1em; /* 글자 크기 */
        color: #343a40;
        margin-bottom: 5px; /* 글자와 하단 간격 */
        overflow: hidden; /* 넘치는 글자 처리 */
        text-overflow: ellipsis; /* 넘치는 글자 ...로 표시 */
        white-space: nowrap; /* 한 줄로 표시 */
    }
    .artist-count {
        font-size: 0.8em; /* 글자 크기 */
        color: #6c757d;
    }


    .container {
    margin-left: 200px;
    margin-right: 200px;
    background: #FFFFFF;
    display: flex;
    flex-direction: column;
    padding: 120px 0 30px 0;
    box-sizing: border-box;
}
.copy {
    margin-bottom: 24px;
    display: flex;
    box-sizing: border-box;
}
.container-1 {

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
    font-size:  17px;
    line-height:  1.5;
    color: #828282;
    border-radius: 20px;
    width: 500px;
}
.button {
    border-radius: 8px;
    background: #000000;
    display: flex;
    padding: 8px 0.9px 8px 0;
    width: 320px;
    box-sizing: border-box;
    justify-content: center;
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
    font-size:  17px;
    line-height: 1.5;
    color: #828282;
    border-radius: 20px;
}
.label-2 {
    overflow-wrap: break-word;
    font-family:  'Inter';
    font-weight:  500;
    font-size:  17px;
    line-height:  1.5;
    color: #828282;
    border-radius: 20px;
}</style>


<script type="text/javascript">


    const labels = [];
    const data = [];

    <c:forEach var="entry" items="${categories}">
    labels.push('${entry.category}');
    data.push(${entry.num});
    </c:forEach>

    // Chart.js로 차트 생성
    const ctx = document.getElementById('myChart').getContext('2d');
    const myChart = new Chart(ctx, {
        type: 'bar', // 원하는 차트 유형 (bar, line, pie 등)
        data: {
            labels: labels,
            datasets: [{
                label: 'Category Count',
                data: data,
                backgroundColor: 'rgba(75, 192, 192, 0.2)',
                borderColor: 'rgba(75, 192, 192, 1)',
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true,
                    ticks: {
                        stepSize: 2, // Y축 단위를 2로 설정
                        callback: function (value) {
                            if (Number.isInteger(value)) {
                                return value;
                            }
                        }
                    }
                }
            }
        }
    });
</script>