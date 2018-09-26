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
<link href="${ pageContext.request.contextPath}/resources/css/sample.css" rel="stylesheet">

</head>

<body background="${ pageContext.request.contextPath}/resources/images/interior4.jpg">





	<div class="container" style="padding-left:280px">
<!-- <h1>		Product Details</h1><br> -->
		<div class="panel-info">
			<div class="panel panel-heading"><h3>Product Details</h3></div>
			<div class="panel panel-body">
			<c:url value="/cart/addtocart/${productObj.id}" var="url"></c:url>
			<form action="${url }" >
			
			
			<img src="<c:url value='/resources/images/${productObj.id}.png'></c:url>"><br>
			
			
			
			
			<b><h3>Product Name:</b>${productObj.productname }<br>
			<b><h3>Product Desc:</b>${productObj.productdesc }<br>
			<b><h3>Price:</b>${productObj.price }<br>
			<b><h3>Quantity:</b>${productObj.quantity }<br>
			<b><h3>Category:</b>${productObj.category.categoryname}<br>
			<c:if test="${productObj.quantity==0 }">
			<button class="btn btn-primary btn-lg" disabled>Out Of Stock</button>
			</c:if>
			<c:if test="${productObj.quantity>0 }">
			<security:authorize access="hasRole('ROLE_USER')">
			<b><h3>Enter Quantity:<input type="number" min="1" max="${productObj.quantity }" name="requestedQuantity">
			<button class="btn btn-primary btn-lg" type="submit" style="height:40px;width:120px"><span class="glyphicon glyphicon-shopping-cart" ></span>Add To Cart</button>
			</security:authorize>
			</c:if>
			</form>
			</div>
		</div>
	</div>
	<a href="<c:url value='/all/getAllProducts'></c:url>">Browse all products</a>







</body>
</html>