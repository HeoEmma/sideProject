<%@ page import="java.util.Date" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.Iterator" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="Anyone can leave, To Anywhere." />
<meta name="author" content="Emma" />
<title>Home</title>
	<!-- Favicon-->
	<link rel="icon" href="resources/img/favicon.png" />
	<!-- Bootstrap Icons-->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
	<!-- Google fonts-->
	<link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
	<link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" />
	<!-- SimpleLightbox plugin CSS-->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.css" rel="stylesheet" />
	<!-- Core theme CSS (includes Bootstrap)-->
	<link href="resources/css/styles.css" rel="stylesheet" />
	<link href="resources/css/hostLogin.css" rel="stylesheet">
	<!-- <link href="resources/css/registration.css" rel="stylesheet"> -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<title>To Somewhere</title>
</head>
<body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="#page-top">to ANYWHERE <small>_for host</small></a>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                </div>
            </div>
        </nav>
    
        <!-- Masthead-->
        <header class="masthead">
            <div class="container px-4 px-lg-5 h-100">
                <div class="row gx-4 gx-lg-5 h-100 align-items-center justify-content-center text-center">
                    <div class="col-lg-8 align-self-end">
                        <h1 class="text-white font-weight-bold">Show your places more easily.</h1>
                        <hr class="divider" />
                    </div>
                    <div class="col-lg-8 align-self-baseline">
                        <p class="text-white-75 mb-5">Start your business with us, TO ANYWHERE.</p>
                        
                        
                        
                        
                        
                        
                        





                    </div>
                         
<form method="POST" class="register-form" id="login-form">
    <div class="form-group">
        <label for="id"><i class="zmdi zmdi-account material-icons-name"></i></label>
        <input type="text" name="id" id="id" placeholder="아이디를 입력하세요."/>
    </div>
    <div class="form-group">
        <label for="password"><i class="zmdi zmdi-lock"></i></label>
        <input type="password" name="password" id="password" placeholder="비밀번호를 입력하세요."/>
    </div>
    <div id="msg"></div>
    <div class="form-group">
        <input type="checkbox" name="remember-me" id="remember-me" class="agree-term" />
        <label for="remember-me" class="label-agree-term"><span><span></span></span>아이디 기억하기</label>
    </div>
    <div class="form-group form-button">
        <a class="btn btn-primary btn-xl" onclick="loginChk()">sign in</a>
        <input type="button" onclick="loginChk()" name="signin" id="signin" class="form-submit" value="Log in"/>
        </div>
</form>
<div class="social-login ">
    <span class="social-label">로그인 with </span>
    <ul class="socials">
        <li><a href="#"><i class="display-flex-center zmdi zmdi-facebook"></i></a></li>
        <li><a href="#"><i class="display-flex-center zmdi zmdi-twitter"></i></a></li>
        <li><a href="#"><i class="display-flex-center zmdi zmdi-google"></i></a></li>
    </ul>
</div>

<!-- 
<div class="signin-form">
<h2 class="form-title">로그인</h2>
<form method="POST" class="register-form" id="login-form">
    <div class="form-group">
        <label for="id"><i class="zmdi zmdi-account material-icons-name"></i></label>
        <input type="text" name="id" id="id" placeholder="아이디를 입력하세요."/>
    </div>
    <div class="form-group">
        <label for="password"><i class="zmdi zmdi-lock"></i></label>
        <input type="password" name="password" id="password" placeholder="비밀번호를 입력하세요."/>
    </div>
    <div id="msg">
    </div>
    <div class="form-group">
        <input type="checkbox" name="remember-me" id="remember-me" class="agree-term" />
        <label for="remember-me" class="label-agree-term"><span><span></span></span>아이디 기억하기</label>
    </div>
    <div class="form-group form-button">
        <input type="button" onclick="loginChk()" name="signin" id="signin" class="form-submit" value="Log in"/>
        </div>
    </form>
    <div class="social-login">
        <span class="social-label">로그인 with </span>
        <ul class="socials">
            <li><a href="#"><i class="display-flex-center zmdi zmdi-facebook"></i></a></li>
            <li><a href="#"><i class="display-flex-center zmdi zmdi-twitter"></i></a></li>
            <li><a href="#"><i class="display-flex-center zmdi zmdi-google"></i></a></li>
        </ul>
    </div>
</div>
 -->



                </div>
            </div>
        </header>
        
 <%@include file="/WEB-INF/views/foot.jsp"%>       

