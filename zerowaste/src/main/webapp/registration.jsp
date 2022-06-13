<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Registration</title>
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
				class="btn3 flex-c-m size13 txt11 trans-0-4 m-l-r-auto"> 로그아웃
					 </a>
			</li>
		</ul>
	</aside>

	<!-- Title Page -->
	<section class="bg-title-page flex-c-m p-t-160 p-b-80 p-l-15 p-r-15"
		style="background-image: url(images/bg-title-page-05.jpg);">
		<h2 class="tit6 t-center">ZERO WASTE 매장 등록</h2>
	</section>

	<!-- Contact form -->
	<section class="section-contact bg1-pattern p-t-90 p-b-113">
		<div class="container">
			<h3 class="tit7 t-center p-b-62 p-t-105">매장 등록</h3>

			<form class="wrap-form-reservation size22 m-l-r-auto" action="RegiService" method="get">
				<div>
					<div>
						<span class="txt9"> 매장명 </span>

						<div class="wrap-inputname size12 bo2 bo-rad-10 m-t-3 m-b-23">
							<input class="bo-rad-10 sizefull txt10 p-l-20" type="text"
								name="storeName" placeholder="가게명을 입력하세요.">
						</div>
					</div>

					<div>
						<span class="txt9"> 매장주소 </span> &#160
						<button display="inline" id="btn" type="button"
							class="btn3 size13 txt11 trans-0-4 m-l-r-auto">주소 확인하기</button>

						<div class="wrap-inputemail size12 bo2 bo-rad-10 m-t-3 m-b-23">
							<input class="bo-rad-10 sizefull txt10 p-l-20" type="text"
								name="address" id="addr" placeholder="매장주소를 입력하세요.">
						</div>
					</div>

					<div>
						<span class="txt9"> 음식종류 </span>

						<div class="wrap-inputphone size12 bo2 bo-rad-10 m-t-3 m-b-23">
							<input class="bo-rad-10 sizefull txt10 p-l-20" type="text"
								name="food" placeholder="한식 / 중식 / 양식 / 일식 / 분식 / 카페 / 아시안 / 야식">
						</div>
					</div>

					<div>
						<span class="txt9"> 가게 소개 페이지 </span>

						<div class="wrap-inputphone size12 bo2 bo-rad-10 m-t-3 m-b-23">
							<input class="bo-rad-10 sizefull txt10 p-l-20" type="text"
								name="url" placeholder="가게 메뉴 및 상세 소개 페이지의 URL을 입력해주세요.">
						</div>
					</div>

					<div>
						<div id="map" style="width: 100%; height: 200px;"></div>
						<script type="text/javascript"
							src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b9d52b733842f8156d5455f83b6f4277&libraries=services"></script>

						<script>
							var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
							mapOption = {
								center : new kakao.maps.LatLng(
										35.15119034201585, 126.92515360052161), // 지도의 중심좌표
								level : 3
							// 지도의 확대 레벨
							};

							// 지도를 생성합니다    
							var map = new kakao.maps.Map(mapContainer,
									mapOption);

							// 주소-좌표 변환 객체를 생성합니다
							var geocoder = new kakao.maps.services.Geocoder();

							var btn = document.getElementById('btn');
							var address = '';

							btn.addEventListener('click',function() {
									address = document.getElementById('addr').value;

									// 주소로 좌표를 검색합니다
									geocoder.addressSearch(address,function(result, status) {
										// 정상적으로 검색이 완료됐으면 
										if (status === kakao.maps.services.Status.OK) {

										var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

										// 결과값으로 받은 위치를 마커로 표시합니다
										var marker = new kakao.maps.Marker(
											{
											map : map,
											position : coords
											});

										// 인포윈도우로 장소에 대한 설명을 표시합니다
										var infowindow = new kakao.maps.InfoWindow(
											{
											content : '<div style="width:150px;text-align:center;padding:6px 0;">우리가게</div>'
											});
										infowindow.open(map, marker);

										// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
										map.setCenter(coords);
										
										// 위도 & 경도 찾기
										var lat = document.getElementById('lat')
										var lng = document.getElementById('lng')
										lat.value = result[0].y
										lng.value = result[0].x
										}
									});
							});
						</script>
					</div>

				</div>
						<!-- 위도/경도 찾기 -->
						<input name="lat" id="lat" type="hidden">
						<input name="lng" id="lng" type="hidden">

				<div class="wrap-btn-booking flex-c-m m-t-13">
					<!-- Button3 -->
					<button type="submit" class="btn3 flex-c-m size36 txt11 trans-0-4">
						확인</button>
				</div>
			</form>
		</div>
	</section>

	<!-- Back to top -->
	<div class="btn-back-to-top bg0-hov" id="myBtn">
		<span class="symbol-btn-back-to-top"> <i
			class="fa fa-angle-double-up" aria-hidden="true"></i>
		</span>
	</div>

	<!-- Container Selection1 -->
	<div id="dropDownSelect1"></div>

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
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAKFWBqlKAGCeS1rMVoaNlwyayu0e0YRes"></script>
	<script src="js/map-custom.js"></script>
	<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>
