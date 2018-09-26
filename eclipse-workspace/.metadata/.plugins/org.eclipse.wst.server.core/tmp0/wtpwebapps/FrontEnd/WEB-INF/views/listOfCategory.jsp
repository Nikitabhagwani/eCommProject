<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
      <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %> 
    <%@ include file="header1.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
div class="container">
	<b>List of Category</b>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>ID</th>
					<th>category</th>
					<th>PRICE</th>
					<th>ACTION</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="p" items="${categorysList }">
					<tr >
						
						  <a href="<c:url value='/getcategory/${p.id }'></c:url>">
						<span
								class="glyphicon glyphicon-info-sign"></span></a> 
								
								
								<a href="<c:url value='/deletecategory/${p.id }'></c:url>"><span
								class="glyphicon glyphicon-trash"></span></a> 
								
								<a href="<c:url value='/getCupdateform/${p.id }'></c:url>"><span
								class="glyphicon glyphicon-pencil"></span></a>

					</tr>
				</c:forEach>
			</tbody>
		</table>

	
</body>
</html>