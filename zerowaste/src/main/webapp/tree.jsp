<%@page import="com.model.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>My Tree</title>
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

	UserVO grade = (UserVO) request.getAttribute("grade");
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

								<li><a href="GoMap">지도</a></li>

								<li><a href="GoTree">내 나무</a></li>

								<li><a href="GoBoard">리뷰 & 인증</a></li>
								
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

			<li class="t-center m-b-13"><a href="GoMap" class="txt19">지도</a>
			</li>

			<li class="t-center m-b-13"><a href="GoTree" class="txt19">내 나무
					</a></li>

			<li class="t-center m-b-13"><a href="GoBoard" class="txt19">리뷰 & 인증
					</a></li>
					
			<li class="t-center m-b-13"><a href="GoRegi" class="txt19">매장 등록
					</a></li>

			<li class="t-center">
				<!-- Button3 --> <a href="GoLogout"
				class="btn3 flex-c-m size13 txt11 trans-0-4 m-l-r-auto"> 로그아웃 </a>
			</li>
		</ul>
	</aside>

	<!-- Title Page -->
	<section class="bg-title-page flex-c-m p-t-160 p-b-80 p-l-15 p-r-15"
		style="background-image: url(images/bg-title-page-04.jpg);">
		<h2 class="tit6 t-center">나무야 자라나라 ! !</h2>
	</section>


	<!-- Zero Waste -->
	<section class="bg2-pattern p-t-80 p-b-80 t-center p-l-15 p-r-15">

		<!-- DB데이터 : 사용자 이름 받아오기 -->
		<p class="tree txt33">
			<strong><%=login.getNickname()%></strong>님의 나무입니다!
			<br>
			🍀 나무를 키워주세요 🍀</p>
		<br>
		<%
		if (login.getPoint() >= 7) {
		%>
		<div class="wrap-btn-booking flex-c-m m-t-6">
			<!-- Button3 -->
			<a href="GoCoupon" class="btn3 flex-c-m size13 txt11 trans-0-4">쿠폰 받으러 가기</a>
		</div>
		<%
		}
		%>

		<!-- 나무 이미지 넣을 div 태그 -->
		<div id="tree">
			<%
			if (grade.getPoint() == 0) {
			%>
			<img src="images/tree_1.gif" alt="IMG-OUR">
			<%
			} else if (grade.getPoint() == 1) {
			%>
			<img src="images/tree_2.gif" alt="IMG-OUR">
			<%
			} else if (grade.getPoint() == 2) {
			%>
			<img src="images/tree_3.gif" alt="IMG-OUR">
			<%
			} else if (grade.getPoint() == 3) {
			%>
			<img src="images/tree_4.gif" alt="IMG-OUR">
			<%
			} else if (grade.getPoint() == 4) {
			%>
			<img src="images/tree_5.gif" alt="IMG-OUR">
			<%
			} else if (grade.getPoint() == 5) {
			%>
			<img src="images/tree_6.gif" alt="IMG-OUR">
			<%
			} else if (grade.getPoint() == 6) {
			%>
			<img src="images/tree_7.gif" alt="IMG-OUR">
			<%
			} else {
			%>
			<img src="images/gift.gif" alt="IMG-OUR">
			<%
			}
			%>
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
