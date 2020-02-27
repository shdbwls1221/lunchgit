<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<script >
	$.ajax({
		url: "/rstnt/",
		data: { name: "user" },
		success: function(data){
			
			console.log(data);
		}
			
	});
</script>
</head>
<body>

</body>
</html>