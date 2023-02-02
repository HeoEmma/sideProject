<%@ page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@include file="/WEB-INF/views/head.jsp"%>
        
        <!-- Masthead-->
        <header class="masthead">
            <div class="container px-4 px-lg-5 h-100">
                <div class="row gx-4 gx-lg-5 h-100 align-items-center justify-content-center text-center">
                    <div class="col-lg-8 align-self-end">
                        <h1 class="text-white font-weight-bold">To Your Favorite Place</h1>
                        <hr class="divider" />
                    </div>
                    <div class="col-lg-8 align-self-baseline">
                        <p class="text-white-75 mb-5">Start your trip with us, TO ANYWHERE. <br/>Let us help you make your stay more comfortable.</p>
                        <a class="btn btn-primary btn-xl" href="#about">Find Out More</a>
                    </div>
                </div>
            </div>
        </header>
        <!-- About-->
        <section class="page-section bg-primary" id="about">
            <div class="container px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-lg-8 text-center">
                        <h2 class="text-white mt-0">We've got what you need!</h2>
                        <hr class="divider divider-light" />
                        <!-- <p class="text-black-75 mb-4">Start your trip with TO ANYWHERE. We can help you to figure out what you really want to go. Let's have such a great trip!</p> -->
                        <div class="col-lg-8 text-center" style="margin:auto;">
                       			다음에 머무를 숙소를 찾아보세요.<br/>
                       			<p>
                       				다양한 숙소가 한곳에!
                       			</p>
                   		</div>
                    </div>
                </div>
            </div>
            <div class="container px-4 px-lg-5 p-3"  style="background-color:#FFF0DB;">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-lg-8 text-center">
	                        <form action="#" class="justify-content-center">
								<table class="justify-content-center" style="margin:auto;">
	                        	<!-- 목적지 -->
		                        	<thead>
			                        	<tr>
			                        		<td colspan="4">
			                        			목적지를 입력해주세요.
			                        		</td>
			                        	</tr>
		                        	</thead>
			                        <tbody>
			                        	<tr>
			                        		<td colspan="1" >
			                        			<img alt="bed" src="img/icon/bed.png" align="middle">
			                        		</td>
			                        		<td colspan="3">
			                        			<input type="text" placeholder="어디로 향하시나요?">
			                        		</td>
			                        	</tr>
			                        	<!-- 체크인/아웃 -->
			                        	<tr>
			                        		<td colspan="1" rowspan="2">
			                        			<img alt="calendar-black" src="img/icon/cal-white.png"  align="middle">
			                        		</td>
			                        		<td colspan="3">
			                        			체크인
			                        		</td>
			                        		<td colspan="1" rowspan="2">
			                        			<img alt="calendar-white" src="img/icon/cal-black.png" align="middle">
			                        		</td>
			                        		<td colspan="3">
			                        			체크아웃
			                        		</td>
			                        	</tr>
			                        	<tr>
			                        		<td colspan="1"></td>
			                        		<td colspan="1">
			                        			<input type="date">
			                        		</td>
			                        		<td colspan="1"></td>
			                        		<td colspan="1">
			                        			<input type="date">
			                        		</td>
			                        	</tr>
			                        	<!-- 객실 수, 숙박 인원(성인/아동) -->
			                        	<tr >
			                        		<td colspan="1" rowspan="2">
			                        			<img alt="customer" src="img/icon/customer.png" align="middle">
			                        		</td>
			                        		<td colspan="4">
			                        			객실 수와 숙박 인원수
			                        		</td>
			                        	</tr>	
			                        	<tr>
			                        		<td>
			                        		</td>
			                        		<td>
			                        			<div class="btn-group" align="right">
												  <div class="btn-group" >
												    <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown">성인</button>
												    <div class="dropdown-menu">
												    	<div>
												      		인원 <input type="number" value="2" size="10px"> 명
												      	</div>
												    </div>
												  </div>
												  <div class="btn-group" >
												    <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown">아동</button>
												    <div class="dropdown-menu">
												      <input type="number" value="2" size="10px">
												    </div>
												  </div>
												  <div class="btn-group" >
												    <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown">객실</button>
												    <div class="dropdown-menu">
												      <input type="number" value="1" size="10px">
												    </div>
												  </div>
												</div>
			                        		</td>
			                        	</tr>
			                        	<!-- 검색 버튼 -->
			                        	<tr>
			                        		
			                        		<td colspan="4" align="center">
			                        			<button type="submit" class="btn btn-light btn-xl">검색!</button>
			                        		</td>
			                        		<td></td><td></td>
			                        	</tr>
		                        	</tbody>
		                        </table>
	                        </form>
                    </div>
                </div>
            </div>
        </section>
        
        <!-- Services-->
        <section class="page-section" id="services">
            <div class="container px-4 px-lg-5">
                <h2 class="text-center mt-0">Services for you</h2>
                <hr class="divider" />
                <div class="row gx-4 gx-lg-5">
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="mt-5">
                            <div class="mb-2"><i class="bi-gem fs-1 text-primary"></i></div>
                            <h3 class="h4 mb-2">Easy pay</h3>
                            <p class="text-muted mb-0">
                            	You can pay with Kakao Pay or Naver Pay. <br/>
                            </p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="mt-5">
                            <div class="mb-2"><i class="bi-laptop fs-1 text-primary"></i></div>
                            <h3 class="h4 mb-2">Free cancellation fee</h3>
                            <p class="text-muted mb-0">
                            	There is no cancellation fee before 24 hours of check-in.
                            </p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="mt-5">
                            <div class="mb-2"><i class="bi-globe fs-1 text-primary"></i></div>
                            <h3 class="h4 mb-2">문의</h3>
                            <p class="text-muted mb-0">
								If you cancel it within 10 minutes, 
                            	<br/>
								you can cancel the payment right away.
                            </p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="mt-5">
                            <div class="mb-2"><i class="bi-heart fs-1 text-primary"></i></div>
                            <h3 class="h4 mb-2">After Service</h3>
                            <p class="text-muted mb-0">Is it really open source if it's not made with love?</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
        <!-- Portfolio-->
        <div id="portfolio">
            <div class="container-fluid p-0">
                <div class="row g-0">
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="img/portfolio/fullsize/1.jpg" title="Project Name">
                            <img class="img-fluid" src="img/portfolio/thumbnails/1.jpg" alt="..." />
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">Category</div>
                                <div class="project-name">Project Name</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="img/portfolio/fullsize/2.jpg" title="Project Name">
                            <img class="img-fluid" src="img/portfolio/thumbnails/2.jpg" alt="..." />
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">Category</div>
                                <div class="project-name">Project Name</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="img/portfolio/fullsize/3.jpg" title="Project Name">
                            <img class="img-fluid" src="img/portfolio/thumbnails/3.jpg" alt="..." />
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">Category</div>
                                <div class="project-name">Project Name</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="img/portfolio/fullsize/4.jpg" title="Project Name">
                            <img class="img-fluid" src="img/portfolio/thumbnails/4.jpg" alt="..." />
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">Category</div>
                                <div class="project-name">Project Name</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="img/portfolio/fullsize/5.jpg" title="Project Name">
                            <img class="img-fluid" src="img/portfolio/thumbnails/5.jpg" alt="..." />
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">Category</div>
                                <div class="project-name">Project Name</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="resources/img/portfolio/fullsize/6.jpg" title="Project Name">
                            <img class="img-fluid" src="resources/img/portfolio/thumbnails/6.jpg" alt="..." />
                            <div class="portfolio-box-caption p-3">
                                <div class="project-category text-white-50">Category</div>
                                <div class="project-name">Project Name</div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- Contact 회원 가입 시 활용할 코드-->
        <!-- <section class="page-section" id="contact">
            <div class="container px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-lg-8 col-xl-6 text-center">
                        <h2 class="mt-0">Let's Get In Touch!</h2>
                        <hr class="divider" />
                        <p class="text-muted mb-5">Ready to start your next project with us? Send us a messages and we will get back to you as soon as possible!</p>
                    </div>
                </div>
                <div class="row gx-4 gx-lg-5 justify-content-center mb-5">
                    <div class="col-lg-6">
                        * * * * * * * * * * * * * * *
                        * * SB Forms Contact Form * *
                        * * * * * * * * * * * * * * *
                        This form is pre-integrated with SB Forms.
                        To make this form functional, sign up at
                        https://startbootstrap.com/solution/contact-forms
                        to get an API token!
                        <form id="contactForm" data-sb-form-api-token="API_TOKEN">
                            Name input
                            <div class="form-floating mb-3">
                                <input class="form-control" id="name" type="text" placeholder="Enter your name..." data-sb-validations="required" />
                                <label for="name">Full name</label>
                                <div class="invalid-feedback" data-sb-feedback="name:required">A name is required.</div>
                            </div>
                            Email address input
                            <div class="form-floating mb-3">
                                <input class="form-control" id="email" type="email" placeholder="name@example.com" data-sb-validations="required,email" />
                                <label for="email">Email address</label>
                                <div class="invalid-feedback" data-sb-feedback="email:required">An email is required.</div>
                                <div class="invalid-feedback" data-sb-feedback="email:email">Email is not valid.</div>
                            </div>
                            Phone number input
                            <div class="form-floating mb-3">
                                <input class="form-control" id="phone" type="tel" placeholder="(123) 456-7890" data-sb-validations="required" />
                                <label for="phone">Phone number</label>
                                <div class="invalid-feedback" data-sb-feedback="phone:required">A phone number is required.</div>
                            </div>
                            Message input
                            <div class="form-floating mb-3">
                                <textarea class="form-control" id="message" type="text" placeholder="Enter your message here..." style="height: 10rem" data-sb-validations="required"></textarea>
                                <label for="message">Message</label>
                                <div class="invalid-feedback" data-sb-feedback="message:required">A message is required.</div>
                            </div>
                            Submit success message
                           
                            This is what your users will see when the form
                            has successfully submitted
                            <div class="d-none" id="submitSuccessMessage">
                                <div class="text-center mb-3">
                                    <div class="fw-bolder">Form submission successful!</div>
                                    To activate this form, sign up at
                                    <br />
                                    <a href="https://startbootstrap.com/solution/contact-forms">https://startbootstrap.com/solution/contact-forms</a>
                                </div>
                            </div>
                            Submit error message
                           
                            This is what your users will see when there is
                            an error submitting the form
                            <div class="d-none" id="submitErrorMessage"><div class="text-center text-danger mb-3">Error sending message!</div></div>
                            Submit Button
                            <div class="d-grid"><button class="btn btn-primary btn-xl disabled" id="submitButton" type="submit">Submit</button></div>
                        </form>
                    </div>
                </div>
            </div>
        </section> -->
        <section class="page-section" id="contact">
        	<div class="row gx-4 gx-lg-5 justify-content-center mb-5">
		        <div class="row gx-4 gx-lg-5 justify-content-center">
		            <div class="col-lg-4 text-center mb-5 mb-lg-0">
		                <i class="bi-phone fs-2 mb-3 text-muted"></i>
		            	<p class="text-black-75 mb-5">Ask more</p>
		                <div>+82 (010) 0000-0000</div>
		            </div>
		        </div>
	        </div>
        </section>
        
        
 <%@include file="/WEB-INF/views/foot.jsp"%>       

