<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %> 
	 <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ include file="header1.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>


<style type="text/css">
#submit {
  background-color: #bbb;
  padding: .5em;
  -moz-border-radius: 5px;
  -webkit-border-radius: 5px;
  border-radius: 6px;
  color: #fff;
  font-family: 'Oswald';
  font-size: 20px;
  text-decoration: none;
  border: none;
}
</style>
<link href="${ pageContext.request.contextPath}/resources/css/sample.css" rel="stylesheet">
</head>
<body background="${ pageContext.request.contextPath}/resources/images/interior4.jpg">
<div class="container" style="padding-left:350px">
	<c:url value="/admin/addcategory" var="url"></c:url>
	<form:form modelAttribute="category" method="POST" action="${url }">
		<table>
			<tr>
				<td></td>
				<!-- user need not give value for id, auto generation -->
				<td><form:hidden path="id"></form:hidden></td>
			</tr>
			<tr>
				<td><h3>Enter category Name
				</h3></td>
				<td><form:input path="categoryname"></form:input></td>
			</tr>
			<tr>
			<td><h3>Enter category Description</h3></td>
			<td><form:textarea path="categorydesc"></form:textarea></td></tr>
			
			<td></td>
			<td><input type="submit" value="Add category"></td>
			</tr>


		</table>

	</form:form>
	</div>
</body>
</html>
