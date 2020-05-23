<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> 
<html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>헬스로드 | 상세페이지</title>
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
        <link rel="stylesheet" href="assets/css/lightslider.min.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/responsive.css">
        <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
        <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=737a889062e3dac79756431c0f5477d1&libraries=services"></script> <!-- 반드시 실행 코드보다 먼저 선언되어야 한다. -->
        
        
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="font-awesome/css/font-awesome.min.css" />
    </head>
    <body>

        <div id="preloader">
            <div id="status">&nbsp;</div>
        </div>
        <!-- Body content -->

              
        <!--End top header -->

<!--         <nav class="navbar navbar-default "> -->
<!--             <div class="container"> -->
<!--                 Brand and toggle get grouped for better mobile display -->
<!--                 <div class="navbar-header"> -->
<!--                     <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navigation"> -->
<!--                         <span class="sr-only">Toggle navigation</span> -->
<!--                         <span class="icon-bar"></span> -->
<!--                         <span class="icon-bar"></span> -->
<!--                         <span class="icon-bar"></span> -->
<!--                     </button> -->
<!--                     <a class="navbar-brand" href="index.html"><img src="assets/img/logo.png" alt=""></a> -->
<!--                 </div> -->

<!--                 Collect the nav links, forms, and other content for toggling -->
<!--                 <div class="collapse navbar-collapse yamm" id="navigation"> -->
<!--                     <div class="button navbar-right"> -->
<!--                         <button class="navbar-btn nav-button wow bounceInRight login" onclick=" window.open('register.html')" data-wow-delay="0.4s">로그인/회원가입</button> -->
                        
<!--                     </div> -->
<!--                     <ul class="main-nav nav navbar-nav navbar-right"> -->
<!--                         <li class="dropdown ymm-sw " data-wow-delay="0.1s"> -->
<!--                             <a href="index.html" class="dropdown-toggle active" data-toggle="dropdown" data-hover="dropdown" data-delay="200">마이페이지</b></a> -->
                            
<!--                         </li> -->

                        
<!--                         <li class="wow fadeInDown" data-wow-delay="0.1s"><a class="" href="property.html">포인트충전</a></li> -->
<!--                         <li class="dropdown yamm-fw" data-wow-delay="0.1s"> -->
<!--                             <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="200">서비스소개</a> -->
<!--                             <ul class="dropdown-menu"> -->
                                
<!--                             </ul> -->
<!--                         </li> -->

                        
<!--                     </ul> -->
<!--                 </div>/.navbar-collapse -->
<!--             </div>/.container-fluid -->
<!--         </nav> -->
		<jsp:include page="navigator.jsp"></jsp:include>
        <!-- End of nav bar -->

        <!-- End page header -->

        <!-- property area -->
        <div class="content-area single-property" style="background-color: #FCFCFC;">&nbsp;
            <div class="container"> 
            
            <div class="">											<!-- ${requestScope.gym.name} -->
        	<h2 style="left:100px" class="wow fadeInLeft animated">${requestScope.gym.name}</h2>
            	<div class="title-line wow fadeInRight animated"></div>
       		 </div>  

                <div class="clearfix padding-top-40" >

                    <div class="col-md-8 single-property-content prp-style-1 ">
                        <div class="row">
                            <div class="light-slide-item">            
                                <div class="clearfix">
                                    <div class="favorite-and-print">
                                        <a class="add-to-fav" href="#login-modal" data-toggle="modal">
                                            <i class="fa fa-star-o"></i>
                                        </a>
                                        <a class="printer-icon " href="javascript:window.print()">
                                            <i class="fa fa-print"></i> 
                                        </a>
                                    </div> 

                                    <ul id="image-gallery" class="gallery list-unstyled cS-hidden">
                                        <li data-thumb="${pageContext.request.contextPath}/save/gym/${gym.fileName}"> 
                                            <img src="${pageContext.request.contextPath}/save/gym/${gym.fileName}" />
                                        </li>
                                        <li data-thumb="${pageContext.request.contextPath}/save/property/health.PNG"> 
                                            <img src="${pageContext.request.contextPath}/save/property/health.PNG" />
                                        </li>
                                        
                                                                              
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="single-property-wrapper">
                            <div class="single-property-header">                                          
                                <h1 class="property-title pull-left">환영합니다</h1>
                                
                                <form action ="${pageContext.request.contextPath}/front?command=userPointToGym" method="post">
                                <input type ="hidden" name="gymCode" value="${requestScope.gym.code}">
                                <input type = "hidden" name="price" value="${requestScope.gym.price}">
                                <input type = "hidden" name="gymName" value="${requestScope.gym.name}">
                                <p align="right">
                                <button class="btn btn-primary btn-lg" style="background-color:#FF8000" name="btnn">이용하기</button>
                                </p>
                                <span class="property-price pull-right" style="text-align:right">${requestScope.gym.price}p</span>
                                </form>
                            </div>

                            
                            <!-- .property-meta -->

                            <div class="section">
                            
                                <h4 class="s-property-title">소개의 말</h4>
                                
                                <div class="s-property-content">
                                		<!-- ${requestScope.gym.comment} -->
                                    <p>${requestScope.gym.comment}  </p>
                                    
								
                                  
                                </div>
            <!-- /////////////////////////////////////////////////// -->
                                <div>
									<h4 class="s-property-title">총 별점 </h4> <h1 class="rating-num">${requestScope.gym.avgScore}</h1><h4 class="s-property-title" style="position:relative; top:-38px; left:55px;">점 </h4>
								</div>
<%-- 								<c:set scope="request" var="gymCode" value="${requestScope.gym.code}"></c:set> --%>
								<form action="${pageContext.request.contextPath}/front?command=insertReviewForm" method="post" >
								<button class="btn btn-primary" style="background-color:#FF8000" id="insertReview" name="btnn">리뷰작성하기</button> <!-- onclick="window.open('review_insert.jsp', '_blank', 'width=550, height=400, toolbar=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no' );" -->
								<input type="hidden" name=gymCode value ="${requestScope.gym.code}"/>
								</form>
								<c:choose>
								<c:when test = "${empty requestScope.review}">
								<div style="width:30%; height:20px; background-color:#F2F2F2">등록된 리뷰가 없습니다.</div>
								</c:when>
								<c:otherwise>
								
								<c:forEach items="${requestScope.review}" var = "reviewList">
								<div><!-- comment container 시작 -->
									<h3 class="s-property-title">리뷰</h3>
									
									
									<!-- 리뷰 삭제 form -->
									<form method="post" action ="${pageContext.request.contextPath}/front?command=deleteReview">
									<div style="width:20%; height:20px; background-color:#F2F2F2; text-align: center">별점<input type="text" value="${reviewList.starScore}" readonly="readonly" style="background-color:#F2F2F2; position:relative; top:-20px; left:150px; width:350px"></div>
									<div style="width:20%; height:20px; background-color:#FFFFFF; text-align: center">작성자<input type="text" value="${reviewList.memberId}" name="memberId" readonly="readonly" style="background-color:#FFFFFF; position:relative; top:-20px; left:150px; width:350px"></div>
									<div style="width:20%; height:100px; background-color:#F2F2F2; text-align: center; position:relative; vertical-align: middle;">내용 
									<textarea rows="" cols="" readonly="readonly" style="background-color:#F2F2F2; position:relative;  top:-20px; left:150px; width:350px;border-color:white; height:100px; resize: none">   ${reviewList.content}</textarea>
									
<%-- 									<input type="text" readonly="readonly" style="white-space:normal; background-color:#F2F2F2; position:relative; top:-20px; left:150px; width:350px; height:100px" value="${reviewList.content}"> --%>		
									</div>
									<input type="hidden" value="${reviewList.code}" name="reviewCode"> 
									<input type="hidden" value="${requestScope.gym.code}" name = "gymCode">
									
									
									<div style="width: 500px; height:auto; overflow: hidden">
									<c:if test="${not empty reviewList.fileName}">
									<img id="review_pic" src="${pageContext.request.contextPath}/save/review/${reviewList.fileName}" style="position:relative;  margin: 5px 5px 5px 0px;" >
									</c:if>
									
									</div><!-- ${pageContext.request.contextPath}/save/review" -->
 									<c:if test="${reviewList.memberId == sessionScope.curUserId}">
									<span ><input type="submit" name="rBtn" value="삭제" style="text-align:center; position: relative; width:50px; background-color:orange; color:white;"></span>
									</c:if>
									</form>
									<!--삭제 form끝 -->
									<!--리뷰 업데이트 form 시작 -->
									<form method="post" action="${pageContext.request.contextPath}/front?command=updateReviewForm">
									<input type="hidden" value="${reviewList.memberId}" name="memberId" >
									<input type="hidden" value="${reviewList.code}" name="reviewCode"> 
									<input type="hidden" value="${requestScope.gym.code}" name = "gymCode">
									<input type="hidden" value="${reviewList.content}" name = "reviewContent">
									<input type="hidden" value="${reviewList.fileName}" name = "reviewFileName">
									<c:if test="${reviewList.memberId == sessionScope.curUserId}">
											<span><input type="submit" name="rBtn" value="수정" style="text-align:center; position: relative; left:55px; top:-30px; width:50px; background-color:orange; color:white;"></span>
										</c:if>
									</form>
									<!-- 리뷰 업데이트 form 끝 -->
								</div><!-- comment container 끝 -->
								</c:forEach>
								
								</c:otherwise>
								</c:choose>
								<hr>
             <!-- //////////////////////////////////////////////////// -->
                            </div>
                            <!-- End description area  -->

                              
                            <!-- End additional-details area  -->

                            
                            <!-- End features area  -->

                                          
                        </div>
                        
                    
                        
                    </div>
					
					
                    <div class="col-md-4 p0">
                        <aside class="sidebar sidebar-property blog-asside-right">
                            <div class="dealer-widget">
                                <div class="dealer-content">
                                    <div class="inner-wrapper">

                                        <div class="clear">
                                            
                                            <div class="col-xs-8 col-sm-8 ">
                                                <h3 class="dealer-name">
                                                    <a href="">${requestScope.gym.name}</a>
                                                       
                                                </h3>
                                                

                                            </div>
                                        </div>

                                        <div class="clear">
                                            <ul class="dealer-contacts">                                       
                                                <li><i class="pe-7s-map-marker strong"> </i> ${requestScope.gym.addr}</li>
                                                <li><i class="pe-7s-mail strong"> </i> hahahoho@gaver.com</li>
                                                <li><i class="pe-7s-call strong"> </i> ${requestScope.gym.phoneNum}</li>
                                            </ul>
<%--                                             <p>${requestScope.gym.comment}</p> --%>
                                        </div>

                                    </div>
                                </div>
                            </div>

                                                      

                            <div class="panel panel-default sidebar-menu wow fadeInRight animated">
                                <div class="panel-heading">
                                    <h3 class="panel-title">상세 위치  </h3>
                                </div>
                                <div class="panel-body recent-property-widget">
                                	<!-- 지도 출력할 위치 -->
                                   
                                    <div style="width:100%; height:400px" id='map' ></div>
                                </div>
                            </div>

                            

                        </aside>
                    </div>
                </div>

            </div>
        </div>
		
		
		

          <!-- Footer area-->
        <div class="footer-area">

            <!-- <div class=" footer">
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
            </div>

            <div class="footer-copy text-center">
                <div class="container">
                    <div class="row">
                        <div class="pull-left">
                            <span> (C) <a href="#">OpenMind</a> , All rights reserved 2016  </span> 
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
          
        
        
        <script src="assets/js/vendor/modernizr-2.6.2.min.js"></script>
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
        <script type="text/javascript" src="assets/js/lightslider.min.js"></script>
        <script src="assets/js/main.js"></script>

        <script>
            $(document).ready(function () {
                $('#image-gallery').lightSlider({
                    gallery: true,
                    item: 1,
                    thumbItem: 9,
                    slideMargin: 0,
                    speed: 500,
                    auto: true,
                    loop: true,
                    onSliderLoad: function () {
                        $('#image-gallery').removeClass('cS-hidden');
                    }
                });
            });
        </script>
        
        <script>
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			    mapOption = {
			        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			        level: 3 // 지도의 확대 레벨
			    };  
			
			// 지도를 생성합니다    
			var map = new kakao.maps.Map(mapContainer, mapOption); 
			
			// 주소-좌표 변환 객체를 생성합니다
			var geocoder = new kakao.maps.services.Geocoder();
			
			// 주소로 좌표를 검색합니다 ${requestScope.gym.addr}
			geocoder.addressSearch('${requestScope.gym.addr}', function(result, status) {
			
			    // 정상적으로 검색이 완료됐으면 
			     if (status === kakao.maps.services.Status.OK) {
			
			        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
			
			        // 결과값으로 받은 위치를 마커로 표시합니다
			        var marker = new kakao.maps.Marker({
			            map: map,
			            position: coords
			        });
			
			        // 인포윈도우로 장소에 대한 설명을 표시합니다
			        var infowindow = new kakao.maps.InfoWindow({
			            content: '<div style="width:150px;text-align:center;padding:6px 0;">${requestScope.gym.name}</div>'
			        });
			        infowindow.open(map, marker);
			
			        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
			        map.setCenter(coords);
			    } 
			});    
</script>
<!-- 리뷰 작성하기 버튼에 적용할 제이쿼리 , 리뷰 수정 삭제에 사용할 제이쿼리 -->
<script type="text/javascript">
	$(function(){
		$("[name=btnn]").click(function(){
			//session에 curUserType이 0이면 비회원이니까 로그인하라는 alert 띄움
			
			if("${sessionScope.curUserType}" == 0){
				alert("로그인 후 사용해주세요.");
				
				return false;
			}else if("${sessionScope.curUserType}" == 2){
				alert("일반 회원만 신청 가능합니다.");
				
				return false;
			}
		});
		
		$("[value=삭제]").click(function(){
			var b = confirm("정말삭제하시겠습니까?");
			console.log(b);
			if(b){
				return true;
			}else{
				return false;
			}
			
		});
		
// 		alert(reviewList);
// 		$("[name=rBtn]").hide();
// 		$.each(reviewList, function(index, item){
// 			console.log(item);
// 		});
// 		$.each(reviewList, function(index, item){
// 			alert(1);
			
// 		});
		
	});

</script>
    </body>
</html>