<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %> 
	 <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ include file="header1.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<c:url value="addcategory" var="url"></c:url>
	<form:form modelAttribute="category" method="POST" action="addcategory">
		<table>
			<tr>
				<td></td>
				<!-- user need not give value for id, auto generation -->
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
			<tr>
			<td></td>
			<td><input type="submit" value="Add category"></td>
			</tr>


		</table>

	</form:form>
	</div>
</body>
</html>
