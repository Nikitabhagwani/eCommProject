<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header1.jsp" %>
    <%@ page isELIgnored="false" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%-- <link type="text/css" rel="stylesheet" href='<c:url value="/resources/css/registration.css"></c:url>'> --%>
<link type="text/css" rel="stylesheet" href='<c:url value="/resources/CSS/sample.css"></c:url>'>

<script type="text/javascript"
	src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js"></script>
	<script type="text/javascript">
	
	$(document).ready(function(){
		$('#form').validate({
			rules:{
				"apartmentnumber":{required:true},
				"streetname":{required:true},
				"state":{required:true},
				"city":{required:true},
				"country":{required:true},
				"zipcode":{required:true,number:true}
			}
		})
	})
</script>
<link href="${ pageContext.request.contextPath}/resources/css/sample.css" rel="stylesheet">
</head>
<body background="${ pageContext.request.contextPath}/resources/images/interior4.jpg">
<div class="container" style="padding-left:350px">
<c:url var="url" value="/cart/createorder"></c:url>
<form:form modelAttribute="shippingaddress" action="${url }" id="form">

<p align="center"><b>Shipping Address</b></p>	
<form:hidden path="id"/>
<br>
<form:label path="apartmentnumber">Enter Apartmentnumber</form:label>
<form:input path="apartmentnumber" id="apartmentnumber"/>

<br>
<form:label path="streetname">Enter Streetname</form:label>
<form:input path="streetname" id="streetname"/>
<br>

<form:label path="city">Enter city</form:label>
<form:input path="city" id="city"/>

<br>
<form:label path="state">Enter State</form:label>
<form:input path="state" id="state"/>
<br>

<form:label path="country">Enter country</form:label>
<form:input path="country" id="country"/>
<br>

<form:label path="zipcode">Enter zipcode</form:label>
<form:input path="zipcode" id="zipcode"/>

<br>
<button type="submit" height="20px" width="50px">Next</button>
</form:form>
</div>
</body>
</html>


