<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.Iterator" %>
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
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<title>To Somewhere</title>
</head>
<body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="#page-top">to ANYWHERE</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto my-2 my-lg-0">
                        <li class="nav-item"><a class="nav-link" href="#about">toANYWHERE</a></li>
                        <li class="nav-item"><a class="nav-link" href="#services">?????????</a></li>
                        <!-- <li class="nav-item"><a class="nav-link" href="#portfolio">Portfolio</a></li> -->
                        <li class="nav-item"><a class="nav-link" href="#contact">????????????</a></li>
                        <c:if test="${customerInfo.getName() != null}">
                        	<li class="nav-item"><a class="nav-link" href="logout">${customerInfo.getName()} ??? ????????????</a></li>
                        </c:if>
                        <c:if test="${customerInfo.getName() == null}">
                        	<li class="nav-item"><a class="nav-link" href="login">login</a></li>
                        </c:if>
                    </ul>
                </div>
            </div>
        </nav>