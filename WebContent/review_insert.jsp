<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<HTML>
<HEAD>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/style.css">

<SCRIPT language=javascript>
function checkValid() {
    var f = window.document.writeForm;
		
	if ( f.starScore.value == "") {
	    alert( "별점을 선택해주세요." );
	    f.starScore.focus();
		return false;
    }
	if ( f.content.value == "" ) {
		alert( "리뷰내용을 입력해 주세요." );
		f.content.focus();
		return false;
	}
	
    return true;
}



</SCRIPT>


</HEAD>
<BODY>

<form name="writeForm" method="post" action="${pageContext.request.contextPath}/front?command=insertReview" 
  onSubmit='return checkValid()' enctype="multipart/form-data" >
<input type="hidden" name="gymCode" value="${requestScope.gymCode}">
<input type="hidden" name="curUserId" value="${sessionScope.curUserId}">
<table align="center" cellpadding="5" cellspacing="2" width="600" border="1" >
  
    <tr>
        <td width="1220" height="20" colspan="2" bgcolor="orange">
            <p align="center"><font color="white" size="3"><b> 리뷰 등록 </b></font></p>
        </td>
    </tr>
    <tr>
        <td width="150" height="20" >
            <p align="right"><b><span style="font-size:9pt;">별점</span></b></p>
        </td>
        <td width="450" height="20">
        <b>
        <span style="font-size:9pt;">
			<input type="radio" name="starScore" value="1"> 1
			<input type="radio" name="starScore" value="2"> 2
			<input type="radio" name="starScore" value="3"> 3
			<input type="radio" name="starScore" value="4"> 4
			<input type="radio" name="starScore" value="5"> 5
		</span>
		</b>
		</td>
    </tr>
    
    
    <tr>
        <td width="150" height="20">
            <p align="right"><b><span style="font-size:9pt;">리뷰 내용</span></b></p>
        </td>
        <td width="450" height="20"><b><span style="font-size:9pt;">
		<textarea name="content" cols="50" rows="10"></textarea></span></b></td>
    </tr>
    
     <tr>
        <td width="150" height="20">
            <p align="right"><b><span style="font-size:9pt;">*파일첨부</span></b></p>
        </td>
        <td width="450" height="20">
        	<b><span style="font-size:9pt;">
        		 <input type="file" name="file" maxlength="60" size="40" accept=".gif, .jpg, .png, .jpeg" onchange="chk_file_type(this)">
        	   </span></b>
        </td>
    </tr>
    
    
    <tr>
        <td width="450" height="20" colspan="2" align="center"><b><span style="font-size:9pt;"><input type=submit value=글쓰기 name=btn > 
        <input type=reset value=다시쓰기></span></b></td>
    </tr>
</table>

</form>

<script type="text/javascript">
function chk_file_type(obj) {

	var file_kind = obj.value.lastIndexOf('.');

	var file_name = obj.value.substring(file_kind+1,obj.length);

	var file_type = file_name.toLowerCase();

	var check_file_type=new Array();

	check_file_type=['jpg','gif','png','jpeg'];



	if(check_file_type.indexOf(file_type)==-1) {

		alert('이미지 파일만 업로드 해주세요.');

		var parent_Obj=obj.parentNode;

		var node=parent_Obj.replaceChild(obj.cloneNode(true),obj);



		document.getElementById("wfb-field-219958876").value = "";    //초기화를 위한 추가 코드

		document.getElementById("wfb-field-219958876").select();        //초기화를 위한 추가 코드

		document.selection.clear();                                                //일부 브라우저 미지원

		return false;

	}

}



</script>



</BODY>
</HTML>

