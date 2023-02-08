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
	if (session.getAttribute("customerInfo") != null) {
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
						We will support you.
					</h1>
					<hr class="divider" />
				</div>
				<div class="col-lg-8 align-self-baseline">
					<p class="text-white-75 mb-5">Start your business with us, TO ANYWHERE.</p>
	                <div class="signup-content container">
	                    <div class="signup-form">
	                        <h2 class="form-title">Sign up</h2>
	                        <form class="register-form" id="register-form">
	                            <div class="form-group">
	                                <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
	                                <input type="text" name="name" id="name" placeholder="이름 또는 별명을 입력하세요."/>
	                            </div>
	                            <div class="form-group">
	                                <label for="email"><i class="zmdi zmdi-email"></i></label>
	                                <input type="email" name="email" id="email" placeholder="email을 입력하세요."/>
	                                <button type="button" class="btn btn-light btn-sm" style="float:right;" onclick="emailDuplicationChk()">중복확인</button>
	                                <input type="hidden" name="emailChk" id="emailChk" value="false">
	                            </div>
	                            <div class="form-group">
	                                <label for="password"><i class="zmdi zmdi-lock"></i></label>
	                                <input type="password" name="password" id="password" placeholder="비밀번호를 입력하세요."/>
	                            </div>
	                            <div class="form-group">
	                                <label for="rePassword"><i class="zmdi zmdi-lock-outline"></i></label>
	                                <input type="password" name="rePassword" id="rePassword" placeholder="비밀번호를 다시 한 번 입력하세요."/>
	                            </div>
	                            <div class="msg" id="msg">
	                            	<!-- 중복된 아이디, 비밀번호 확인과 비밀번호가 다른 경우, 회원가입 가능한 경우 message -->
	                            </div>
	                            <div class="form-group">
	                                <input type="checkbox" name="agree-term" id="agree-term" class="form-check-input" />
	                                <label for="agree-term" class="label-agree-term">
	                                	<span>
	                                		<span></span>
	                                	</span>
	                                	모든 항목에 동의합니다.  <a href="#" class="term-service">Terms of service</a>
	                                </label>
	                            </div>
	                            <div class="form-group form-button">
	                                <a class="btn btn-primary btn-xl" onclick="registChk()">등록</a>
	                            </div>
	                        </form>
	                    </div>
	                    <div class="signup-image">
	                        <figure><img src="img/registration/house.png" alt="sing up image"  style="border-radius: 20%"></figure>
	                        <a href="host" class="signup-image-link">이미 회원입니다.</a>
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