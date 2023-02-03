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
	<!-- Core theme CSS (includes Bootstrap)-->
	<link href="./css/styles.css" rel="stylesheet" />
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<title>To Somewhere</title>
</head>
<body id="page-top">

<div class="main">

        <!-- Sign up form -->
        <section class="signup">
            <div class="container">
                <div class="signup-content">
                    <div class="signup-form">
                        <h2 class="form-title">회원가입</h2>
                        <!-- <form method="POST" action="joininOK" class="register-form" id="register-form"> -->
                        <form class="register-form" id="register-form">
                            <div class="form-group">
                                <label for="id"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="id" id="id" placeholder="아이디를 입력하세요."/>
                                <button type="button" class="btn btn-light btn-sm" style="float:right;" onclick="idDuplicationChk()">중복확인</button>
                                <input type="hidden" name="idChk" id="idChk" value="false">
                            </div>
                            <div class="form-group">
                                <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="name" id="name" placeholder="이름 또는 별명을 입력하세요."/>
                            </div>
                            <div class="form-group">
                                <label for="email"><i class="zmdi zmdi-email"></i></label>
                                <input type="email" name="email" id="email" placeholder="email을 입력하세요."/>
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
                                <input type="button" name="signup" id="signup" class="form-submit" value="Register" onclick="registChk()"/>
                            </div>
                        </form>
                    </div>
                    <div class="signup-image">
                        <figure><img src="img/registration/signup.jpg" alt="sing up image"></figure>
                        <a href="login" class="signup-image-link">이미 회원입니다.</a>
                    </div>
                </div>
            </div>
        </section>


    </div>

<!-- Footer -->
<footer class="bg-dark text-center text-white"  style="background-color: rgba(0, 0, 0, 0.2);">
	<!-- Copyright -->
	<div class="text-center p-3 text-center text-muted" >
	  	Copyright &copy; 2023 - to ANYWHERE
	</div>
	<!-- Copyright -->
</footer>
<!-- Footer -->

    <!-- CSS -->
    <link rel="stylesheet" href="css/registration.css">
    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
    <!-- JS -->
    <script src="js/jquery-3.6.3.min.js"></script>
    <script src="js/registration.js"></script>

		
        
    </body>
</html>