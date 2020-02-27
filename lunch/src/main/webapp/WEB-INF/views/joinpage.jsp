<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<title>Insert title here</title>
<script>
function fnInit(){
	if($("#resultMsg").val() != null){
		alert($("#resultMsg").val());
	}
}

/** 이름 중복 체크 **/
function check(){
	$.ajax({
		var result;
		url:"${pageContext.request.contextPath}/member/checkname",
		data: {name: $("#name").val()},
		method: "POST",
		async: false,
		success: function(data){
			if(data > 0){
				result = false;
			} else{
				result = true;
			}
		}
		return result;
	});
}

/** validate **/
function validate(){
	if($("#name").val()==''){
		alert('이름을 입력해주세요.');
	} else if(!check()){
		alert('사용할 수 없는 이름입니다.');
	} else{
		return true;
	}
	return false;
}
function actionJoin(){
	if(validate()){
		document.joinForm.submit();
	}
}
</script>
</head>
<body onload="fnInit()">
<!-- header -->
<jsp:include page="/WEB-INF/views/header.jsp" />
<!-- /header -->
<div id="container">
	<input type="hidden" id="resultMsg" value="${resultMsg}"/>
	<div>
		<form name="joinForm" action="${pageContext.request.contextPath}/member/actionjoin.do" method="POST">
			<input type="text" name="name" id="name" placeholder="이름을 입력해주세요." maxlength="10"/>
			<button onclick="actionJoin()">가입</button>
		</form>
	</div>
</div>
<!-- footer -->
<jsp:include page="/WEB-INF/views/footer.jsp" />
<!-- /footer -->
</body>
</html>