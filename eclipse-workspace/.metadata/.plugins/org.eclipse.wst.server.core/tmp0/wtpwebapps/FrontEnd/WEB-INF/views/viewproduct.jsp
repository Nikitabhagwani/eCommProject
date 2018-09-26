<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header1.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <link href="resources/css/sample.css" rel="stylesheet">
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>

<body>
<div class="container">
		Product Details<br>
		<div class="panel-info">
			<div class="panel panel-heading">Product Details</div>
			<div class="panel panel-body">
			<b>Product Name:</b>${productObj.productname }<br>
			<b>Product Desc:</b>${productObj.productdesc }<br>
			<b>Price:</b>${productObj.price }<br>
			<b>Quantity:</b>${productObj.quantity }<br>
			<button class="btn btn-lg"><span class="glyphicon glyphicon-shopping-cart" ></span></button>
			</div>
		</div>
	</div>
	<a href="<c:url value='/getAllProducts'></c:url>">SHOW ALL PRODUCTS</a>
</body>
</html>