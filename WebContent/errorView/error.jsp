<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
    //errCode 종류
    //1 로그인 에러
    //2 사업가 포인트충전
    //3 회원 정보 수정 비밀번호 불일치
	//4 사업자등록 접근 오류    
	if( "${errCode}" == 1){
		alert("아이디 혹은 패스워드가 틀립니다.");
		location.href="register.jsp";
	} else if( "${errCode}" == 3){
		alert("패스워드가 불일치 합니다.");
		location.href="memberInfoUpdate.jsp";
	} else if( "${errCode}" == 4){
		alert(" 접근 권한이 없습니다.");
		location.href="mypage.jsp";
	}else if( "${errCode}" == 5){
		alert(" 이미 등록 되셨습니다.");
		location.href="mypage.jsp";
	}else if( "${errCode}" == 6){
		alert(" 사업자로 등록된 회원은 고객센터에 문의 후 탈퇴 하실 수 있으십니다.");
		location.href="mypage.jsp";
	}else if( "${errCode}" == 30){
		alert("이용목록 갱신에 실패했습니다.");
		
	}else if( "${errCode}" == 40){
		alert("잔액이 부족합니다.");
		location.href="point_charge.jsp";
	}else if( "${errCode}" == 50){
		alert("포인트충전에 실패했습니다.");
		location.href="index.html";
	}else if( "${errCode}" == 51){
		alert("포인트갱신에 실패했습니다.");
		location.href="index.html";
	}
    </script>	
    

</head>
<body>
<h1>메세지 : ${requestScope.errorMsg}</h1>
	
</body>
</html>