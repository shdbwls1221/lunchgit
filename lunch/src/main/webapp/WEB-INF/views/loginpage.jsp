<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link href="/css/common.css" rel="stylesheet">
<title>로그인페이지</title>
<script>
	function fnInit(){
		if($("#resultMsg").val() != null){
			alert($("#resultMsg").val());
		}
		
		$.ajax({
			url: "/rstnt/"+${member.seqno}+"/"+category,
			method: "GET",
			success: function(){
				
			}
		});
	}
	
	/** 가입 페이지로 **/
	function goJoin(){
		location.href='/member/join.do';
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
		<form name="loginForm" action="${pageContext.request.contextPath}/actionlogin.do" method="POST">
			<input type="text" name="name" id="name" placeholder="이름을 입력해주세요." maxlength="10"/>
			<button type="submit">로그인</button>
		</form>
		<a href="javascript:goJoin()">회원가입</a>
	</div>
</div>
<!-- footer -->
<jsp:include page="/WEB-INF/views/footer.jsp" />
<!-- /footer -->
</body>
</html>