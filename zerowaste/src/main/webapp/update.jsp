<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.model.CertiVO"%>
<%@page import="java.util.List"%>
<%@page import="com.model.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>update write</title>
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
	CertiVO cvo = (CertiVO) request.getAttribute("update");

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
						<a href="index.jsp"> <img src="images/icons/logo.png"
							alt="IMG-LOGO" data-logofixed="images/icons/logo.png">
						</a>
					</div>

					<!-- Menu -->
					<div class="wrap_menu p-l-45 p-l-0-xl">
						<nav class="menu">
							<ul class="main_menu">
								<li><a href="GoMain">Home</a></li>

								<li><a href="GoMap">Map</a></li>

								<li><a href="GoTree">My Tree</a></li>

								<li><a href="GoBoard">Review & Point</a></li>

								<li><a href="GoRegi">Registration</a></li>
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

			<li class="t-center m-b-13"><a href="GoBoard" class="txt19">Review
					& Point</a></li>

			<li class="t-center m-b-33"><a href="GoRegi" class="txt19">Registration</a>
			</li>
		</ul>
	</aside>


	<!-- Title Page -->
	<section class="bg-title-page flex-c-m p-t-160 p-b-80 p-l-15 p-r-15"
		style="background-image: url(images/bg-title-page-03.jpg);">
		<h2 class="tit6 t-center">리뷰작성</h2>
	</section>


	<!-- Content page -->
	<section>
		<div class="bread-crumb bo5-b p-t-17 p-b-17">
			<div class="container">
				<a href="index.html" class="txt27"> Home </a> <span
					class="txt29 m-l-10 m-r-10">/</span> <a href="blog.html"
					class="txt27"> 인증게시판 </a> <span class="txt29 m-l-10 m-r-10">/</span>

				<span class="txt29"> 리뷰작성 </span>
			</div>
		</div>

		<div class="container p-t-30">
			<div>
				<div>
					<div>
						<!-- Block4 -->
						<div class="blo4 p-b-63">
							<!-- - -->
							<div id="image_container"
								class="pic-blo4 hov-img-zoom bo-rad-10 pos-relative"></div>
						</div>

						<!-- Leave a comment -->
						<form class="leave-comment p-t-10 p-b-30"
							action="UpdateService?CerNum=<%=cvo.getCerNum()%>" method="post"
							enctype="multipart/form-data">
							
							<%
							if (login.getId().equals(cvo.getId())) {
							%>
							<h4 class="txt33 p-b-14">리뷰작성</h4>

							<p>영수증을 꼭 넣어주세요~</p>
							<div>
								<input class="sizefull txt10 p-t-20" type="file" name="fileName"
									onchange="setThumbnail(event);">

								<script>
									function setThumbnail(event) {
										var reader = new FileReader();

										reader.onload = function(event) {
											var img = document
													.createElement("img");
											img.setAttribute("src",
													event.target.result);
											document.querySelector(
													"div#image_container")
													.appendChild(img);
										};

										reader
												.readAsDataURL(event.target.files[0]);
									}
								</script>




							</div>

							<textarea
								class="bo-rad-10 size29 bo2 txt10 p-l-20 p-t-15 m-b-10 m-t-40"
								name="review"><%=cvo.getReview()%></textarea>

							<div class="size30 bo2 bo-rad-10 m-t-3 m-b-20">
								<input class="bo-rad-10 sizefull txt10 p-l-20" type="text"
									name="id" value="<%=login.getId()%>" readonly>
							</div>

							<div class="size30 bo2 bo-rad-10 m-t-3 m-b-20">
								<input class="bo-rad-10 sizefull txt10 p-l-20" type="text"
									name="storeName" value="<%=cvo.getStoreName()%>">
							</div>
							<%
							} else {
							%>
							<div class="container" >							

								<img src="reviewImg/<%=cvo.getFileName() %>" alt="IMG-BLOG">

							</div>

							<p
								class="bo-rad-10 size29 bo2 txt10 p-l-20 p-t-15 m-b-10 m-t-40"
								name="review"><%=cvo.getReview()%></p>

							<span>
								작성자 : <%=cvo.getId()%>
							</span>
<br>
							<span>
								가게명 : <%=cvo.getStoreName()%>
							</span>
							<%
							}
							%>
							<%
							if (login.getId().equals(cvo.getId())) {
							%>
							<!-- Button3 -->
							<button type="submit"
								class="btn3 flex-c-m size31 txt11 trans-0-4">수정하기</button>
							<%
							}
							%>
						</form>
					</div>
				</div>


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
