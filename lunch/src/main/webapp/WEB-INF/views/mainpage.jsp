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

/** 레스토랑 리스트 조회 **/
function getRstntList(category){
	var html = $("#rstntList").html();
	var parent = $(".restaurant");
	$.ajax({
		url: "/rstnt/"+category,
		method: "GET",
		success: function(data){
			var length = data.length;
			var html = "";
			for(var i=0; i<length; i++){
				var str += html.replace("{rstntSeqno}", data.rstntSeqno)
							.replace("{rstntName}", data.rstntName)
							.replace("{rstntSeqno}", data.rstntSeqno)
							.replace("{rstntLocation}", data.rstntLocation)
							.replace("{registDate}", data.registDate);
				parent.html(str);
			}
		}
	});
}
function addFoodForm()(){
	$("#addFoodDiv").prepend($("#addFoodForm").html());
}
function addRstnt(){
	$("#addRstntDiv").prepend($("#addRstntForm").html());
}
function deleteRstnt(){
	var cnfm = confirm('식당을 삭제하시겠습니까?');
	if(cnfm){
		$.ajax({
			url: "",
			data: { seqno: $("#seqno").val() },
			success: function(){
				alert(삭제되었습니다.)
			}
		});
		alert('삭제되었습니다.');
		/* $.ajax({
			url:"",
			data:""
		}); */
	}
}
$("#rstntButton").click(function(){
	// 식당 저장
	/* $.ajax({
		url:"",
		data:""
	}); */
	alert('저장되었습니다.');
	$("#addRstntDiv #rstntForm").remove();
});
$("#foodButton").click(function(){
	// 식당 저장
	/* $.ajax({
		url:"",
		data:""
	}); */
	alert('저장되었습니다.');
	$("#addFoodDiv #foodForm").remove();
});
</script>
<body>
<!-- header -->
<jsp:include page="/WEB-INF/views/header.jsp" />
<!-- /header -->
<span>${user.name}님 맛점하세요.</span><a class="logout" href="javascript:void(0)">로그아웃</a>
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
	<!-- 식당 추가 폼 -->
	<div id="addRstntForm" style="display:none">
		<!-- action="/main/addRstnt.do" -->
		<form id="rstntForm" name="rstntForm" action="" method="POST">
			<div class="formContainer">
				<div>식당이름</div><input type="text" name="rstntName" maxlength="20"/>
				<div>위치</div><input type="text" name="rstntLocation" maxlength="30" />
				<div>종류</div>
					<select name="sort">
						<option>선택</option>
						<option value="한식">한식</option>
						<option value="중식">중식</option>
						<option value="양식">양식</option>
						<option value="패스트푸드">패스트푸드</option>
					</select>
				<button id="rstntButton">+</button>
			</div>
		</form>
	</div>
	<!-- 음식 추가 폼 -->
	<div id="addFoodForm" style="display:none">
		<!-- action="/main/addFood.do" -->
		<form id="foodForm" name="foodForm" action="" method="POST">
			<div class="formContainer">
				<div>음식이름</div><input type="text" name="foodName" maxlength="20" />
				<div>가격</div><input type="text" name="price" maxlength="10" />
				<div>맛 점수</div><input type="text" name="score" maxlength="5"/>/10.0
				<div>설명</div><input type="text" name="description"/>
				<button id="foodButton">+</button>
			</div>
		</form>
	</div>
<!-- footer -->
<jsp:include page="/WEB-INF/views/footer.jsp" />
<!-- /footer -->
<script type="rv-template" id="rstntList">
	<li>
		<div onclick="location.href='/food/{rstntSeqno}'">
			<h2>{rstntName}</h2><button onclick="deleteRstnt('{rstntSeqno}')">X</button>
			<div class="rightrow">위치</div><div class="leftrow">{rstntLocation}</div>
			<div class="rightrow">마지막 방문</div><div class="leftrow">{registDate}</div>
		</div>
	</li>
    </script>
</body>
</html>