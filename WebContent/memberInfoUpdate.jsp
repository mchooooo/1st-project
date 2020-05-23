<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
<title>GARO ESTATE | Change password page</title>
<meta name="description" content="company is a real-estate template">
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
</head>
<body>

	<div id="preloader">
		<div id="status">&nbsp;</div>
	</div>
	<!-- Body content -->

	<!-- <div class="header-connect">
		<div class="container">
			<div class="row">
				<div class="col-md-5 col-sm-8  col-xs-12">
					<div class="header-half header-call">
						<p>
							<span><i class="pe-7s-call"></i> +1 234 567 7890</span> <span><i
								class="pe-7s-mail"></i> your@company.com</span>
						</p>
					</div>
				</div>
				<div
					class="col-md-2 col-md-offset-5  col-sm-3 col-sm-offset-1  col-xs-12">
					<div class="header-half header-social">
						<ul class="list-inline">
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-vine"></i></a></li>
							<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
							<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
							<li><a href="#"><i class="fa fa-instagram"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div> -->
	<!--End top header -->
	
	<jsp:include page="navigator.jsp"></jsp:include>

	<!-- End of nav bar -->
	
	<!-- End page header -->

	<!-- property area -->
	<div class="content-area user-profiel"
		style="background-color: #FCFCFC;">
		&nbsp;
		<div class="container">
			<div class="row">
				<div class="col-sm-10 col-sm-offset-1 profiel-container">

				

						<div class="profiel-header">
							<h3>
								<b>회원 정보 수정</b> <br> <small></small>
							</h3>
							<hr>
						</div>

						<div class="clear">

							<div class="col-sm-10 col-sm-offset-1">
								<span><h4>비밀번호 수정</h4></span>

								<form action="front?command=updateUser&type=1" method="post">
									<div class="form-group">
										<label>비밀번호 <small>(required)</small></label> <input name="password1" type="password" class="form-control">
									</div>
									<div class="form-group">
										<label>비밀번호 확인 : <small>(required)</small></label> <input name="password2" type="password" class="form-control">
									</div>

									<div class="col-sm-10 col-sm-offset-1">
										<button type="submit" class="btn btn-finish btn-primary pull-right">변경하기</button>
									</div>

								</form>
							</div>
						</div>
						<hr>
						<div class="clear">

							<div class="col-sm-10 col-sm-offset-1">
								<span><h4>연락처 수정</h4></span>
								<form action="front?command=updateUser&type=2" method="post">
									<div class="form-group">
										<label>연락처 <small>(required)</small></label> <input
											name="phone" type="text" class="form-control">
									</div>


									<div class="col-sm-10 col-sm-offset-1">

										<button type="submit"
											class="btn btn-finish btn-primary pull-right">변경하기</button>
									</div>

								</form>
							</div>
						</div>





				</div>
			</div>
			<!-- end row -->

			<div class="col-sm-2 col-sm-offset-5">
				<br> <input type='button'
					class='btn btn-finish btn-primary pull-right' name='main'
					value='뒤로 가기' />
			</div>
		</div>
	</div>

	<!-- Footer area-->
	<div class="footer-area">
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