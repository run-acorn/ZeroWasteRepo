<%@page import="com.model.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Coupon</title>
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
<body class="animsition" onload="noBack();"
	onpageshow="if(event.persisted) noBack();" onunload="">
	<%
	UserVO login = (UserVO) session.getAttribute("login");
	%>
	<!-- Header -->
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

								<li><a href="GoMap">매장 보러가기</a></li>

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

			<li class="t-center m-b-13"><a href="GoMap" class="txt19">매장 보러가기</a>
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
		style="background-image: url(images/bg-title-page-07.jpg);">
		<h2 class="tit6 t-center texttitle">쿠폰 받기</h2>
	</section>

	<!-- Gallery -->
	<div class="bread-crumb bo5-b p-t-17 p-b-17">
		<div class="wrap-btn-booking flex-c-m m-t-6">
			<p class="tree txt33 t-center">
				<strong> ※ 주의사항 ※</strong> 
				<br> <span> 쿠폰을 한번 받으면 나무는 다시 초기화되므로 신중히 선택해 주세요! </span>
			</p>
		</div>
	</div>

	<%
	if (login.getPoint() == 1) {
	%>

	<div class="section-gallery p-t-20 p-b-100">

		<div class="wrap-gallery isotope-grid flex-w p-l-25 p-r-25">

			<!-- - -->
			<div
				class="item-gallery isotope-item bo-rad-10 hov-img-zoom events guests">
				<img src="images/coupon_1000.jpg" alt="IMG-GALLERY"> <br>
				<br>
				<div class="wrap-btn-booking flex-c-m m-l-r-auto">
					<!-- Button3 -->
					<a href="CouponService"
						class="btn3 flex-c-m size13 txt11 trans-0-4">쿠폰 받기</a>
				</div>
				<br> <br> <br>
			</div>

			<!-- - -->
			<div
				class="item-gallery isotope-item bo-rad-10 hov-img-zoom events guests">
				<img src="images/coupon_2000.jpg" alt="IMG-GALLERY"> <br>
				<br>
				<div class="wrap-btn-booking flex-c-m m-l-r-auto">
					<!-- Button3 -->
					<a class="flex-c-m size13 txt11 trans-0-4"></a>
				</div>
				<br> <br> <br>
			</div>

			<!-- - -->
			<div
				class="item-gallery isotope-item bo-rad-10 hov-img-zoom events guests">
				<img src="images/coupon_3000.jpg" alt="IMG-GALLERY"> <br>
				<br>
				<div class="wrap-btn-booking flex-c-m m-l-r-auto">
					<!-- Button3 -->
					<a class="flex-c-m size13 txt11 trans-0-4"></a>
				</div>
				<br> <br> <br>
			</div>

			<!-- - -->
			<div
				class="item-gallery isotope-item bo-rad-10 hov-img-zoom events guests">
				<img src="images/coupon_5000.jpg" alt="IMG-GALLERY">
			</div>

			<!-- - -->
			<div
				class="item-gallery isotope-item bo-rad-10 hov-img-zoom events guests">
				<img src="images/coupon_7000.jpg" alt="IMG-GALLERY">
			</div>

			<!-- - -->
			<div
				class="item-gallery isotope-item bo-rad-10 hov-img-zoom events guests">
				<img src="images/coupon_10000.jpg" alt="IMG-GALLERY">
			</div>
		</div>
	</div>

	<!-- Back to top -->
	<div class="btn-back-to-top bg0-hov" id="myBtn">
		<span class="symbol-btn-back-to-top"> <i
			class="fa fa-angle-double-up" aria-hidden="true"></i>
		</span>
	</div>

	<%
	} else if (login.getPoint() == 2) {
	%>

	<div class="section-gallery p-t-20 p-b-100">

		<div class="wrap-gallery isotope-grid flex-w p-l-25 p-r-25">

			<!-- - -->
			<div
				class="item-gallery isotope-item bo-rad-10 hov-img-zoom events guests">
				<img src="images/coupon_1000.jpg" alt="IMG-GALLERY"> <br>
				<br>
				<div class="wrap-btn-booking flex-c-m m-l-r-auto">
					<!-- Button3 -->
					<a class="flex-c-m size13 txt11 trans-0-4"></a>
				</div>
				<br> <br> <br>
			</div>

			<!-- - -->
			<div
				class="item-gallery isotope-item bo-rad-10 hov-img-zoom events guests">
				<img src="images/coupon_2000.jpg" alt="IMG-GALLERY"> <br>
				<br>
				<div class="wrap-btn-booking flex-c-m m-l-r-auto">
					<!-- Button3 -->
					<a href="CouponService"
						class="btn3 flex-c-m size13 txt11 trans-0-4">쿠폰 받기</a>
				</div>
				<br> <br> <br>
			</div>

			<!-- - -->
			<div
				class="item-gallery isotope-item bo-rad-10 hov-img-zoom events guests">
				<img src="images/coupon_3000.jpg" alt="IMG-GALLERY"> <br>
				<br>
				<div class="wrap-btn-booking flex-c-m m-l-r-auto">
					<!-- Button3 -->
					<a class="flex-c-m size13 txt11 trans-0-4"></a>
				</div>
				<br> <br> <br>
			</div>

			<!-- - -->
			<div
				class="item-gallery isotope-item bo-rad-10 hov-img-zoom events guests">
				<img src="images/coupon_5000.jpg" alt="IMG-GALLERY">
			</div>

			<!-- - -->
			<div
				class="item-gallery isotope-item bo-rad-10 hov-img-zoom events guests">
				<img src="images/coupon_7000.jpg" alt="IMG-GALLERY">
			</div>
			<!-- - -->
			<div
				class="item-gallery isotope-item bo-rad-10 hov-img-zoom events guests">
				<img src="images/coupon_10000.jpg" alt="IMG-GALLERY">
			</div>
		</div>
	</div>

	<!-- Back to top -->
	<div class="btn-back-to-top bg0-hov" id="myBtn">
		<span class="symbol-btn-back-to-top"> <i
			class="fa fa-angle-double-up" aria-hidden="true"></i>
		</span>
	</div>

	<%
	} else if (login.getPoint() == 3) {
	%>

	<div class="section-gallery p-t-20 p-b-100">

		<div class="wrap-gallery isotope-grid flex-w p-l-25 p-r-25">

			<!-- - -->
			<div
				class="item-gallery isotope-item bo-rad-10 hov-img-zoom events guests">
				<img src="images/coupon_1000.jpg" alt="IMG-GALLERY"> <br>
				<br>
				<div class="wrap-btn-booking flex-c-m m-l-r-auto">
					<!-- Button3 -->
					<a class="flex-c-m size13 txt11 trans-0-4"></a>
				</div>
				<br> <br> <br>
			</div>

			<!-- - -->
			<div
				class="item-gallery isotope-item bo-rad-10 hov-img-zoom events guests">
				<img src="images/coupon_2000.jpg" alt="IMG-GALLERY"> <br>
				<br>
				<div class="wrap-btn-booking flex-c-m m-l-r-auto">
					<!-- Button3 -->
					<a class="flex-c-m size13 txt11 trans-0-4"></a>
				</div>
				<br> <br> <br>
			</div>

			<!-- - -->
			<div
				class="item-gallery isotope-item bo-rad-10 hov-img-zoom events guests">
				<img src="images/coupon_3000.jpg" alt="IMG-GALLERY"> <br>
				<br>
				<div class="wrap-btn-booking flex-c-m m-l-r-auto">
					<!-- Button3 -->
					<a href="CouponService"
						class="btn3 flex-c-m size13 txt11 trans-0-4">쿠폰 받기</a>
				</div>
				<br> <br> <br>
			</div>

			<!-- - -->
			<div
				class="item-gallery isotope-item bo-rad-10 hov-img-zoom events guests">
				<img src="images/coupon_5000.jpg" alt="IMG-GALLERY">
			</div>

			<!-- - -->
			<div
				class="item-gallery isotope-item bo-rad-10 hov-img-zoom events guests">
				<img src="images/coupon_7000.jpg" alt="IMG-GALLERY">
			</div>
			<!-- - -->
			<div
				class="item-gallery isotope-item bo-rad-10 hov-img-zoom events guests">
				<img src="images/coupon_10000.jpg" alt="IMG-GALLERY">
			</div>
		</div>
	</div>

	<!-- Back to top -->
	<div class="btn-back-to-top bg0-hov" id="myBtn">
		<span class="symbol-btn-back-to-top"> <i
			class="fa fa-angle-double-up" aria-hidden="true"></i>
		</span>
	</div>

	<%
	} else if (login.getPoint() == 4) {
	%>

	<div class="section-gallery p-t-20 p-b-100">

		<div class="wrap-gallery isotope-grid flex-w p-l-25 p-r-25">

			<!-- - -->
			<div
				class="item-gallery isotope-item bo-rad-10 hov-img-zoom events guests">
				<img src="images/coupon_1000.jpg" alt="IMG-GALLERY"><br>
				<br>
				<div class="wrap-btn-booking flex-c-m m-l-r-auto">
					<!-- Button3 -->
					<a class="flex-c-m size13 txt11 trans-0-4"></a>
				</div>
				<br> <br> <br>
			</div>

			<!-- - -->
			<div
				class="item-gallery isotope-item bo-rad-10 hov-img-zoom events guests">
				<img src="images/coupon_2000.jpg" alt="IMG-GALLERY"><br>
				<br>
				<div class="wrap-btn-booking flex-c-m m-l-r-auto">
					<!-- Button3 -->
					<a class="flex-c-m size13 txt11 trans-0-4"></a>
				</div>
				<br> <br> <br>
			</div>

			<!-- - -->
			<div
				class="item-gallery isotope-item bo-rad-10 hov-img-zoom events guests">
				<img src="images/coupon_3000.jpg" alt="IMG-GALLERY"><br>
				<br>
				<div class="wrap-btn-booking flex-c-m m-l-r-auto">
					<!-- Button3 -->
					<a class="flex-c-m size13 txt11 trans-0-4"></a>
				</div>
				<br> <br> <br>
			</div>

			<!-- - -->
			<div
				class="item-gallery isotope-item bo-rad-10 hov-img-zoom events guests">
				<img src="images/coupon_5000.jpg" alt="IMG-GALLERY"> <br>
				<br>
				<div class="wrap-btn-booking flex-c-m m-l-r-auto">
					<!-- Button3 -->
					<a href="CouponService"
						class="btn3 flex-c-m size13 txt11 trans-0-4">쿠폰 받기</a>
				</div>
			</div>

			<!-- - -->
			<div
				class="item-gallery isotope-item bo-rad-10 hov-img-zoom events guests">
				<img src="images/coupon_7000.jpg" alt="IMG-GALLERY">
			</div>
			<!-- - -->
			<div
				class="item-gallery isotope-item bo-rad-10 hov-img-zoom events guests">
				<img src="images/coupon_10000.jpg" alt="IMG-GALLERY">
			</div>
		</div>
	</div>

	<!-- Back to top -->
	<div class="btn-back-to-top bg0-hov" id="myBtn">
		<span class="symbol-btn-back-to-top"> <i
			class="fa fa-angle-double-up" aria-hidden="true"></i>
		</span>
	</div>

	<%
	} else if (login.getPoint() == 5) {
	%>

	<div class="section-gallery p-t-20 p-b-100">

		<div class="wrap-gallery isotope-grid flex-w p-l-25 p-r-25">

			<!-- - -->
			<div
				class="item-gallery isotope-item bo-rad-10 hov-img-zoom events guests">
				<img src="images/coupon_1000.jpg" alt="IMG-GALLERY"><br>
				<br>
				<div class="wrap-btn-booking flex-c-m m-l-r-auto">
					<!-- Button3 -->
					<a class="flex-c-m size13 txt11 trans-0-4"></a>
				</div>
				<br> <br> <br>
			</div>

			<!-- - -->
			<div
				class="item-gallery isotope-item bo-rad-10 hov-img-zoom events guests">
				<img src="images/coupon_2000.jpg" alt="IMG-GALLERY"><br>
				<br>
				<div class="wrap-btn-booking flex-c-m m-l-r-auto">
					<!-- Button3 -->
					<a class="flex-c-m size13 txt11 trans-0-4"></a>
				</div>
				<br> <br> <br>
			</div>

			<!-- - -->
			<div
				class="item-gallery isotope-item bo-rad-10 hov-img-zoom events guests">
				<img src="images/coupon_3000.jpg" alt="IMG-GALLERY"><br>
				<br>
				<div class="wrap-btn-booking flex-c-m m-l-r-auto">
					<!-- Button3 -->
					<a class="flex-c-m size13 txt11 trans-0-4"></a>
				</div>
				<br> <br> <br>
			</div>

			<!-- - -->
			<div
				class="item-gallery isotope-item bo-rad-10 hov-img-zoom events guests">
				<img src="images/coupon_5000.jpg" alt="IMG-GALLERY">
			</div>

			<!-- - -->
			<div
				class="item-gallery isotope-item bo-rad-10 hov-img-zoom events guests">
				<img src="images/coupon_7000.jpg" alt="IMG-GALLERY"> <br>
				<br>
				<div class="wrap-btn-booking flex-c-m m-l-r-auto">
					<!-- Button3 -->
					<a href="CouponService"
						class="btn3 flex-c-m size13 txt11 trans-0-4">쿠폰 받기</a>
				</div>
			</div>
			<!-- - -->
			<div
				class="item-gallery isotope-item bo-rad-10 hov-img-zoom events guests">
				<img src="images/coupon_10000.jpg" alt="IMG-GALLERY">
			</div>
		</div>
	</div>

	<!-- Back to top -->
	<div class="btn-back-to-top bg0-hov" id="myBtn">
		<span class="symbol-btn-back-to-top"> <i
			class="fa fa-angle-double-up" aria-hidden="true"></i>
		</span>
	</div>

	<%
	} else if (login.getPoint() >= 6) {
	%>

	<div class="section-gallery p-t-20 p-b-100">

		<div class="wrap-gallery isotope-grid flex-w p-l-25 p-r-25">

			<!-- - -->
			<div
				class="item-gallery isotope-item bo-rad-10 hov-img-zoom events guests">
				<img src="images/coupon_1000.jpg" alt="IMG-GALLERY"><br>
				<br>
				<div class="wrap-btn-booking flex-c-m m-l-r-auto">
					<!-- Button3 -->
					<a class="flex-c-m size13 txt11 trans-0-4"></a>
				</div>
				<br> <br> <br>
			</div>

			<!-- - -->
			<div
				class="item-gallery isotope-item bo-rad-10 hov-img-zoom events guests">
				<img src="images/coupon_2000.jpg" alt="IMG-GALLERY"><br>
				<br>
				<div class="wrap-btn-booking flex-c-m m-l-r-auto">
					<!-- Button3 -->
					<a class="flex-c-m size13 txt11 trans-0-4"></a>
				</div>
				<br> <br> <br>
			</div>

			<!-- - -->
			<div
				class="item-gallery isotope-item bo-rad-10 hov-img-zoom events guests">
				<img src="images/coupon_3000.jpg" alt="IMG-GALLERY"><br>
				<br>
				<div class="wrap-btn-booking flex-c-m m-l-r-auto">
					<!-- Button3 -->
					<a class="flex-c-m size13 txt11 trans-0-4"></a>
				</div>
				<br> <br> <br>
			</div>

			<!-- - -->
			<div
				class="item-gallery isotope-item bo-rad-10 hov-img-zoom events guests">
				<img src="images/coupon_5000.jpg" alt="IMG-GALLERY">
			</div>

			<!-- - -->
			<div
				class="item-gallery isotope-item bo-rad-10 hov-img-zoom events guests">
				<img src="images/coupon_7000.jpg" alt="IMG-GALLERY">
			</div>
			<!-- - -->
			<div
				class="item-gallery isotope-item bo-rad-10 hov-img-zoom events guests">
				<img src="images/coupon_10000.jpg" alt="IMG-GALLERY"> <br>
				<br>
				<div class="wrap-btn-booking flex-c-m m-l-r-auto">
					<!-- Button3 -->
					<a href="CouponService"
						class="btn3 flex-c-m size13 txt11 trans-0-4">쿠폰 받기</a>
				</div>
			</div>
		</div>
	</div>

	<!-- Back to top -->
	<div class="btn-back-to-top bg0-hov" id="myBtn">
		<span class="symbol-btn-back-to-top"> <i
			class="fa fa-angle-double-up" aria-hidden="true"></i>
		</span>
	</div>

	<%
	}
	%>

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
	<script type="text/javascript">
		window.history.forward();
		function noBack() {
			window.history.forward();
		}
	</script>

</body>
</html>
