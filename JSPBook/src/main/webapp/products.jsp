<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.text.DecimalFormat" %>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>
<jsp:useBean id = "productDAO" class = "dao.ProductRepository" scope = "session" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>상품 목록</title>
</head>
<body>
	<%@ include file = "menu.jsp" %>
	
	<div class = "jumbotron">
		<div class = "container">
			<h1 class = "display-3">상품 목록</h1>
		</div>
	</div>
	
	<%
		ProductRepository dao = ProductRepository.getInstance();
		ArrayList<Product> listOfProducts = dao.getAllProducts();
	%>
	
	<div class = "container">
		<div class = "row" align = "center">
			<%
				for(int i=0; i < listOfProducts.size(); i++) {
					Product product = listOfProducts.get(i);
				
			%>
			<div class = "col-md-4">
				<img src = "./resource/images/<%=product.getFilename() %>"
				style = "width: 300px; height:250px">
				<h3><%= product.getPname()%></h3>
				<p><%= product.getDescription()%>
				<p><%
				DecimalFormat df = new DecimalFormat("###,###");
				String unitPrice = df.format(product.getUnitPrice());%>
				<%= unitPrice%>원
				<p> <a href="./product.jsp?id=<%=product.getProductId()%>"
				class = "btn btn-secondary" role = "button"> 상세 정보 &raquo;</a>
			</div>
			<% } %>
		</div>
		<hr>
	</div>
	<%@ include file = "footer.jsp" %>
	
</html>