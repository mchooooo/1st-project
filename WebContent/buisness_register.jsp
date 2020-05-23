<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>헬스로드 | 사업자등록</title>
        <meta name="description" content="GARO is a real-estate template">
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
        <script type="text/javascript">
        if("${curUserType}"=="1"){
        	alert("일반 회원은 접근 할 수 없습니다.");
        	location.href="mypage.jsp";
        }
        
        
        function juso(){
        	window.open("jusoPopup.jsp","","width=400,height=400,left=600");
        }

        </script>
    </head>
    <body>

        <div id="preloader">
            <div id="status">&nbsp;</div> 
        </div>
        <!-- Body content -->

		<!-- <nav class="navbar navbar-default ">
            <div class="container">
                Brand and toggle get grouped for better mobile display
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navigation">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html"><img src="assets/img/logo.png" alt=""></a>
                </div>

                Collect the nav links, forms, and other content for toggling
                <div class="collapse navbar-collapse yamm" id="navigation">
                    <div class="button navbar-right">
                        <button class="navbar-btn nav-button wow bounceInRight login" data-wow-delay="0.4s">로그인/회원가입 </button>
                    </div>
                    <ul class="main-nav nav navbar-nav navbar-right">
                        <li class="dropdown ymm-sw " data-wow-delay="0.1s">
                            <a href="mypage.html" class="dropdown-toggle active" data-toggle="dropdown" data-hover="dropdown" data-delay="200">마이페이지 </a>
                        </li>

                        <li class="dropdown yamm-fw" data-wow-delay="0.1s">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="200">포인트충전 </a>
                        </li>

                        <li class="wow fadeInDown" data-wow-delay="0.4s"><a href="contact.html">헬스로드 소개 </a></li>
                    </ul>
                </div>/.navbar-collapse
            </div>/.container-fluid
        </nav> -->
        <jsp:include page="navigator.jsp"></jsp:include>

        <!-- register-area -->
        <div class="register-area" style="background-color: #FCFCFC;">&nbsp;
            <div class="container">
            	<div class="row">
                    <div class="col-sm-10 col-sm-offset-1 profiel-container">
        
        				
        				<form name="gymInsertForm" action="front?command=gymInsert" method="post" enctype="multipart/form-data">
        					<div class="profiel-header">
        						
                            	<h3>
                            		<b>사업자 등록 </b><br>
                            	</h3>
                            	<hr>
                            	</div>
                            	
                            	<div class="clear">
                            	
                            	<div class="col-sm-10 col-sm-offset-1">
                         
                                <div class="form-group">
                                    <label for="gymName">사업장 이름</label>
                                    <input type="text" class="form-control" name="gymName" id="gymName">
                                </div>
                                <div class="form-group">
                                    <label for="addr">주소</label>
                                    <input type="text" class="form-control" name="addr" id="addr" onclick="juso()">
                                </div>
                                <div class="form-group">
                                    <label for="phone">전화번호</label>
                                    <input type="text" class="form-control" name="phone" id="phone">
                                </div>
                                <div class="form-group">
                                    <label for="capacity">수용인원</label>
                                    <input type="text" class="form-control" name="capacity" id="capacity">
                                </div>
                                <div class="form-group">
                                    <label for="price">가격</label>
                                    <input type="text" class="form-control" name="price" id="price">
                                </div>
                                <div class="form-group">
                                    <label for=comment>사업장 소개</label>
                                    <input type="text" class="form-control" name="comment" id="comment">
                                </div>
                               <div class="form-group">
                                    <label for=time>이용 시간</label>
                                    <input type="text" class="form-control" name ="weekday" id="weekday" placeholder="평일 이용 시간"> 
                                    <br>
                                    <input type="text" class="form-control" name ="weekend" id="weekend" placeholder="주말 이용 시간">
                                </div>
                               <div class="form-group">
                                    <label for="file">헬스장 이미지 등록</label>
                                    <input type="file"  name ="file" id="file" >
                                </div>

                        <div class="col-sm-2 col-sm-offset-5">

						<input type='submit' class='btn btn-finish btn-primary pull-right' name='main' value='등록'>
						</div>
                     </div> 
                     </div>
                 </form>
                 </div>
                 <!-- 간격 조정 필요 -->
             </div>
        </div>      
	</div>
		
          <!-- Footer area-->
        <div class="footer-area">

<!--             <div class=" footer">
                <div class="container">
                    <div class="row">

                        <div class="col-md-3 col-sm-6 wow fadeInRight animated">
                            <div class="single-footer">
                                <h4>About us </h4>
                                <div class="footer-title-line"></div>

                                <img src="assets/img/footer-logo.png" alt="" class="wow pulse" data-wow-delay="1s">
                                <p>Lorem ipsum dolor cum necessitatibus su quisquam molestias. Vel unde, blanditiis.</p>
                                <ul class="footer-adress">
                                    <li><i class="pe-7s-map-marker strong"> </i> 9089 your adress her</li>
                                    <li><i class="pe-7s-mail strong"> </i> email@yourcompany.com</li>
                                    <li><i class="pe-7s-call strong"> </i> +1 908 967 5906</li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 wow fadeInRight animated">
                            <div class="single-footer">
                                <h4>Quick links </h4>
                                <div class="footer-title-line"></div>
                                <ul class="footer-menu">
                                    <li><a href="properties.html">Properties</a>  </li> 
                                    <li><a href="#">Services</a>  </li> 
                                    <li><a href="submit-property.html">Submit property </a></li> 
                                    <li><a href="contact.html">Contact us</a></li> 
                                    <li><a href="faq.html">fqa</a>  </li> 
                                    <li><a href="faq.html">Terms </a>  </li> 
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 wow fadeInRight animated">
                            <div class="single-footer">
                                <h4>Last News</h4>
                                <div class="footer-title-line"></div>
                                <ul class="footer-blog">
                                    <li>
                                        <div class="col-md-3 col-sm-4 col-xs-4 blg-thumb p0">
                                            <a href="single.html">
                                                <img src="assets/img/demo/small-proerty-2.jpg">
                                            </a>
                                            <span class="blg-date">12-12-2016</span>

                                        </div>
                                        <div class="col-md-8  col-sm-8 col-xs-8  blg-entry">
                                            <h6> <a href="single.html">Add news functions </a></h6> 
                                            <p style="line-height: 17px; padding: 8px 2px;">Lorem ipsum dolor sit amet, nulla ...</p>
                                        </div>
                                    </li> 

                                    <li>
                                        <div class="col-md-3 col-sm-4 col-xs-4 blg-thumb p0">
                                            <a href="single.html">
                                                <img src="assets/img/demo/small-proerty-2.jpg">
                                            </a>
                                            <span class="blg-date">12-12-2016</span>

                                        </div>
                                        <div class="col-md-8  col-sm-8 col-xs-8  blg-entry">
                                            <h6> <a href="single.html">Add news functions </a></h6> 
                                            <p style="line-height: 17px; padding: 8px 2px;">Lorem ipsum dolor sit amet, nulla ...</p>
                                        </div>
                                    </li> 

                                    <li>
                                        <div class="col-md-3 col-sm-4 col-xs-4 blg-thumb p0">
                                            <a href="single.html">
                                                <img src="assets/img/demo/small-proerty-2.jpg">
                                            </a>
                                            <span class="blg-date">12-12-2016</span>

                                        </div>
                                        <div class="col-md-8  col-sm-8 col-xs-8  blg-entry">
                                            <h6> <a href="single.html">Add news functions </a></h6> 
                                            <p style="line-height: 17px; padding: 8px 2px;">Lorem ipsum dolor sit amet, nulla ...</p>
                                        </div>
                                    </li> 


                                </ul>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 wow fadeInRight animated">
                            <div class="single-footer news-letter">
                                <h4>Stay in touch</h4>
                                <div class="footer-title-line"></div>
                                <p>Lorem ipsum dolor sit amet, nulla  suscipit similique quisquam molestias. Vel unde, blanditiis.</p>

                                <form>
                                    <div class="input-group">
                                        <input class="form-control" type="text" placeholder="E-mail ... ">
                                        <span class="input-group-btn">
                                            <button class="btn btn-primary subscribe" type="button"><i class="pe-7s-paper-plane pe-2x"></i></button>
                                        </span>
                                    </div>
                                    /input-group
                                </form> 

                                <div class="social pull-right"> 
                                    <ul>
                                        <li><a class="wow fadeInUp animated" href="https://twitter.com/kimarotec"><i class="fa fa-twitter"></i></a></li>
                                        <li><a class="wow fadeInUp animated" href="https://www.facebook.com/kimarotec" data-wow-delay="0.2s"><i class="fa fa-facebook"></i></a></li>
                                        <li><a class="wow fadeInUp animated" href="https://plus.google.com/kimarotec" data-wow-delay="0.3s"><i class="fa fa-google-plus"></i></a></li>
                                        <li><a class="wow fadeInUp animated" href="https://instagram.com/kimarotec" data-wow-delay="0.4s"><i class="fa fa-instagram"></i></a></li>
                                        <li><a class="wow fadeInUp animated" href="https://instagram.com/kimarotec" data-wow-delay="0.6s"><i class="fa fa-dribbble"></i></a></li>
                                    </ul> 
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div> -->

            <!-- <div class="footer-copy text-center">
                <div class="container">
                    <div class="row">
                        <div class="pull-left">
                            <span> (C) <a href="#">OpenMind</a> , All rights reserved 2019  </span> 
                        </div> 
                        <div class="bottom-menu pull-right"> 
                            <ul> 
                               <li><a class="wow fadeInUp animated" href="#" data-wow-delay="0.2s">회사소개</a></li>
                               <li><a class="wow fadeInUp animated" href="#" data-wow-delay="0.4s">포인트충전</a></li>
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

        <script src="assets/js/main.js"></script>

    </body>
</html>