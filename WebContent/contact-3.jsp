<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> 
<html class="no-js"> <!--<![endif]-->
    <head>
         <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>헬스로드 | 헬스로드 소개</title>
        <meta name="description" content="company is a real-estate template">
        <meta name="author" content="Kimarotec">
        <meta name="keyword" content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>

        <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
        <link rel="icon" href="favicon.ico" type="image/x-icon">

        <link rel="stylesheet" href="assets/css/normalize.css">
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/fontello.css">
        <link href="assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet">
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
    </head>
    <body>

        <div id="preloader">
            <div id="status">&nbsp;</div>
        </div>

        <%-- <nav class="navbar navbar-default ">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navigation">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html"><img src="assets/img/HealthRoad2.png" alt=""></a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse yamm" id="navigation">
                    <div class="button navbar-right">
                        <button class="navbar-btn nav-button wow bounceInRight login" onclick=" window.open('register.html')" data-wow-delay="0.4s">로그인/회원가입</button>
                    </div>
                    <ul class="main-nav nav navbar-nav navbar-right">
                        <li class="dropdown ymm-sw " data-wow-delay="0.1s">
                            <a href="index.html" class="dropdown-toggle active" data-toggle="dropdown" data-hover="dropdown" data-delay="200">마이페이지 </a>
                        </li>

                        <li class="dropdown <!-- yamm-fw" data-wow-delay="0.1s">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="200">포인트충전 </a>
                        </li>

                        <li class="wow fadeInDown" data-wow-delay="0.4s"><a href="contact-3.jsp">헬스로드 소개 </a></li>

                    </ul>
                </div>/.navbar-collapse
            </div>/.container-fluid
        </nav> --%>
        <!-- End of nav bar -->
        <jsp:include page="navigator.jsp"></jsp:include>
        <!-- ------------------------------------------영상 시작-------------------------------------------- -->
		<div style="position: relative; z-index: -99; width: 100%; height: 860px;">
			<iframe style="position: relative" width=100% height=100% 
			src="https://www.youtube.com/embed/w-cRWOjlk8c?rel=0;amp;autoplay=1&amp;mute=1;start=258&playlist=w-cRWOjlk8c" 
			frameborder="0" 
			allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" 
			allowfullscreen></iframe>
		</div>
        <!-- ------------------------------------------영상 끝-------------------------------------------- -->

        <div class="intro-section" id="home-section" style="background-color: #ccc;">
      
          <div class="container">
    
            <div class="row align-items-center">
            
              <div class="col-lg-12 mx-auto text-center" data-aos="fade-up">
              
              
                <h1 class="mb-3">헬스로드</h1><br>
                <p class="lead mx-auto desc mb-5">언제 어디서나 회사 근처. 집 근처. 밤에도 낮에도. 장소, 시간 걱정하지 말고 시작하세요. <em><strong>헬스로드 하나면 OK!</strong></em><br>
                                        하나의 멤버십으로 30개 이상 종목, 3,289개 제휴시설을 매일 매일 바꿔가며 이용하세요! </p>
                <p class="text-center">
                  <a href="index.html" class="btn btn-outline-white py-3 px-5">Get Started</a>
                </p>
              </div>
            </div>
    
          </div>
        </div>
                            
        <!-- End page header -->

        <!-- property area -->
        <div class="content-area recent-property padding-top-40" style="background-color: #FFF;">
            <div class="container">  

                <div class="col-md-9">

                    <div class="" id="contact1">                        
                        <div class="row">
                            <div class="col-sm-4">
                                <h3><i class="fa fa-map-marker"></i> 주소</h3>
                                <p>13494
                                    <br>경기도 성남시 분당구 대왕판교로 670길
                                    <br>유스페이스2
                                    <br>
                                    <strong>헬스로드</strong>
                                </p>
                            </div>
                            <!-- /.col-sm-4 -->
                            <div class="col-sm-4">
                                <h3><i class="fa fa-phone"></i> 고객센터</h3>
                                <p class="text-muted">도움이 필요하신가요?<br>
                                 고객님의 의견을 적극 수렴하는 헬스로드가 되겠습니다.</p>
                                <p><strong>031-606-9316</strong></p>
                            </div>
                            <!-- /.col-sm-4 -->
                            <div class="col-sm-4">
                                <h3><i class="fa fa-envelope"></i> 1:1문의</h3>
                                <p class="text-muted">해결되지 않은 문제가 있다면 1:1문의로 문의주세요.</p>
                                <ul>
                                    <li><strong><a href="mailto:">info@healthroad.com</a></strong>   </li>
                                    <li> - 이메일로 연락주세요.</li>
                                </ul>
                            </div>
                            <!-- /.col-sm-4 -->
                        </div>
                        <!-- /.row --> 
                       
                        <hr>
                        
                        <!-- 양식제거 -->
                    </div>
                </div>
                <!-- /.col-md-9 -->   

				<!-- 양식제거 -->
                           
            </div>
        </div>
         <!-- Footer area-->
        <!-- <div class="footer-area">

            <div class="footer-copy text-center">
                <div class="container">
                    <div class="row">
                        <div class="pull-left">
                            <span> (C) <a href="#">OpenMind</a> , All rights reserved 2019  </span> 
                        </div> 
                        <div class="bottom-menu pull-right"> 
                            <ul> 
                                <li><a class="wow fadeInUp animated" href="#" data-wow-delay="0.2s">Home</a></li>
                                <li><a class="wow fadeInUp animated" href="#" data-wow-delay="0.3s">Property</a></li>
                                <li><a class="wow fadeInUp animated" href="#" data-wow-delay="0.4s">Faq</a></li>
                                <li><a class="wow fadeInUp animated" href="#" data-wow-delay="0.6s">Contact</a></li>
                            </ul> 
                        </div>
                    </div>
                </div>
            </div> -->
			<jsp:include page="footer.jsp"></jsp:include>
        </div>

        <script src="assets/js/modernizr-2.6.2.min.js"></script>
        <script src="assets/js/jquery-1.10.2.min.js"></script> 
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/bootstrap-select.min.js"></script>
        <script src="assets/js/bootstrap-hover-dropdown.js"></script>

        <script src="assets/js/easypiechart.min.js"></script>
        <script src="assets/js/jquery.easypiechart.min.js"></script>

        <script src="assets/js/owl.carousel.min.js"></script>
        <script src="assets/js/wow.js"></script>

        <script src="assets/js/icheck.min.js"></script>
        <script src="assets/js/price-range.js"></script>
        
        <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&amp;sensor=false"></script>
        <script src="assets/js/gmaps.js"></script>        
        <script src="assets/js/gmaps.init.js"></script>

        <script src="assets/js/main.js"></script>

    </body>
</html>