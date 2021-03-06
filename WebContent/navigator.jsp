<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
				 <script src="js/jquery-3.4.1.min.js"></script>
				<script type="text/javascript">
				 $(function(){

			    	 	$("#login").click(function(){
			    	 		if($(this).text() == "로그인/회원가입"){
			    	    		location.href="register.jsp";
			    	    	} else {
			    	    		location.href="front?command=login";
			    	    	}
			    	 	});
			    	 	});
				 
				 //alert("${curUserType}");
				 //alert("${curUserId}");
				</script>
				
				<ul class="main-nav nav navbar-nav navbar-right">
					<li class="dropdown ymm-sw " data-wow-delay="0.1s">
						<!-- 여기href 바꿔야함--> 
						<a href="#" class="dropdown-toggle" data-hover="dropdown" data-delay="200" id="mypage">마이페이지 </a>
					</li>
					
					<script type="text/javascript">
				 $(function(){

			    	 	$("#mypage").click(function(){
			    	 		if("${curUserType}" == "0"){
			    	    		alert("로그인 후에 이용하실 수 있습니다.");
			    	    		location.href="register.jsp";
			    	    	} else {
			    	    		location.href="front?command=selectPoint";
			    	    	}
			    	 	});
			    	 	});
				 
				</script>


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

