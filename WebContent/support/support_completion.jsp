<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Page</title>
<link rel="stylesheet" href="../resource/css/style.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>

<style>
@font-face {
	font-family: 'BMEULJIRO';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_twelve@1.0/BMEULJIRO.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

.mya {
	color: black;
}

.mya:hover {
	text-decoration: none;
}

.procedure {
	float: left;
	width: 33.3%;
	height: 80px;
	text-align: center;
	line-height: 80px;
	margin: 0px;
	background-color: #66B5D0;
	color: white;
	border-radius: 10px;
	padding-top: 5px;
}

.ul {
	height: 400px;;
	float: left;
	margin: 0px;
	border: 1px solid #99a0a2;
}

#form {
	border: 1px solid black;
	margin: auto;
	width: 100%;
}

.element {
	width: 30%;
	text-align: center;
	float: left;
	height: 100px;
	line-height: 100px;
	border-bottom: 1px solid #f4f2f2;
	background-color: #eaeef0;
}

.value {
	width: 70%;
	float: left;
	overflow: hidden;
	height: 100px;
	line-height: 100px;
	border-bottom: 1px solid #f4f2f2;
	text-align: center;
}

input[type=text] {
	width: 60%;
	height: 30%;
	text-align: center;
}

.a {
	height: 50px;
	border-bottom: 1px solid #f4f2f2;
	border-radius: 10px;
}

.b {
	float: left;
	height: 100%;
}

#pay {
	width: 200px;
	height: 80px;
	background-color: #66B5D0;
	box-shadow: none;
	border: none;
	font-size: 25px;
	font-family: 'GoyangIlsan';
	color: white;
	border-radius: 10px;
}
</style>

</head>
<body>
	<!-- ----- navi 시작 ------------------------------------------  -->
	<div id=upnavi>
		<a href="#" class=mainSmallMenu>로그인</a> <a href="#"
			class=mainSmallMenu>회원가입</a> <a href="#" class=mainSmallMenu>마이페이지</a>
	</div>

	<nav class="navbar navbar-expand-lg navbar-light" style="width: 100%">
		<a class="navbar-brand" href="#"><img src="../resource/images/policylogo.png"
			style="width: 130px;"> LOGO</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavDropdown">
			<ul class="navbar-nav">
				<li class="nav-item active"><a class="nav-link" href="#">HOME
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#">실종아동검색</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#"
					id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"> 실종아동등록 </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<a class="dropdown-item" href="#">Action</a> <a
							class="dropdown-item" href="#">Another action</a> <a
							class="dropdown-item" href="#">Something else here</a>
					</div></li>

				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#"
					id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"> 자원봉사 </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<a class="dropdown-item" href="#">Action</a> <a
							class="dropdown-item" href="#">Another action</a> <a
							class="dropdown-item" href="#">Something else here</a> <a
							class="dropdown-item" href="#">Something else here</a>
					</div></li>
				<button class="btn btn-outline-success" type="button">후원하기</button>
			</ul>
		</div>
	</nav>
	<!-- ----- navi 끝 ------------------------------------------  -->

	<!-- ----- quick menu 시작 ------------------------------------------  -->
	<div id="container0" class="col-1" style="width: 20%;">
		<div class="menu0">
			<img class="quick_menu_img" src="../resource/images/login-64.png" alt="">
			<p>로그인</p>
		</div>
		<div class="menu0">
			<a href=""> <img class="quick_menu_img"
				src="../resource/images/active-search-64.png" alt="">
				<p>실종아동찾기</p>
			</a>
		</div>
		<div class="menu0">
			<img class="quick_menu_img" src="../resource/images/reviewer-64.png" alt="">
			<p>실종아동등록</p>
		</div>
		<div class="menu0">
			<img class="quick_menu_img" src="../resource/images/banknotes-64%20(1).png"
				alt="">
			<p>후원하기</p>
		</div>
		<div class="menu0">
			<img class="quick_menu_img" src="../resource/images/text-file-4-64.png" alt="">
			<p>실종아동등록</p>
		</div>
		<div class="menu0">
			<img class="quick_menu_img" src="../resource/images/chat-4-64%20(1).png" alt="">
			<p>문의하기</p>
		</div>
	</div>
	<!-- ----- quick menu 끝 ------------------------------------------  -->











	<!-- ----- 여기는 중간 화면 이런 식으로 참고만 해 주세요 시작 ---------------  -->
	<div style="width: 100%; height: 1000px; position: relative;">
		<div
			style="width: 300px; height: 100%; float: left; padding-left: 30px; line-height: 20px;"
			class="col-2">
			<div style="height: 100px; width: 300px; padding-top: 30px;">
				<h3>마이 페이지</h3>
			</div>
			<p>
				<a href="#" class=mya>나의 정보</a>
			</p>
			<p>
				<a href="#" class=mya>내 신고 내역</a>
			</p>
			<p>
				<a href="#" class=mya>후원 내역</a>
			</p>

		</div>
		<div
			style="width: 60%; height: 1050px; float: left; position: relative; left: 5%; border-bottom: 1px solid black;"
			class="col-9">
			<div
				style="width: 100%; border-bottom: 1px solid black; padding-top: 30px">
				<p style="font-size: 30px; line-height:">후원하기</p>
			</div>
			<div
				style="width: 100%; height: 60px; position: relative; top: 50px; overflow: hidden;">
				<div class="procedure" style="background-color: #cdd0d1;">
					<h5>
						STEP1.<br>후원신청
					</h5>
				</div>
				<div class="procedure" style="background-color: #cdd0d1;">
					<h5>
						STEP2.<br>신청서 작성
					</h5>
				</div>
				<div class="procedure">
					<h5>
						STEP3.<br>신청 완료
					</h5>
				</div>
			</div>
			<div style="position: relative; top: 100px;">
				<div style="height: 50%; overflow: hidden;">
					<div style="text-align: center; height: 100%;">
						<img src="../resource/images/thank.png" style="margin: auto;">
					</div>
				</div>
				<div
					style="border-radius: 15px; background-color: antiquewhite; text-align: center; width: 72%; margin: auto;">
					<br>
					<h3 style="font-family: 'BMEULJIRO';">함께하는 사랑이 세상을 아름답게 만들어
						갑니다.</h3>
					<br>
					<h4 t>아직도 우리 곁에는 도움을 필요로 하는 실종아동들이 많습니다.</h4>
					<h5>
						<br>작은 관심과 사랑에서부터 시작하는 사랑의 실천!<br>사랑은 나눌수록 커지고 고통은 나눌수록
						작아지는 것이라고 합니다.<br>
						<br>후원자님의 따듯한 마음과 아름다운 손길로 어려운 실종아동가족에게 행복한 웃음을 더 많이 전해주시길
						기대합니다.<br>보내주신 후원금은 도움을 필요로 하는 실종아동기관에서 정직하고 성실하게 사용 할 것을
						약속드립니다.<br>
					</h5>
					<br>
					<h4 style="font-family: 'BMEULJIRO';">아름다운 세상을 만들기 위한 꿈, 그 꿈을
						변화시키는 것은 바로 여러분! 후원자님입니다.감사합니다.</h4>
					<br>
				</div>
			</div>



		</div>
	</div>
	<!-- ----- 여기는 중간 화면 이런 식으로 참고만 해 주세요 끝 ---------------  -->










	<!-- ----- footer 시작 ------------------------------------------  -->
	<div class=policyContainer>
		<div id=policyTitle1>
			<div id=policy1>
				<img src="../resource/images/policylogo.png" style="width: 140px;"><br>
				<br> +82 10 0000 0000<br> info@msg.missingchildren<br>
				Daeil-building 3F, 120 Namdaemun-ro Jung-gu Seoul Republic of Korea<br>

			</div>
			<div id=policy2>
				<a href="#" class=poline>About Us</a><br> <a href="#"
					class=poline>Careers & Internships</a><br> <a href="#"
					class=poline>Private Policy</a><br> <a href="#" class=poline>Terms
					of Use</a><br> <a href="#" class=poline>Feedback</a><br>
			</div>
		</div>

		<div id=policyTitle2>Copyright © 2019 KH Missing children Go
			home ㅣ Created by MSG All Right Reserved</div>
	</div>
	<!-- ----- footer 끝 ------------------------------------------  -->

</body>
</html>