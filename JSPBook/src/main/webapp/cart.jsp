<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>
<%@ page import="java.text.DecimalFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<%
	String cartId = session.getId();
%>
<style>
	#padding { 
		padding: 50px;
	}
	#margin {
		margin: 30px;
	}
</style>
<title>장바구니</title>
</head>
<body>
	<jsp:include page = "menu.jsp"/>
	
	<div class = "jumbotron">
		<div class = "container">
			<h1 class = "display-3">장바구니</h1>
		</div>
	</div>
	
	<div class = "row">
		<table width = "100%">
			<tr>
				<td id = "padding" align = "left"><a href = "./deleteCart.jsp?cartId=<%=cartId%>"
				class = "btn btn-danger">삭제하기</a></td>
				<td id = "padding" align = "right"><a href = "./shippingInfo.jsp?cartId=
				<%=cartId %>" class = "btn btn-success">주문하기</a></td>
				</tr>
		</table>
	</div>
	<div style = "padding-top: 50px">
		<table class = "table table-hover">
			<tr>
				<th>상품</th>
				<th>가격</th>
				<th>수량</th>
				<th>소계</th>
				<th>비고</th>
			</tr>
			<%
				int sum = 0;
				DecimalFormat df = new DecimalFormat("###,###");
				ArrayList<Product> cartList = (ArrayList<Product>)
					session.getAttribute("cartlist");
				if(cartList == null)
					cartList = new ArrayList<Product>();
			
				for(int i = 0; i < cartList.size(); i++) {
					Product product = cartList.get(i);
					int total = product.getUnitPrice() * product.getQuantity();
					sum = sum + total;
			%>
			<tr>
				<td><%=product.getProductId() %> - <%=product.getPname() %></td>
				<td><%=df.format(total)%></td>
				<td><%=product.getQuantity() %></td>
				<td><a href = "./removeCart.jsp?id=<%=product.getProductId() %>"
				class = "badge badge-danger">삭제</a></td>
			</tr>
			<%
				}
			%>
			<tr>
				<th></th>
				<th></th>
				<th>총액</th>
				<th><%=df.format(sum) %></th>
				<th></th>
		</table>
		<a href = "./products.jsp" id = "margin" class = "btn btn-secondary"> &laquo; 소핑 계속하기</a>
	</div>
	
	<jsp:include page = "footer.jsp" />
</body>
</html>