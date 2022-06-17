<%@page import="com.model.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>review write</title>
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
						<a href="index.jsp"> <img src="images/icons/logo.png"
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
		style="background-image: url(images/bg-title-page-03.jpg);">
		<h2 class="tit6 t-center texttitle">리뷰 작성</h2>
	</section>

	<!-- Content page -->
	<section>
		<div class="container p-t-30">
			<div>
				<div>
					<div>
						<!-- Block4 -->
						
						<div class="blo4" style="text-align:center;">

							<!-- - -->
							<div style="display: inline-block;" id="image_container"
								class="pic-blo4 hov-img-zoom bo-rad-10 pos-relative"></div>
						</div>

						<!-- Leave a comment -->
						<form class="wrap-form-reservation size22 m-l-r-auto"
							action="WriteService" method="post" enctype="multipart/form-data">

							<div>
							
								<div class="m-b-20">


									<div style="display: inline-block;">
										<span class="txt9"> 영수증 사진 등록 </span> <span class="txt99">(*
											필수 정보입니다.)</span>
										<div>
											<input type="file" name="fileNameCopy"
												onchange="setThumbnai(event);" class="m-t-3 m-b-23 file">
												<div class="fileSize"></div>
										</div>
										
									</div>


									<div style="display: inline-block;">
										<span class="txt9"> 음식 사진 </span> <span class="txt99">(*
											필수 정보입니다.)</span>
										<div>
											<input type="file" name="fileName"
												onchange="setThumbnail(event);" class="m-t-3 m-b-23 file">
												<div class="fileSize1"></div>
										</div>
										
									</div>

								</div>

								<div>
									<span class="txt9"> 매장 명 </span> <span class="txt99">(* 필수 정보입니다.)</span>

									<div class="wrap-inputphone size12 bo2 bo-rad-10 m-t-3 m-b-23">
										<input class="bo-rad-10 sizefull txt10 p-l-20" type="text"
											name="storeName" placeholder="방문한 매장명을 작성해주세요">
									</div>
								</div>


								<div>
									<span class="txt9"> 글 내용 작성 </span>

									<textarea
										class="bo-rad-10 size29 bo2 txt10 p-l-20 p-t-15 m-b-10 m-t-10"
										name="review" placeholder="500자 이하 작성 가능"></textarea>
								</div>

							</div>

							<div class="wrap-btn-booking flex-c-m m-t-6">
								<!-- Button3 -->
								<button type="submit"
									class="btn3 flex-c-m size13 txt11 trans-0-4">제출하기</button>
								&emsp;
								<a href="GoBoard?page=1" class="btn3 flex-c-m size13 txt11 trans-0-4">목록 돌아가기</a>
								<br> <br> <br> <br>
							</div>
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

	<!-- 파일 넣어주는 스크립트 -->
	<script>
	function setThumbnai(event) {
		var reader = new FileReader();

		reader.onload = function(event) {
			var div = document.querySelector('div.fileSize');
			var target = document.querySelector("div.fileSize");

			var img = document.createElement("img");

			img.setAttribute("src", event.target.result);
			img.style.width = '200px';
			img.style.height = '200px';
			target.innerHTML = '';
			
			target.append(img);

		};

		reader.readAsDataURL(event.target.files[0]);

	}
	
	function setThumbnail(event) {
		var reader = new FileReader();

		reader.onload = function(event) {
			var div = document.querySelector('div.fileSize1');
			var target = document.querySelector("div.fileSize1");

			var img = document.createElement("img");

			img.setAttribute("src", event.target.result);
			img.style.width = '200px';
			img.style.height = '200px';
			target.innerHTML = '';

			target.append(img);

		};

		reader.readAsDataURL(event.target.files[0]);

	}
	
	</script>

</body>
</html>
