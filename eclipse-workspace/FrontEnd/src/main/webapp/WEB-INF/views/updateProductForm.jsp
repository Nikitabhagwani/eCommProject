<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %> 

<%@ include file="header1.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
table {
    border-collapse: collapse;
    border: 1px solid black;
}
textarea  
{  
   font-family:"Times New Roman", Times, serif;  
   font-size: 20px;   
}
</style>

<link href="resources/css/sample.css" rel="stylesheet">
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


<meta charset="ISO-8859-1">
<title>HOMEPAGE</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/sample.css" rel="stylesheet">
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/sample.css" rel="stylesheet">
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
<link href="${ pageContext.request.contextPath}/resources/css/sample.css" rel="stylesheet">
</head>
<body background="${ pageContext.request.contextPath}/resources/images/interior4.jpg">

<div class="container" style="padding-left:350px">


<c:url value="/admin/updateproduct" var="url"></c:url>
<form:form modelAttribute="product" action="${url }" method="post" enctype="multipart/form-data">
		<table class="center">
			<tr>
				<td></td>
				<!-- user need not
				 give value for id, auto generation -->
				<td><form:hidden path="id"></form:hidden></td>
			</tr>
			<tr>
				<td><h3>Enter Product Name</h3>
				</td>
				<td><form:input path="productname"></form:input></td>
			</tr>
			<br>
			<br>
			<br>
			<tr>
			<td><h3>Enter Product Description</h3></td>
			<td><form:textarea path="productdesc"></form:textarea></td></tr>
			<tr>
			<td><h3>Enter Price</h3></td>
			<td><form:input path="price"></form:input></td></tr>
			
			
			<tr><td><h3>Enter Quantity</h3></td>
			<td><form:input path="quantity"></form:input></td></tr>
			
			
			
			 <form:errors path="quantity" cssStyle="color:red"></form:errors></td></tr>
			 
			 
			<tr><td><h3></>Select the Category</td>
			
			<td><form:select path="category.id"><!-- FK column value -->
			<!-- value is to set the value for the path category.id -->
		    <c:forEach items="${categories }" var="c">
		    <form:option value="${c.id }">${c.categoryname }</form:option>
		    </c:forEach>
			</form:select></td></tr> 
			
			
			
			
			<tr><td><h3>Upload image</h3></td><td>
			<form:input path="image" type="file"/>
			</td></tr>
			<tr>
			
			<td><input type="submit" value="UPDTAE"></td>
			</tr>
		</table>

	</form:form>
</div>
</div>
</body>
</html>