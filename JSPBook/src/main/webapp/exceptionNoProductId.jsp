<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>상품 아이디 오류</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
	<%@ include file = "menu.jsp" %>
	
	<div class = "jumbtron">
		<div class = "container">
			<h2 class = "alert alert-danger">해당 상품이 존재하지 않습니다.</h2>
		</div>
	</div>
	<div class = "container">
		<p><%=request.getRequestURL() %>?<%=request.getQueryString() %>
		<p> <a href = "products.jsp" class = "btn btn-secondary">상품 목록 &raquo;</a>
	</div>
	
</html>