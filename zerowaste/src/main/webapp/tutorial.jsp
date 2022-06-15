<%@page import="com.model.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Tutorial</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="images/icons/favicon.png" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/themify/themify-icons.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/slick/slick.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/lightbox2/css/lightbox.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body class="animsition">
	<%
	UserVO login = (UserVO) session.getAttribute("login");
	%>
	<!-- Header -->
	<header>
		<!-- Header desktop -->
		<div class="wrap-menu-header gradient1 trans-0-4">
			<div class="container h-full">
				<div class="wrap_header trans-0-3">
					<!-- Logo -->
					<div class="logo">
						<a href="GoMain"> <img src="images/icons/logo.png"
							alt="IMG-LOGO" data-logofixed="images/icons/logo2.png">
						</a>
					</div>

					<!-- Menu -->
					<div class="wrap_menu p-l-45 p-l-0-xl">
						<nav class="menu">
							<ul class="main_menu">
								<li><a href="GoMain">홈</a></li>

								<li><a href="GoTuto">튜토리얼</a></li>

								<li><a href="GoMap">지도</a></li>

								<li><a href="GoTree">내 나무</a></li>

								<li><a href="GoBoard?page=1">리뷰 & 인증</a></li>

								<li><a href="GoRegi">매장 등록</a></li>
							</ul>
						</nav>
					</div>

					<!-- Social -->
					<div class="social flex-w flex-l-m p-r-20">
						<button class="btn-show-sidebar m-l-33 trans-0-4"></button>
					</div>
				</div>
			</div>
		</div>
	</header>

	<!-- Sidebar -->
	<aside class="sidebar trans-0-4">
		<!-- Button Hide sidebar -->
		<button class="btn-hide-sidebar ti-close color0-hov trans-0-4"></button>

		<!-- - -->
		<ul class="menu-sidebar p-t-95 p-b-70">
			<li class="t-center m-b-13"><a href="GoMain" class="txt19">홈</a>
			</li>

			<li class="t-center m-b-13"><a href="GoTuto" class="txt19">튜토리얼</a>
			</li>

			<li class="t-center m-b-13"><a href="GoMap" class="txt19">지도</a>
			</li>

			<li class="t-center m-b-13"><a href="GoTree" class="txt19">내
					나무 </a></li>

			<li class="t-center m-b-13"><a href="GoBoard?page=1"
				class="txt19">리뷰 & 인증 </a></li>

			<li class="t-center m-b-13"><a href="GoRegi" class="txt19">매장
					등록 </a></li>

			<li class="t-center">
				<!-- Button3 --> <a href="GoLogout"
				class="btn3 flex-c-m size13 txt11 trans-0-4 m-l-r-auto"> 로그아웃 </a>
			</li>
		</ul>
	</aside>

	<!-- Title Page -->
	<section class="bg-title-page flex-c-m p-t-160 p-b-80 p-l-15 p-r-15"
		style="background-image: url(images/bg-title-page-04.jpg);">
		<h2 class="tit6 t-center texttitle">내 나무 & 쿠폰</h2>
	</section>


	<!-- Zero Waste -->
	<section class="bg2-pattern t-center p-l-15 p-r-15"
		style="background-color: #fffff0;">

		<!-- DB데이터 : 사용자 이름 받아오기 -->

		<br>


		<!-- 나무 이미지 넣을 div 태그 -->
		<div class="tuto" style="width: 100%; height: 100%;">
			<div class="p-l-15 p-r-15 dis-inline-block">
				<img class="p-l-15 p-r-15 dis-inline-block" style="width: 700px; height: 500px;"
					src="images/logo2.png" alt="IMG-OUR">
			</div>
			<div class="p-l-15 p-r-15 dis-inline-block p-t-30"
				style="width: 500px; height: 500px;">
				<h2>여따 담아조 란?</h2>
				<span>제로웨이스트 라이프 스타일을 실천 할 수 있게 다회용기 포장을 지원하는 매장을 안내하는 서비스를
					지원합니다.</span>
					
				<h2>여따 담아조 사용방법!!</h2>
				
				<p align="left">	
				<span>stap. 1   </span>
				<span>매장보러가기 클릭 후 원하는 매장위치를 검색 및 정보를 확인한다.</span>
				</p>
				<br>
				
				<p align="left">	
				<span>stap. 2   </span>
				<span>본인의 용기를 가지고 매장에 가서 음식을 포장해온다.</span>
				</p>
				<br>
				
				<p align="left">	
				<span>stap. 3   </span>
				<span>집에와서 음식사진을 찍고 맛있게 먹는당</span>
				</p>
				<br>
				
				<p align="left">	
				<span>stap. 4   </span>
				<span>영수증 사진과 음식사진을 리뷰 & 인증 페이지에 등록한다.</span>
				<span>(꼭 두개의 사진을 다 업로드한다.)</span>
				</p>
				<br>
				
				<p align="left">	
				<span>stap. 5   </span>
				<span>내 나무가 자라는걸 확인 후 쿠폰을 사용한드아</span>
				</p>
				<br>
				
				<p align="left">	
				<span>stap. 6   </span>
				<span>여따 담아조를 꾸준하게 이용하여 지구를 지킨닷!!</span>
				</p>
				
				<table align="center">
				<tr align="center">여따 담아조 사용방법!!</tr>
				</table>
				

			</div>

		</div>

	</section>

	<!-- Back to top -->
	<div class="btn-back-to-top bg0-hov" id="myBtn">
		<span class="symbol-btn-back-to-top"> <i
			class="fa fa-angle-double-up" aria-hidden="true"></i>
		</span>
	</div>

	<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript"
		src="vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/bootstrap/js/popper.js"></script>
	<script type="text/javascript"
		src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript"
		src="vendor/daterangepicker/moment.min.js"></script>
	<script type="text/javascript"
		src="vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/slick/slick.min.js"></script>
	<script type="text/javascript" src="js/slick-custom.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/parallax100/parallax100.js"></script>
	<script type="text/javascript">
		$('.parallax100').parallax100();
	</script>
	<!--===============================================================================================-->
	<script type="text/javascript"
		src="vendor/countdowntime/countdowntime.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript"
		src="vendor/lightbox2/js/lightbox.min.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/isotope/isotope.pkgd.min.js"></script>
	<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>
