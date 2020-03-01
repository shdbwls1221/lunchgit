<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link href="/css/common.css" rel="stylesheet">
<title>메인페이지</title>
</head>
<script>

/** 식당 리스트 조회 **/
function getRstntList(category){
	var html = $("#rstntList").html();
	var parent = $(".restaurant");
	$.ajax({
		url: "/rstnt/"+category,
		method: "GET",
		success: function(data){
			var length = data.length;
			var str = "";
			for(var i=0; i<length; i++){
				str += html.replace("{rstntSeqno}", data.rstntSeqno)
							.replace("{rstntName}", data.rstntName)
							.replace("{rstntLocation}", data.rstntLocation)
							.replace("{registDate}", data.registDate);
			}
			parent.html(str);
		}
	});
}

/** 식당 추가 폼 보여주기 **/
function showAddForm(flag){
	if(flag){
		$("#addRstntForm").css("display","block");
	}
	else{
		$("#addRstntForm").css("display","none");
	}
}

/** rstntButton을 클릭하면 식당 추가하기 **/
$('#rstntButton').click(function(){
	if($('#rstntForm input[name=rstntName]').val==''){
		alert('식당이름을 입력해주세요.');
	} else if($('#rstntForm input[name=rstntLocation]').val==''){
		alert('위치을 입력해주세요.');
	} else if($('#rstntForm input[name=category]').val==''){
		alert('종류를 선택해주세요.');
	} else{
		$.ajax({
			url: "/rstnt",
			data: {rstntForm.serialaize()},
			success: function(data){
				if (data==1){
					alert('등록되었습니다.');
				}
				else {
					alert('등록에 실패했습니다.');
				}
			}
		});
	}
});
</script>
<body>
<!-- header -->
<jsp:include page="/WEB-INF/views/header.jsp" />
<!-- /header -->
<span>${member.name}님 맛점하세요.</span>
<!-- category-container -->
<div id="container">
	<div class="divide">
		<div class="tabmenu">
			<ul>
				<li><a href="javascript:getRstntList('한식')">한식</a></li>
				<li><a href="javascript:getRstntList('중식')">중식</a></li>
				<li><a href="javascript:getRstntList('양식')">양식</a></li>
				<li><a href="javascript:getRstntList('패스트푸드')">패스트푸드</a></li>
			</ul>
		</div>
	</div>
	<div class="divide">
		<button onclick="showAddForm(true)">추가</button>
		<!-- 식당 추가 폼 -->
		<div id="addRstntForm" style="display:none">
			<!-- action="/main/addRstnt.do" -->
			<form id="rstntForm" name="rstntForm" action="/rstnt" method="POST">
				<div class="formContainer">
					<a href="javascript:showAddForm(false)"></a>
					<div>식당이름</div><input type="text" name="rstntName" maxlength="20"/>
					<div>위치</div><input type="text" name="rstntLocation" maxlength="30" />
					<div>종류</div>
						<select name="category">
							<option value="한식">한식</option>
							<option value="중식">중식</option>
							<option value="양식">양식</option>
							<option value="패스트푸드">패스트푸드</option>
						</select>
					<button id="rstntButton">+</button>
				</div>
			</form>
		</div>
		<ul class="restaurant">

		</ul>
		<div id="addRstntDiv">
			<a href="javascript:addRstnt()">+</a>
			<!-- <button onclick="addRstnt()">식당추가</button> -->
		</div>
		<div>
			<a>더보기</a>
		</div>
	</div>
	<div class="divide">
	</div>
</div>
<!-- footer -->
<jsp:include page="/WEB-INF/views/footer.jsp" />
<!-- /footer -->
<script type="rv-template" id="rstntList">
	<li>
		<div>
			<input type="checkbox" value="{rstntSeqno}"/>
			<h2>{rstntName}</h2>
			<div class="rightrow">위치</div><div class="leftrow">{rstntLocation}</div>
			<div class="rightrow">등록날짜</div><div class="leftrow">{registDate}</div>
		</div>
	</li>
</script>
</body>
</html>