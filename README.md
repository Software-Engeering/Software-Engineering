<div align="center">
<h1>[2024] 소프트웨어 공학 8조 팀프로젝트</h1>
<h3>Spotify 데이터셋을 이용한 곡 추천 서비스</h3>
</div>
<br>

## 프로젝트 개요
<br>
- 해당 프로젝트는 Spotify 데이터셋을 이용한 곡 추천 서비스입니다.<br>
- 카테고리별로 음정, 템포, 분위기 등을 고려하여 플레이리스트를 만들 수 있습니다.<br>
- 플레이스트에 대한 만족 여부를 반영하여 새로운 곡 10개를 추가할 수 있습니다.<br>
- 프로필 화면에서 자신의 성향과 좋아하는 아티스트를 확인 할 수 있습니다.<br>

<br>

## 팀원 구성

<div align="center">

| **유승욱** | **송희준** | **이용성** | **이동진** |
| :------: |  :------: | :------: | :------: |
| <img src="https://avatars.githubusercontent.com/u/143994426?v=4" height=150 width=150>| <img src="https://avatars.githubusercontent.com/u/74843137?v=4" height=150 width=150> | <img src="https://avatars.githubusercontent.com/u/143994426?v=4" height=150 width=150> | <img src="https://avatars.githubusercontent.com/u/84756846?v=4" height=150 width=150> <br/> |

</div>

<br>

## 개발 환경

- Front : HTML, CSS, JavaScript, JSP
- Back-end : Spring
- 버전 및 이슈관리 : Github, Github Project
- 협업 툴 : Discord, Notion
- 데이터베이스: Mysql
- 디자인 : Figma
<br>

### 개발 기간

- 전체 개발 기간 : 2024-05 ~ 2024-06


<br>

## 페이지별 기능

### [로그인]
- 이메일 주소와 비밀번호를 입력하면 입력창에서 바로 유효성 검사가 진행되고 통과하지 못한 경우 다시 초기 화면으로 돌아옵니다.
- 로그인 버튼 클릭 시 이메일 주소 또는 비밀번호가 일치하지 않을 경우에는 초기 화면으로 돌아가며, 로그인에 성공하면 메인 화면으로 이동합니다.

| 로그인 |
|----------|
![스크린샷 2024-06-23 150353](https://github.com/Software-Engeering/Software-Engineering/assets/66588512/c3fb1c31-fe6d-4286-8209-29a315787401)


<br>

### [회원가입]
- 이메일 주소와 비밀번호를 입력하면 입력창에서 바로 유효성 검사가 진행되고 통과하지 못한 경우 각 경고 문구가 입력창 하단에 표시됩니다.
- 작성이 완료된 후 버튼을 클릭하면 로그인 화면이 나타납니다.

| 회원가입 |
|----------|
![image](https://github.com/Software-Engeering/Software-Engineering/assets/84756846/01fcbc65-ce4c-4aaa-afbb-9396d2e40ae3)



<br>


### [메인 화면]
- 자신이 만든 플레이리스트를 확인할 수 있습니다.
- 각 플레이리스트 화면에 있는 + 버튼을 클릭하고 카테고리를 선택해서 플레이스트를 추가하거나 각 플레이리스트 우측 상단에 나타나는 빨간색 - 버튼으로 삭제 할 수 있습니. 

| 메인 화면 |
|----------|
![스크린샷 2024-06-23 151404](https://github.com/Software-Engeering/Software-Engineering/assets/66588512/8c0be592-d4ff-41cc-bcec-0c2ecc153b79)


<br>

### [카테고리 설정]
- 카테고리를 선택하여 플레이리스트를 생성할 수 있습니다.

| 카테고리 설정 |
|----------|
![스크린샷 2024-06-23 152007](https://github.com/Software-Engeering/Software-Engineering/assets/66588512/0232173b-4b13-4ade-bc01-c704f270a004)


<br>

### [플레이리스트 음악 리스트]
- 플레이 리스트 안에서 사용자가 주어진 10곡이 만족되면 Like 버튼을 누르게 된다. 이후 비슷한 느낌의 곡을 10곡 추가할 수 있습니다. 
- 플레이 리스트 안에서 사용자가 주어진 10곡이 불만족스럽다면 Dislike 버튼을 누르게 된다. 버튼을 누르면 원래있던 10곡을 삭제하고 새로운 곡 10곡을 추가할 수 있습니다.
- 플레이리스트의 내부의 곡 정보들을 확인할 수 있습니다.
- 해당 음악을 유튜브를 통해 감상할 수 있습니다.

| 플레이리스트 음악 리스트 |
|----------|
![image](https://github.com/Software-Engeering/Software-Engineering/assets/84756846/82ffbf01-1f0e-4c43-ad1c-eb142cf171d1)




<br>

### [프로필 화면]
- 사용자 정보를 수정할 수 있고 자신의 성향과 좋아하는 아티스트를 확인 할 수 있습니다.
- 해당 아티스트를 클릭하면, 상세 정보를 웹에서 확인할 수 있습니다.


| 프로필 화면 |
|----------|
![스크린샷 2024-06-23 152732](https://github.com/Software-Engeering/Software-Engineering/assets/66588512/e455a6f2-c075-435d-b72d-a74fcbdcb87b)


<br>

