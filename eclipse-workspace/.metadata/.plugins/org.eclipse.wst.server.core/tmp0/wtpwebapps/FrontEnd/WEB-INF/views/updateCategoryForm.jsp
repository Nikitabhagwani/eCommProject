<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %> 
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
<c:url value="/updatecategory" var="url"></c:url>
<form:form modelAttribute="category" action="${url }">
		<table>
			<tr>
				<td></td>
				<!-- user need not
				 give value for id, auto generation -->
				<td><form:hidden path="id"></form:hidden></td>
			</tr>
			<tr>
				<td>Enter category Name
				</td>
				<td><form:input path="categoryname"></form:input></td>
			</tr>
			<tr>
			<td>Enter category Description</td>
			<td><form:textarea path="categorydesc"></form:textarea></td></tr>
			<tr>
			<td>Enter Price</td>
			<td><form:input path="price"></form:input></td></tr>
			
			
			<tr><td>Enter Quantity</td>
			<td><form:input path="quantity"></form:input></td></tr>
			
			<td><input type="submit" value="Edit category"></td>
			</tr>


		</table>

	</form:form>
</div>
</body>
</html>