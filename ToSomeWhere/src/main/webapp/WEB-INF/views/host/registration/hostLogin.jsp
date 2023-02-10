<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.Iterator"%>
<%@ page session="true"%>
<%
        request.setCharacterEncoding("UTF-8");
        System.out.printf("SESSION: " + session.getAttribute("customerInfo"));
        if(session.getAttribute("customerInfo") != null){
	        Map<String, String[]> map = request.getParameterMap();
	        for (Map.Entry<String, String[]> entry : map.entrySet()) {
	                System.out.printf("%s : %s%n", entry.getKey(), String.join(", ", entry.getValue()));
	        }
        }
    %>

<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="Anyone can leave, To Anywhere." />
<meta name="author" content="Emma" />
<title>Anywhere</title>
<!-- Favicon-->
<link rel="icon" href="resources/img/favicon.png" />
<!-- Bootstrap Icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Google fonts-->
<link
	href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic"
	rel="stylesheet" type="text/css" />
<!-- SimpleLightbox plugin CSS-->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.css"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="resources/css/styles.css" rel="stylesheet" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<title>To Somewhere</title>
</head>
<body id="page-top">

	<header class="masthead">
		<div class="px-4 px-lg-5 h-100">
			<div
				class="row gx-4 gx-lg-5 h-100 align-items-center justify-content-center text-center">

				<div class="col-lg-8 align-self-end p-3">
					<h1 class="text-white font-weight-bold">
						Start your business <br/>
					</h1>
					<hr class="divider" />
				</div>
				<div class="col-lg-8 align-self-baseline">
					<p class="text-white-75 mb-5">
						<strong>Simply</strong>, you can show your places.<br /> 
						<strong>Easily</strong>, you can see your data. <br/>
						<strong>Absolutely</strong>, you can save your time.
					</p>
					<div class="container">
						<div class="signin-content">
							<div class="signin-image">
								<figure>
									<img src="img/registration/room.png" alt="sing up image" height="300">
								</figure>
								<a href="registrationHost" class="signup-image-link">회원가입</a>
							</div>
							<div class="m-3 p-3 signin-form"
								style="align-content: center; align-items: center;">
								<h2 class="form-title">&nbsp;</h2>
								<form method="POST" class="register-form" id="login-form">
									<div class="form-group" style="text-align: center;">
										<label for="id"><i class="material-icons-name"></i></label> <input
											type="text" name="id" id="id" placeholder="아이디를 입력하세요." />
									</div>
									<div class="form-group">
										<label for="password"><i class="zmdi zmdi-lock"></i></label> <input
											type="password" name="password" id="password"
											placeholder="비밀번호를 입력하세요." />
									</div>
									<div id="msg"></div>
									<div class="form-group">
										<input type="checkbox" name="remember-me" id="remember-me"
											class="agree-term" /> <label for="remember-me"
											class="label-agree-term"><span><span></span></span>아이디
											기억하기</label>
									</div>
									<div class="form-group form-button">
										<a class="btn btn-primary btn-xl" onclick="loginChk()">로그인</a>
										<div class="social-login">
											<span class="social-label">다른 방법으로 로그인 </span>
											<ul class="socials">
												<li><a href="#"><i
														class="display-flex-center zmdi zmdi-facebook"></i></a></li>
												<li><a href="#"><i
														class="display-flex-center zmdi zmdi-twitter"></i></a></li>
												<li><a href="#"><i
														class="display-flex-center zmdi zmdi-google"></i></a></li>
											</ul>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<footer class="text-center text-muted p-3"
		style="background-color: #7B6F67; color: white;">
		<!-- Copyright -->
		Copyright &copy; 2023 - to ANYWHERE
	</footer>
	<!-- CSS -->
	<link rel="stylesheet" href="css/registration.css">
	<!-- JS -->
	<script src="js/jquery-3.6.3.min.js"></script>
	<script src="js/login.js"></script>

	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- SimpleLightbox plugin JS-->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.js"></script>
	<!-- Core theme JS-->
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
	<script src="js/scripts.js"></script>

	<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"> -->
	<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script> -->

</body>
</html>

