<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     
    
     <%@ page isELIgnored="false" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
 
     <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<style>
table {
    text-align: center;
    border-collapse: collapse;
    border: 1px solid black;
    
}
textarea  
{  
   font-family:"Times New Roman", Times, serif;  
   font-size: 40px;   
}
</style>



<meta charset="ISO-8859-1">
<title>HOMEPAGE</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="/resources/css/sample.css" rel="stylesheet">
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>



<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>




<!-- <meta name="viewport" content="width=device-width, initial-scale=1">
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/sample.css" rel="stylesheet">
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/bootstrap.min.js"></script> -->

</head>

<body> 









<div class="header">
Email: kbhagwani88@gmail.com
</div>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <img src="${ pageContext.request.contextPath}/resources/images/logo.jpg" height="100" width="200"></img>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
     <li class="nav-item">
        <a class="nav-link" href=<c:url value='/homepage'></c:url>>HOME<span class="sr-only"></span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="aboutus">ABOUT US</a>
      </li>
      
      <!-- <li class="nav-item">
        <a class="nav-link " href="#">PRODUCTS</a>
      </li>
      
      
      
      <li class="nav-item">
        <a class="nav-link " href="gallery">GALLERY</a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link " href="#">CONTACT</a>
      </li>
      <li class="nav-item">
        <a class="nav-link " href="#">SERVICES</a>
      </li> -->
      
      <li class="nav-item">
        <a class="nav-link " href=<c:url value='/gallery'></c:url>>GALLERY</a>
      </li>
      
      
      <li class="nav-item">
        <a class="nav-link " href=<c:url value='/feedback'></c:url>>FEEDBACK</a>
      </li>
      </ul>
      
      
   
       <li>
      
      
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">PRODUCT<span class="caret"></span></a>
					
				<ul class="dropdown-menu">
				<security:authorize access="hasRole('ROLE_ADMIN')">
				<li><a href="<c:url value='/admin/getproductform'></c:url>">ADD PRODUCT</a></li>
				</security:authorize>
				<li><a href="<c:url value='/all/getAllProducts'></c:url>">ALL</a></li>
				</ul>
			   </li>
			    <li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">CATEGORY<span class="caret"></span></a>
					
				<ul class="dropdown-menu">
				
				
				<security:authorize access="hasRole('ROLE_ADMIN')">
				<li><a href="<c:url value='/admin/getcategoryform'></c:url>">ADD CATEGORY</a></li>
				</security:authorize>
				
				
				<li><a href="<c:url value='/all/getAllcategorys'></c:url>">ALL</a></li>
				</ul>
			   </li>



				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">SEARCH..<span class="caret"></span></a>
					
				<ul class="dropdown-menu">
				<c:forEach items="${categories }" var="category">
				<li><a href="<c:url value='/all/searchByCategory?searchCondition=${category.categoryname }'></c:url>">${category.categoryname }</a>
				</li>
				
				</c:forEach>
				<li>
				<a href="<c:url value='/all/searchByCategory?searchCondition=All'></c:url>">All</a>
				</li>
				</ul>
			   </li>




















<%--  
<div class="header">
Email: kbhagwani88@gmail.com
</div>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <img src="${ pageContext.request.contextPath}/resources/images/logo.jpg" height="100" width="200"></img>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
     <li class="nav-item">
        <a class="nav-link" href=<c:url value='/homepage'></c:url>>HOME<span class="sr-only"></span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href=<c:url value='/aboutus'></c:url>>ABOUT US</a>
      </li>
      
      <!-- <li class="nav-item">
        <a class="nav-link " href="#">PRODUCTS</a>
      </li>
      
      
      
      <li class="nav-item">
        <a class="nav-link " href="#">GALLERY</a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link " href="#">CONTACT</a>
      </li>
      <li class="nav-item">
        <a class="nav-link " href="#">SERVICES</a>
      </li> -->
      <li class="nav-item">
        <a class="nav-link " href=<c:url value='/feedback'></c:url>>FEEDBACK</a>
      </li>
     
      
     
      <li>
      
      <li class="dropdown">
  <button class="dropbtn">PRODUCTS</button>
  <div class="dropdown-content">
    <a href="<c:url value='/admin/getproductform'></c:url>">ADD PRODUCT</a>
    <a href="<c:url value='/all/getAllProducts'></c:url>">BROUSE ALL PRODUCTS</a>
 
 </div>
 </li>               

      <li class="dropdown">
  <button class="dropbtn">CATEGORIRES</button>
  <div class="dropdown-content">
    <a href="<c:url value='/admin/getcategoryform'></c:url>">ADD CATEGORY</a>
    <a href="<c:url value='/all/getAllcategorys'></c:url>">BROUSE ALL CATEGORY</a>
 
  </div>     
      
      
      </li>
       
     


				<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">PRODUCT<span class="caret"></span></a>
				<ul class="dropdown-menu">
				
				<li><a href="<c:url value='${ pageContext.request.contextPath}/admin/getproductform'></c:url>">ADD PRODUCT</a></li>
				
				<li><a href="<c:url value='${ pageContext.request.contextPath}/all/getAllProducts'></c:url>">ALL</a></li>
				</ul>
			   </li>
			    
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">CATEGORY<span class="caret"></span></a>
					
				<ul class="dropdown-menu">
				<li><a href="<c:url value='${ pageContext.request.contextPath}/admin/getcategoryform'></c:url>">ADD CATEGORY</a></li>
				<li><a href="<c:url value='${ pageContext.request.contextPath}/all/getAllcategorys'></c:url>">ALL</a></li>
				</ul>
			   </li>      
      
       
       
       
       
       
     
      
      
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
       --%>
      
			   <%-- <security:authorize access="hasRole('ROLE_ADMIN')">
			   <li><a href="<c:url value='/admin/getproductform'></c:url>">ADD PRODUCT</a></li>
			   </security:authorize> --%>
			   
			   
			   
			   <c:if test="${pageContext.request.userPrincipal.name==null }">
				<li><a href="<c:url value='/all/registrationform'></c:url>">SIGN UP</a></li>
				<li><a href="<c:url value='/login'></c:url>">SIGN IN</a></li>
				</c:if>
				
				
				
				<c:if test="${pageContext.request.userPrincipal.name!=null }">
				<li><a href="#">Welcome ${pageContext.request.userPrincipal.name }</a></li>
				<li><a href="<c:url value='/j_spring_security_logout'></c:url>">SIGN OUT</a></li>
			    </c:if>
			    
      
      
      
      
      
      
      
      
               <security:authorize access="hasRole('ROLE_USER')">
			   <li><a href="<c:url value='/cart/getcart'></c:url>"><span class="glyphicon glyphicon-shopping-cart"></span></a></li>
			   </security:authorize>
    </div>
    
    </nav>
    <div class="footer">
  <p>@kkInteriors&Suppliers</p>
</div>
</body>
</html>