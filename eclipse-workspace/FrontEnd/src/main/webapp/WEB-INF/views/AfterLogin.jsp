<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/sample.css" rel="stylesheet">
<link href="resources/css/sample1.css" rel="stylesheet">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
</head>

<body background="resources/images/interior2.jpg">


<div a class="header" href="mailto:example@email.com">
Email: kbhagwani88@gmail.com
<div align="right">
ph:8180982245
</align></div>
</div>
<br>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <img src="resources/images/logo.jpg" height="100" width="200"></img>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
     <li class="nav-item">
        <a class="nav-link" href="homepage">HOME<span class="sr-only"></span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="aboutus">ABOUT US</a>
      
      </li>
      
      
      <!--  <li class="nav-item">
        <a class="nav-link " href="gallery">GALLERY</a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link " href="contact">CONTACT</a>
      </li>
      <li class="nav-item">
        <a class="nav-link " href="services">SERVICES</a>
      </li> -->
      
      
      <li class="nav-item">
        <a class="nav-link " href="feedback">FEEDBACK</a>
      </li>
      
      </ul>
      
      </div>
      
      
      <li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">PRODUCT<span class="caret"></span></a>
					
				<ul class="dropdown-menu">
				
				<li><a href="<c:url value='/admin/getproductform'></c:url>">ADD PRODUCT</a></li>
				
				<li><a href="<c:url value='/all/getAllProducts'></c:url>">ALL</a></li>
				</ul>
			   </li>
			    <li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">CATEGORY<span class="caret"></span></a>
					
				<ul class="dropdown-menu">
				<li><a href="<c:url value='/admin/getcategoryform'></c:url>">ADD CATEGORY</a></li>
				<li><a href="<c:url value='/all/getAllcategorys'></c:url>">ALL</a></li>
				</ul>
			   </li>
			   <a class="button" href="homepage">LOG-OUT</a>
</nav>


<div class="footer">
  <p>@kkInteriors&Suppliers</p>
</div>
</body>
</html>
