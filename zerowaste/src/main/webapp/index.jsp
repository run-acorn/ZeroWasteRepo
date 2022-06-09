<%@page import="com.model.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Home</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
	UserVO login = (UserVO)session.getAttribute("login");
%>
	<% if (login == null){ %>
	<!-- Slide1 -->
	<section class="section-slide">
		<div class="wrap-slick1">
			<div class="slick1">
				<div class="item-slick1 item1-slick1"
					style="background-image: url(images/slide1-01.jpg);">
					<div
						class="wrap-content-slide1 sizefull flex-col-c-m p-l-15 p-r-15 p-t-150 p-b-170">
						<span
							class="caption1-slide1 txt1 t-center animated visible-false m-b-15"
							data-appear="fadeInDown"> Welcome to </span>

						<h2
							class="caption2-slide1 tit1 t-center animated visible-false m-b-37"
							data-appear="fadeInUp">Zero Waste World</h2>

						<div class="wrap-btn-slide1 animated visible-false"
							data-appear="zoomIn">
							<!-- Button1 -->
							<table>
								<tr>
									<td><a href="GoLogin"
										class="btn1 flex-c-m size1 txt3 trans-0-4"> Sign In </a></td>
									<td>ㅤㅤ
									<td>
									<td><a href="GoJoin"
										class="btn1 flex-c-m size1 txt3 trans-0-4"> Sign Up </a></td>
								</tr>
							</table>
						</div>
					</div>
				</div>

				<div class="item-slick1 item2-slick1"
					style="background-image: url(images/master-slides-02.jpg);">
					<div
						class="wrap-content-slide1 sizefull flex-col-c-m p-l-15 p-r-15 p-t-150 p-b-170">
						<span
							class="caption1-slide1 txt1 t-center animated visible-false m-b-15"
							data-appear="rollIn"> Welcome to </span>

						<h2
							class="caption2-slide1 tit1 t-center animated visible-false m-b-37"
							data-appear="lightSpeedIn">Zero Waste World</h2>

						<div class="wrap-btn-slide1 animated visible-false"
							data-appear="slideInUp">
							<!-- Button1 -->
							<table>
								<tr>
									<td><a href="GoLogin"
										class="btn1 flex-c-m size1 txt3 trans-0-4"> Sign In </a></td>
									<td>ㅤㅤ
									<td>
									<td><a href="GoJoin"
										class="btn1 flex-c-m size1 txt3 trans-0-4"> Sign Up </a></td>
								</tr>
							</table>
						</div>
					</div>
				</div>

				<div class="item-slick1 item3-slick1"
					style="background-image: url(images/master-slides-01.jpg);">
					<div
						class="wrap-content-slide1 sizefull flex-col-c-m p-l-15 p-r-15 p-t-150 p-b-170">
						<span
							class="caption1-slide1 txt1 t-center animated visible-false m-b-15"
							data-appear="rotateInDownLeft"> Welcome to </span>

						<h2
							class="caption2-slide1 tit1 t-center animated visible-false m-b-37"
							data-appear="rotateInUpRight">Zero Waste World</h2>

						<div class="wrap-btn-slide1 animated visible-false"
							data-appear="rotateIn">
							<!-- Button1 -->
							<table>
								<tr>
									<td><a href="GoLogin"
										class="btn1 flex-c-m size1 txt3 trans-0-4"> Sign In </a></td>
									<td>ㅤㅤ</td>
									<td><a href="GoJoin"
										class="btn1 flex-c-m size1 txt3 trans-0-4"> Sign Up </a></td>
								</tr>
							</table>
						</div>
					</div>
				</div>

			</div>

			<div class="wrap-slick1-dots"></div>
		</div>
	</section>
	<% } else { %>
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
								<li><a href="GoMain">Home</a></li>

								<li><a href="GoMap">Map</a></li>

								<li><a href="GoTree">My Tree</a></li>

								<li><a href="blog.jsp">Review & Point</a></li>

								<li><a href="contact.jsp">Registration</a></li>
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
			<li class="t-center m-b-13"><a href="GoMain" class="txt19">Home</a>
			</li>

			<li class="t-center m-b-13"><a href="GoMap" class="txt19">Map</a>
			</li>

			<li class="t-center m-b-13"><a href="GoTree" class="txt19">My
					Tree</a></li>

			<li class="t-center m-b-13"><a href="blog.html" class="txt19">Review
					& Point</a></li>

			<li class="t-center m-b-33"><a href="contact.html" class="txt19">Registration</a>
			</li>

			<li class="t-center">
				<!-- Button3 --> <a href="GoLogout"
				class="btn3 flex-c-m size13 txt11 trans-0-4 m-l-r-auto"> Sign
					Out </a>
			</li>
		</ul>
	</aside>

	<!-- Slide1 -->
	<section class="section-slide">
		<div class="wrap-slick1">
			<div class="slick1">
				<div class="item-slick1 item1-slick1"
					style="background-image: url(images/slide1-01.jpg);">
					<div
						class="wrap-content-slide1 sizefull flex-col-c-m p-l-15 p-r-15 p-t-150 p-b-170">
						<span
							class="caption1-slide1 txt1 t-center animated visible-false m-b-15"
							data-appear="fadeInDown"> Welcome to </span>

						<h2
							class="caption2-slide1 tit1 t-center animated visible-false m-b-37"
							data-appear="fadeInUp">Zero Waste World</h2>

						<div class="wrap-btn-slide1 animated visible-false"
							data-appear="zoomIn"></div>
					</div>
				</div>

				<div class="item-slick1 item2-slick1"
					style="background-image: url(images/master-slides-02.jpg);">
					<div
						class="wrap-content-slide1 sizefull flex-col-c-m p-l-15 p-r-15 p-t-150 p-b-170">
						<span
							class="caption1-slide1 txt1 t-center animated visible-false m-b-15"
							data-appear="rollIn"> Welcome to </span>

						<h2
							class="caption2-slide1 tit1 t-center animated visible-false m-b-37"
							data-appear="lightSpeedIn">Zero Waste World</h2>

						<div class="wrap-btn-slide1 animated visible-false"
							data-appear="slideInUp"></div>
					</div>
				</div>

				<div class="item-slick1 item3-slick1"
					style="background-image: url(images/master-slides-01.jpg);">
					<div
						class="wrap-content-slide1 sizefull flex-col-c-m p-l-15 p-r-15 p-t-150 p-b-170">
						<span
							class="caption1-slide1 txt1 t-center animated visible-false m-b-15"
							data-appear="rotateInDownLeft"> Welcome to </span>

						<h2
							class="caption2-slide1 tit1 t-center animated visible-false m-b-37"
							data-appear="rotateInUpRight">Zero Waste World</h2>

						<div class="wrap-btn-slide1 animated visible-false"
							data-appear="rotateIn"></div>
					</div>
				</div>

			</div>

			<div class="wrap-slick1-dots"></div>
		</div>
	</section>
	<% } %>
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
	<script src="js/main.js"></script>

</body>
</html>
