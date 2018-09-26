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
<link href="${ pageContext.request.contextPath}/resources/css/sample.css" rel="stylesheet">
</head>
<body background="${ pageContext.request.contextPath}/resources/images/interior4.jpg">

<div class="container" style="padding-left:350px">
<c:url value="/admin/updatecategory" var="url"></c:url>
<form:form modelAttribute="category" action="${url }">
		<table>
			<tr>
				<td></td>
				<!-- user need not
				 give value for id, auto generation -->
				<td><form:hidden path="id"></form:hidden></td>
			</tr>
			<tr>
				<td><h3>Enter category Name</h3>
				</td>
				<td><form:input path="categoryname"></form:input></td>
			</tr>
			<tr>
			<td><h3>Enter category Description</h3></td>
			<td><form:textarea path="categorydesc"></form:textarea></td></tr>
			
			<td><input type="submit" value="Edit category"></td>
			</tr>


		</table>

	</form:form>
</div>
</body>
</html>