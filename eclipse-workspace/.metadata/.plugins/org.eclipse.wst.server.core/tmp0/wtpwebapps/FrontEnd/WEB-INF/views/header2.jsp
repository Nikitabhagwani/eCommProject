<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page isELIgnored="false" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<nav class="navbar navbar-default">
			<div class="navbar-header">
				<a href="" class="navbar-brand"><img src="resources/images/logo.jpg"
					alt="NIIT" height="30px" width="70px"></a>
			<button type="button" class="navbar-toggle collapsed" 
   data-toggle="collapse" data-target="#navbardemo" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
			</div>
			<div class="collapse navbar-collapse" id="navbardemo">
			<ul class="nav navbar-nav">
				<li><a href='<c:url value='/home'></c:url>' class="fontSize">Home</a></li>
				<li><a href="<c:url value='/aboutus'></c:url>" >About Us</a></li>
				<li><a href="<c:url value='/all/getallproducts'></c:url>">Browse all products</a>
				<li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">Select By Category<span class="caret"></span></a>
					
				<ul class="dropdown-menu">
				<li><a href="#">TAPS</a></li>
				<li><a href="#">COLOR</a><li>
				<li><a href="#">HARDWARE</a></li>
				</ul>
			   </li>
			   <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a></li>
				<li><a href="#">Sign Up</a></li>
				<li><a href="#">Sign In</a></li>
				<li><a href="#">Sign out</a></li>
			
			</ul>
			</div>
		</nav>
	</div>
</body>
</html>