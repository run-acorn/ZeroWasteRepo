<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Forty by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>Forty by HTML5 UP</title>
<meta charset="UTF-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
</head>
<body class="is-preload">

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Banner -->
		<section id="banner" class="major">
			<div class="inner">
				<header class="major">
					<h1>Zero Waste</h1>
				</header>
				<div class="content">
					<p>당신의 용기를 응원합니다!</p>
					<ul class="actions">
						<li><a href="#menu" class="button next scrolly">로그인/회원가입</a></li>
					</ul>
				</div>
				<!-- Menu -->
				<nav id="menu">
					<ul class="links">
						<li><h5>로그인</h5></li>
						<form action="LoginService" method="post">
							<li><input name="loginid" type="text"
								placeholder="ID를 입력하세요"></li>
							<li><input name="loginpw" type="password"
								placeholder="비밀번호를 입력하세요"></li>
							<li><input type="submit" value="로그인" class="button fit"></li>
						</form>
					</ul>
					<ul class="links">
						<li><h5>회원가입</h5></li>
						<form action="JoinService" method="post">
							<li><input type="text" name="id" placeholder="ID를 입력하세요"></li>
							<li><input type="password" name="pw"
								placeholder="비밀번호를 입력하세요"></li>
							<li><input type="text" name="nick" placeholder="닉네임을 입력하세요"></li>
							<li><input type="submit" value="회원가입" class="button fit"></li>
						</form>
					</ul>
				</nav>
			</div>
		</section>
	</div>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

</body>
</html>