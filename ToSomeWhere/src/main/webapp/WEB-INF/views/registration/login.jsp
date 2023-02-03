<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="java.util.Date" %>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="Anyone can leave, To Anywhere." />
<meta name="author" content="Emma" />
<title>to Anywhere</title>
	<!-- Favicon-->
	<link rel="icon" href="resources/img/favicon.png" />
    <!-- CSS -->
    <link rel="stylesheet" href="css/registration.css">
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<title>To Somewhere</title>
</head>
<body id="page-top">

<div class="main">
	<!-- Sing in  Form -->
	<section class="sign-in">
	    <div class="container">
	        <div class="signin-content">
	            <div class="signin-image">
	                <figure><img src="img/registration/signin.jpg" alt="sing up image"></figure>
	                <a href="registration" class="signup-image-link">회원가입</a>
	            </div>
	
	            <div class="signin-form">
	                <h2 class="form-title">로그인</h2>
	                <form method="POST" class="register-form" id="login-form">
	                    <div class="form-group">
	                        <label for="your_name"><i class="zmdi zmdi-account material-icons-name"></i></label>
	                        <input type="text" name="your_name" id="your_name" placeholder="아이디를 입력하세요."/>
	                    </div>
	                    <div class="form-group">
	                        <label for="your_pass"><i class="zmdi zmdi-lock"></i></label>
	                        <input type="password" name="your_pass" id="your_pass" placeholder="비밀번호를 입력하세요."/>
	                    </div>
	                    <div class="form-group">
	                        <input type="checkbox" name="remember-me" id="remember-me" class="agree-term" />
	                        <label for="remember-me" class="label-agree-term"><span><span></span></span>아이디 기억하기</label>
	                    </div>
	                    <div class="form-group form-button">
	                        <input type="submit" name="signin" id="signin" class="form-submit" value="Log in"/>
	                    </div>
	                </form>
	                <div class="social-login">
	                    <span class="social-label">다른 방법으로 로그인</span>
	                    <ul class="socials">
	                        <li><a href="#"><i class="display-flex-center zmdi zmdi-facebook"></i></a></li>
	                        <li><a href="#"><i class="display-flex-center zmdi zmdi-twitter"></i></a></li>
	                        <li><a href="#"><i class="display-flex-center zmdi zmdi-google"></i></a></li>
	                    </ul>
	                </div>
	            </div>
	        </div>
	    </div>
	</section>
</div>

	<!-- CSS -->
    <link rel="stylesheet" href="css/registration.css">
    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
<!--     <script >
    	$('#mainNav').css('backgroundColor','rgb(0, 0, 0, 0.2)');
    </script> -->

<link href="css/registration.css" rel="stylesheet">
		
<!-- Footer -->
<footer class="bg-dark text-center text-white"  style="background-color: rgba(0, 0, 0, 0.2);">
	<!-- Copyright -->
	<div class="text-center p-3 text-center text-muted" >
	  	Copyright &copy; 2023 - to ANYWHERE
	</div>
	<!-- Copyright -->
</footer>
<!-- Footer -->
        
    </body>
</html>