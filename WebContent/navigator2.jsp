<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>


<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>헬스로드 | Home page</title>
<meta name="description" content="GARO is a real-estate template">
<meta name="author" content="Kimarotec">
<meta name="keyword"
	content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800'
	rel='stylesheet' type='text/css'>

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
<link rel="icon" href="favicon.ico" type="image/x-icon">

<link rel="stylesheet" href="assets/css/normalize.css">
<link rel="stylesheet" href="assets/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/fontello.css">
<link href="assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css"
	rel="stylesheet">
<link href="assets/fonts/icon-7-stroke/css/helper.css" rel="stylesheet">
<link href="assets/css/animate.css" rel="stylesheet" media="screen">
<link rel="stylesheet" href="assets/css/bootstrap-select.min.css">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/icheck.min_all.css">
<link rel="stylesheet" href="assets/css/price-range.css">
<link rel="stylesheet" href="assets/css/owl.carousel.css">
<link rel="stylesheet" href="assets/css/owl.theme.css">
<link rel="stylesheet" href="assets/css/owl.transitions.css">
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/responsive.css">

<script src="js/jquery-3.4.1.min.js"></script> 
<script type="text/javascript">

$(function(){

	$("#login").click(function(){
		if($(this).text() == "로그인/회원가입"){
			alert($(this).text())
   		location.href="register.jsp";
   	} else {
   		alert($(this).text());
   		location.href="front?command=login";
   	}
		
	}); 	    	 
	 
		</script>
</head>
<body>
	<nav class="navbar navbar-default ">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navigation">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.html"><img
					src="assets/img/HealthRoad2.png" alt=""></a>
				<!-- 로고이미지 바꾸기 -->
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse yamm" id="navigation">
				<div class="button navbar-right">
					<button class="navbar-btn nav-button wow bounceInRight login" id="login" data-wow-delay="0.4s"><c:choose><c:when test="${curUserType eq '0'}">로그인/회원가입</c:when><c:otherwise>로그아웃</c:otherwise></c:choose></button>
				</div>
				
				<ul class="main-nav nav navbar-nav navbar-right">
					<li class="dropdown ymm-sw " data-wow-delay="0.1s">
						<!-- 여기href 바꿔야함--> 
						<a href="mypage.jsp" class="dropdown-toggle" data-hover="dropdown" data-delay="200">마이페이지 </a>

					</li>


					<li class="dropdown ymm-sw " data-wow-delay="0.1s">
						<a class="" href="point_charge.jsp">포인트충전 </a>
					</li>
					<li class="dropdown ymm-sw " data-wow-delay="0.1s">
						<!-- 여기href 바꿔야함--> 
						<a href="contact-3.jsp" class="dropdown-toggle" data-hover="dropdown" data-delay="200">헬스로드 소개 </a>
					</li>

					<!-- <li class="wow fadeInDown" data-wow-delay="0.4s"><a href="contact.html">Contact</a></li> -->
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>
	<!-- End of nav bar -->
</body>
</html>