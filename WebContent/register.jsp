<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8"> 
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>GARO ESTATE | Register page</title>
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

       
        <script src="js/jquery-3.4.1.min.js"></script> 
        <script type="text/javascript">
  
  	function checkValid(){
  		
		 if($("#memberId").val()==""){
			alert("아이디를 입력하세요.")
			 $("#memberId").focus();
			 return false;
		 }
		 if($("#memberPassword").val()==""){
			alert("비밀번호를 입력하세요.")
			  $("#memberId").focus();
			 return false;
		 }
		 if($("#name").val()==""){
				alert("이름을 입력하세요.")
				  $("#name").focus();
			 return false;
		 }
		 if($("#phone").val()==""){
				alert("전화번호를 입력하세요.")
				  $("#phone").focus();
			 return false;
		 }
	
	 }// 빈칸 유효성 체크 끝
	 
            $(function(){	 
	    	 	 
        	//아이디 중복 체크
        	$("#memberId").keyup(function(){
        		if($(this).val()==""){
        			$("#span").text("   ");
        			return;
        		}
        		 $.ajax({
       			  type:"post",
       			  url:"idCheckServlet",
       		      dataType: "text",//서버에게 받은 응답결과 type(text, xml, html, json)
       		      data : {memberId: $(this).val() } ,//서버에게 전송할 parameter
       		      success: function(result){
       		    	  $("#span").html(result);
       		      } ,
       		      error : function(err){
       		    	  console.log(err+"=> 오류발생");
       		      }
       		  });//ajax끝
       	  });//keyup끝
        	  
     		
 //////////////////////////////////////////////////////////////////////////////////////////////////////
 
			$("#join").click(function(){

				if($("#check").is(":checked")){ //사업자 인지 체크
					$("#memberCheck").val(-1);  //사업자 회원(사업장 등록 가능)
					
					
        		}else{
        			$("#memberCheck").val(0);  //일반 회원
        		}	
			});
		
        });
      
        </script>
    </head>
    <body>

        <div id="preloader">
            <div id="status">&nbsp;</div>
        </div>
        
        <!--End top header -->

		<jsp:include page="navigator.jsp"></jsp:include>


        <!-- End of nav bar -->
        
        <div class="container">
            <h2 class="ps-property-title">회원가입/로그인 </h2>
        </div>

        <!-- End page header -->
 
        <!-- register-area -->
        <div class="register-area" style="background-color: rgb(249, 249, 249);">
            <div class="container">

                <div class="col-md-6">
                    <div class="box-for overflow">
                        <div class="col-md-12 col-xs-12 register-blocks">
                            <h2>회원가입 : </h2> 
                            <form name = "insertForm"action="front?command=memberInsert" method="post" onSubmit="return checkValid()">
                                <div class="form-group">
                                    <label for="name">아이디</label>
                                    <input type="text" class="form-control" id="memberId" name="memberId" autocomplete="off">
                                    <span id="span" class="orange strong">아이디 중복 체크</span>
                                </div>
                                <div class="form-group">
                                    <label for="password">비밀번호</label>
                                    <input type="password" class="form-control" id="memberPassword" name="memberPassword">
                                </div>
                                <div class="form-group">
                                    <label for="name">이름</label>
                                    <input type="text" class="form-control" id="name" name="name">
                                </div>
                                <div class="form-group">
                                    <label for="phone">전화번호</label>
                                    <input type="text" class="form-control" id="phone" name="phone">
                                </div>
                                <div class="form-group">
                                    <label>사업자 여부</label>
                                    <input type="checkbox" name ="check" id="check"> 체크시 사업자 등록가능
									<input type="hidden" class="form-control" name ="memberCheck" id= "memberCheck">
                                </div>
                        
                                
                                <div class="text-center">
                                    <button type="submit" class="btn btn-default" id="join">가입하기</button>
                                   
                                </div>
                            </form>
                            
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="box-for overflow">                         
                        <div class="col-md-12 col-xs-12 login-blocks">
                            <h2>로그인 : </h2> 
                            <form action="front?command=login" method="post">
                                <div class="form-group">
                                    <label for="id">아이디</label>
                                    <input type="text" class="form-control" name="id">
                                </div>
                                <div class="form-group">
                                    <label for="password">비밀번호</label>
                                    <input type="password" class="form-control" name="password">
                                </div>
                                <div class="text-center">
                                    <button type="submit" class="btn btn-default">로그인</button>
                                </div>
                            </form>
                            <br>
                            
                            <h2>소셜 로그인 :  </h2> 
                            
                            
                            <p>
                            <a class="login-social" href="#"><i class="fa fa-facebook"></i>&nbsp;Facebook</a> 
                            <a class="login-social" href="#"><i class="fa fa-google-plus"></i>&nbsp;Gmail</a> 
                            <a class="login-social" href="#"><i class="fa fa-twitter"></i>&nbsp;Twitter</a>  
                            </p> 
                      </div>
                        
                    </div>
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
                            