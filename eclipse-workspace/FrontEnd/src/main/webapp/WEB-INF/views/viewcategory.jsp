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
<div class="container" style="padding-left:350px">
		<h1>category Details</h1><br>
		<div class="panel-info">
			<div class="panel panel-heading">category Details</div>
			<div class="panel panel-body">
			<b>category Name:</b>${categoryObj.categoryname }<br>
			<b>category Desc:</b>${categoryObj.categorydesc }<br>
			<b>Quantity:</b>${categoryObj.quantity }<br>
			
			</div>
		</div>
	</div>
	<a href="<c:url value='/getAllcategorys'></c:url>">SHOW ALL categoryS</a>
</body>
</html>