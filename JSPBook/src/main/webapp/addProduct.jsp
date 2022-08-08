<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>상품 등록</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script type = "text/javascript" src = "./resource/js/validation.js"></script>
</head>
<body>
	<%@ include file = "menu.jsp" %>
	
	<div class = "jumbotron">
		<div class = "container">
			<h1 class = "display-3">상품 등록</h1>
		</div>
	</div>
	<div class = "container">
		<div class = "text-right">
			<a href = "logout.jsp" class = "btn btn-sm btn-sucess pull-right">logout</a>
		</div>
	</div>
	<div class = "container">
		<form name = "newProduct" action = "./processAddProduct.jsp" class "form-
		horizontal" method = "post" enctype = "multipart/form-data">
			<div class = "form-group row">
				<label class = "col-sm-2">상품코드</label>
				<div class = "col-sm-3">
					<input type = "text" id = "productId" name = "productId" class = "form-control">
				</div>
			</div>
			<div class = "form-group row">
				<label class = "col-sm-2">상품명</label>
				<div class = "col-sm-3">
					<input type = "text" id = "name" name = "name" class = "form-control">
				</div>
			</div>
			<div class = "form-group row">
				<label class = "col-sm-2">가격</label>
				<div class = "col-sm-3">
					<input type = "text" id = "unitPrice" name = "unitPrice" class = "form-control">
				</div>
			</div>
			<div class = "form-group row">
				<label class = "col-sm-2">상세정보</label>
				<div class = "col-sm-5">
					<textarea name = "description" cols="50" rows="2"
					class = "form-control"></textarea>
				</div>
			</div>
			<div class = "form-group row">
				<label class = "col-sm-2">제조사</label>
				<div class = "col-sm-3">
					<input type = "text" name = "manufacturer" class = "form-control">
				</div>
			</div>
			<div class = "form-group row">
				<label class = "col-sm-2">분류</label>
				<div class = "col-sm-3">
					<input type = "text" name = "category" class = "form-control">
				</div>
			</div>
			<div class = "form-group row">
				<label class = "col-sm-2">재고 수</label>
				<div class = "col-sm-3">
					<input type = "text" id = "unitsInStock" name = "unitsInStock" class = "form-control">
				</div>
			</div>
			<div class = "form-group row">
				<label class = "col-sm-2">상태</label>
				<div class = "col-sm-5">
					<input type = "radio" name = "condition" value = "New ">
					신규제품
					<input type = "radio" name = "condition" value = "Old ">
					중고제품
					<input type = "radio" name = "condition" value = "Refurbished ">
					재생제품
				</div>
			</div>
			<div class = "form-group row">
				<label class = "col-sm-2">이미지</label>
				<div class = "col-sm-5">
					<input type = "file" name = "productImage" class = "form-control">
				</div>
			</div>
			<div class = "form-group row">
				<div class = "col-sm-offset-2 col-sm-10" >
					<input type = "button" class = "btn btn-primary" value = "등록"
					onclick = "CheckAddProduct()">
				</div>
			</div>
		</form>
	</div>
</html>