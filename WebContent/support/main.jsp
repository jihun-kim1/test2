<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main</title>
<link rel="stylesheet"
   href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
   integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
   crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.js">
        </script>
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
   integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
   crossorigin="anonymous"></script>
<script
   src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
   integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
   crossorigin="anonymous"></script>
<style>
@import
   url('https://fonts.googleapis.com/css?family=Gothic+A1|Nanum+Gothic|Nanum+Myeongjo|Noto+Sans+KR:400,700,900|Noto+Serif+KR&display=swap')
   ;
/*          font-family: 'Noto Sans KR', sans-serif;
            font-family: 'Nanum Myeongjo', serif;
            font-family: 'Gothic A1', sans-serif;
            font-family: 'Noto Serif KR', serif;
            font-family: 'Nanum Gothic', sans-serif;  */
@font-face {
   font-family: 'GoyangIlsan';
   src:
      url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/GoyangIlsan.woff')
      format('woff');
   font-weight: normal;
   font-style: normal;
}

@font-face {
   font-family: 'SunBatang-Medium';
   src:
      url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_eight@1.0/SunBatang-Medium.woff')
      format('woff');
   font-weight: normal;
   font-style: normal;
}

/*       ---------------------------------------     */
.navbar {
   height: 125px;
}

.nav-link {
   background-color: white;
}

#upnavi {
   position: relative;
   margin: 3px;
   float: right;
   color: #717171;
}

.mainSmallMenu {
   text-decoration: none;
   text-decoration-line: none;
   color: #717171;
}

.mainSmallMenu:hover {
   text-decoration-line: none;
   color: #35add1;
}

.btn-outline-success {
   background-color: #47acac;
   border: none;
   color: #fafafa;
}

/*      --------------------------------------------------      */
* {
   margin: 0;
   padding: 0;
   /*                font-family: 'Noto Sans KR', sans-serif; */
   font-family: 'GoyangIlsan';
}

.d1, .checkmate {
   background-size: cover;
   height: 100vh;
   background-attachment: fixed;
}

.a1 {
   background-image: url(resources/images/s1.jpg);
   min-width: 1000px
}

.a2 {
   background-image: url(resources/images/s2.jpg);
}

.a3 {
   background-image: url(resources/images/s3.jpg);
}

#nav1 {
   height: 20vw;
   max-height: 300px;
   min-height: 250px;
   min-width: 1000px;
   background-color: #57abb5;
}

#nav-container1 {
   font-family: 'Noto Sans KR', sans-serif;
   display: flex;
   flex-direction: row;
   width: 100%;
   height: 100%;
   margin: 0;
   padding: 0;
   background-color: #6faabf;
   list-style-type: none;
   font-size: 20px;
}

.nav-item1 {
   padding: 10px;
   cursor: pointer;
   text-align: center;
   max-height: 100%;
   min-width: 150px;
   text-shadow: 2px 2px 2px #9b9b9b;
   margin: auto;
   float: left;
   width: 18%;
   max-width: 300px;
   max-height: 300px;
   /*                border-right: 1px solid white;*/
   font-size: 16px;
}

.nav-item1 a {
   text-align: center;
   text-decoration: none;
   color: white;
}

.nav-item1 a.current {
   color: black;
}

.nav-item1 a:hover:not (.current ){
   
}

.nav-item1:last-child {
   border-right: none;
}

.nav-item1:hover {
   background-color: #79b5cb;
   transition-duration: 0.4s;
}

.navNo:hover {
   background-color: #6faabf;
   cursor: auto;
}

#title_1 {
   height: 10vw;
   line-height: 10vw;
   min-height: 120px;
   max-height: 120px;
   margin: auto;
   /*                background-color: #3198a5;*/
   min-width: 1150px;
   background-color: #6faabf;
   color: white;
   font-weight: 400;
   text-align: center;
   text-shadow: 2px 2px 2px #646464;

   /*                text-shadow: 2px 2px 2px #646464;*/
}

/*  -----------------------------------------------------------------------          */
img {
   width: 10vw;
}

.row {
   font-family: 'Noto Sans KR', sans-serif;
   display: flex;
   flex-direction: row;
   width: 100%;
   height: 20vw;
   max-height: 200px;
   min-height: 160px;
   min-width: 800px;
   margin: 0;
   padding: 0;
   background-color: #37a9b7;
   list-style-type: none;
   font-size: 20px;
   text-align: center;
}

.row1 {
   font-family: 'Noto Sans KR', sans-serif;
   display: flex;
   flex-direction: row;
   width: 100%;
   height: 20vw;
   max-height: 200px;
   min-height: 160px;
   min-width: 800px;
   margin: 0;
   padding: 0;
   background-color: #4f64ba;
   list-style-type: none;
   font-size: 20px;
   text-align: center;
}

.col {
   
}

.inner {
   background-color: #4f64ba;
   min-height: 00px;
}

#titleLogo {
   width: 200px;
   margin-top: -50px;
}

a {
   text-decoration: none;
   color: white
}

h1, h2 {
   color: white;
   margin: auto;
}

.col {
   width: 20%;
}

img {
   width: 140px;
}

.chess {
   float: left;
   width: 33.3%;
   height: 100%;
   background-size: cover;
}

.chessboard {
   height: 400px;
}

h3 {
   font-family: 'Noto Sans KR', sans-serif;
   color: #37a9b7;
}

h4, p {
   font-family: 'Noto Sans KR', sans-serif;
   padding-top: 135px;
   color: white;
}

.chess_sheet {
   text-align: center;
   height: 100%;
   background-color: #00000040;
}

.chess_sheet_over {
   text-align: center;
   height: 100%;
   background-color: #00000090;
}

.chess>a {
   text-decoration: none;
}

.checkmate {
   transition: width 2s;
   height: 100%;
   min-width: 1200px;
}

.chess_sheet_over {
   display: none;
}

.chess:hover .chess_sheet_over {
   display: block;
}

.chess:hover .chess_sheet {
   display: none;
   transition: width 2s;
}

.chess_sheet_over, .chess_sheet {
   
}

button[id^=login] {
   width: 250px;
   height: 40px;
   background-color: white;
   color: black;
   border-radius: 5px;
   border: none;
}

/*        ------------------------ 하단 --------------------------    */
.policyContainer {
   background-color: #b1b1b1;
   min-width: 1200px;
}

#policyTitle1 {
   min-width: 1200px;
   color: #747474;
   height: 350px;
   /*                background-color: #363333;*/
   background-color: white;
}

#policyTitle2 {
   color: #4e4e4e;
   text-align: center;
   height: 100px;
   line-height: 100px;
   width: 100%;
   min-width: 1200px;
}

#policy1 {
   margin-top: 100px;
   margin-left: 100px;
   float: left;
}

#policy2 {
   margin: 100px;
   width: 300px;
   float: right;
   line-height: 30px;
}

.poline {
   color: #747474;
}

.poline:hover {
   text-decoration: none;
   color: #d6c304;
}
</style>
</head>
<body>
   <c:choose>
      <c:when test="${loginInfo==null}">
         <div id=upnavi>
            <a href="login.jsp" class=mainSmallMenu>로그인</a> <a href="signup.jsp"
               class=mainSmallMenu>회원가입</a> <a href="login_my.jsp"
               class=mainSmallMenu>마이페이지</a>
         </div>
      </c:when>
      <c:otherwise>
         <div id=upnavi>
            ${loginInfo.name} 님 환영합니다! <a href="mypage.jsp" class=mainSmallMenu>마이페이지</a>
            <a href="logout.mem" class=mainSmallMenu>로그아웃</a>
         </div>
      </c:otherwise>
   </c:choose>

   <nav class="navbar navbar-expand-lg navbar-light navbar-custom"
      style="width: 100%">
      <a class="navbar-brand" href="#"><img
         src="resources/images/logo_n.png"
         style="width: 250px; margin-top: -40px;">　MSG</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse"
         data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
         aria-expanded="false" aria-label="Toggle navigation">
         <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavDropdown">
         <ul class="navbar-nav">
            <li class="nav-item active"><a class="nav-link" href="#">
               HOME <span class="sr-only">(current)</span>
            </a></li>
            <li class="nav-item"><a class="nav-link" href="#">실종아동검색</a></li>
            <li class="nav-item dropdown"><a
               class="nav-link dropdown-toggle" href="#"
               id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"
               aria-haspopup="true" aria-expanded="false">실종아동등록 </a>
               <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                  <a class="dropdown-item" href="#">Action</a> <a
                     class="dropdown-item" href="#">Another action</a> <a
                     class="dropdown-item" href="#">Something else here</a>
               </div></li>

            <li class="nav-item dropdown"><a
               class="nav-link dropdown-toggle" href="#"
               id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"
               aria-haspopup="true" aria-expanded="false">자원봉사　</a>
               <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                  <a class="dropdown-item" href="#">Action</a> <a
                     class="dropdown-item" href="#">Another action</a> <a
                     class="dropdown-item" href="#">Something else here</a>
               </div></li>
            <button class="btn btn-outline-success" type="button">후원하기</button>
         </ul>
      </div>
   </nav>


   <div class="d1 a1">
      <div
         style="position: relative; top: 450px; left: 50px; font-size: 40px; width: 800px;">
         <b>실종 아동이 가족의 품으로 돌아갈 수 있도록<br>관심과 힘을 보내 주세요
         </b> <br> <span style="color: white; font-size: 30px;">당신의 <span
            style="color: #3853c3;"><b>공유</b></span>가 희망이 됩니다
         </span>
      </div>
   </div>


   <div id=title_1>
      <h1
         style="font-family: 'Noto Sans KR', sans-serif; font-weight: 600; height: 100px; line-height: 120px;">여러분의
         관심은 실종된 아이와 가족을 찾을 수 있는 유일한 희망입니다</h1>
   </div>
   <nav id=nav1>
      <ul id="nav-container1">
         <li class="nav-item1"><a href=""><img src="resources/images/house.svg"
               style="max-width: 150px"><br>
            <h2>함께하기</h2></a></li>
         <li class="nav-item1"><a href=""><img src="resources/images/photo.svg"><br>
            <h2>아동찾기</h2></a></li>
         <li class="nav-item1 navNo" style="width: 200px"><img
            src="resources/images/logo_blue.png" style="width: 200px" id=titlelogo></li>
         <li class="nav-item1"><a href=""><img
               src="resources/images/danger_sign.svg"><br>
            <h2>제보하기</h2></a></li>
         <li class="nav-item1"><a href=""><img src="resources/images/heart.svg"><br>
            <h2>후원하기</h2></a></li>
      </ul>
   </nav>


   <div class="d1 a2"></div>


   <div class=checkmate>

      <div class=chessboard>

         <div class=chess
            style="background-image: url(resources/images/z1.jpg)">
            <!-- 한 개의 큰 틀 -->
            <a href="#">
               <div class=chess_sheet>
                  <!-- 호버 전 -->
                  <h4>RESOURCES FOR EDUCATIORS</h4>
                  <h3>Education Portal</h3>
               </div>
               <div class=chess_sheet_over>
                  <!-- 호버 후 -->
                  <p>
                     We have partnerdd with European football team, AS Roma,<br>
                     to display missing children
                  </p>
                  <p style="color: #37a9b7;">LEARN MORE ></p>
               </div>
            </a>
         </div>

         <div class=chess
            style="background-image: url(resources/images/z5.jpg)">
            <!-- 한 개의 큰 틀 -->
            <a href="#">
               <div class=chess_sheet>
                  <!-- 호버 전 -->
                  <h4>
                     BUILDING TECHNOLOGY<br> TO FIND MISSING CHILDREN
                  </h4>
                  <h3>GMCNgine</h3>
               </div>
               <div class=chess_sheet_over>
                  <!-- 호버 후 -->
                  <p>Developing systems to bring children home</p>
                  <p style="color: #37a9b7;">LEARN MORE></p>
               </div>
            </a>
         </div>

         <div class=chess
            style="background-image: url(resources/images/z6.jpg)">
            <!-- 한 개의 큰 틀 -->
            <a href="#">
               <div class=chess_sheet>
                  <!-- 호버 전 -->
                  <h4>DEPLOYING TOOLS AND TECHNOLOGY</h4>
                  <h3>Global Training Academy</h3>
               </div>
               <div class=chess_sheet_over>
                  <!-- 호버 후 -->
                  <p>
                     Research, Legislation, Schools, Healthcare, Finance,<br> Law
                     Enforcement
                  </p>
                  <p style="color: #37a9b7;">OUR PROGRAMS ></p>
               </div>
            </a>
         </div>

      </div>



      <div class=chessboard>
         <div class=chess
            style="background-image: url(resources/images/z2.jpg)">
            <!-- 한 개의 큰 틀 -->
            <a href="#">
               <div class=chess_sheet>
                  <!-- 호버 전 -->
                  <h4>PROVIDING RESOURCES TO EDUCATE</h4>
                  <h3>Education Portal</h3>
               </div>
               <div class=chess_sheet_over>
                  <!-- 호버 후 -->
                  <p>
                     The GMCNgine uses Artificial Intelligence and Machine<br>
                     Learing to create
                  </p>
                  <p style="color: #37a9b7;">GET INVOLVED ></p>
               </div>
            </a>
         </div>

         <div class=chess
            style="background-image: url(resources/images/z3.jpg)">
            <!-- 한 개의 큰 틀 -->
            <a href="#">
               <div class=chess_sheet>
                  <!-- 호버 전 -->
                  <h4>MOBILIZING THE GLOBAL COMMUNITY</h4>
                  <h3>Global Missing children's Center</h3>
               </div>
               <div class=chess_sheet_over>
                  <!-- 호버 후 -->
                  <p>Developing systems to bring children home</p>
                  <p style="color: #37a9b7;">LEARN MORE></p>
               </div>
            </a>
         </div>

         <div class=chess
            style="background-image: url(resources/images/z8.jpg)">
            <!-- 한 개의 큰 틀 -->
            <a href="#">
               <div class=chess_sheet>
                  <!-- 호버 전 -->
                  <h4>ADDRESSING THE IMPACT OF ABUSE</h4>
                  <h3>Our Programs</h3>
               </div>
               <div class=chess_sheet_over>
                  <!-- 호버 후 -->
                  <p>
                     Research, Legislation, Schools, Healthcare, Finance,<br> Law
                     Enforcement
                  </p>
                  <p style="color: #37a9b7;">OUR PROGRAMS ></p>
               </div>
            </a>
         </div>

      </div>


   </div>

   <!--
<div style="background-color: #5c5c5c; height: 100px;">

</div>
-->


      <!-- 하단 -->
   <div class=policyContainer>
      <div id=policyTitle1>
         <div id=policy1>
            <img src="resources/images/logo_n.png"
               style="width: 200px; margin-left: -25px;"><br>
            <br> +82 10 0000 0000<br> info@msg.missingchildren<br>
            Daeil-building 3F, 120 Namdaemun-ro Jung-gu Seoul Republic of Korea<br>

         </div>
         <div id=policy2>
            <a href="#" class=poline>About Us</a><br> <a href="#"
               class=poline>Careers & Internships</a><br> <a href="#"
               class=poline onclick="window.open('policy.jsp','policy','width=850,height=630,location=no,status=no,scrollbars=no'); return false;">Private Policy</a><br>
               <a href="#" class=poline onclick="window.open('policy.jsp','policy','width=870,height=650,location=no,status=no,scrollbars=no'); return false;">
               Terms of Use</a><br> <a href="#" class=poline>Feedback</a><br>
         </div>
      </div>

      <div id=policyTitle2>Copyright © 2019 KH Missing children Go
         home ㅣ Created by MSG All Right Reserved</div>
   </div>

</body>
</html>