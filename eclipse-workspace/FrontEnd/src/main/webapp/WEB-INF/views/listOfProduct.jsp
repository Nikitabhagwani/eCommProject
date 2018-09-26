<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@include file="header1.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/sample.css" rel="stylesheet">
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>



<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
$(document).ready(function(){
	var searchCondition='${searchCondition}'
	$('.table').DataTable({
		"lengthMenu":[[5,7,-1],[5,7,"All"]],
	    "oSearch" : {
		"sSearch" : searchCondition
		}
	})
})
</script>


<link href="${ pageContext.request.contextPath}/resources/css/sample.css" rel="stylesheet">
</head>
<body background="resources/images/interior2.jpg">
<div class="container">
		<b>List of Products</b>
		<table class="table table-striped" border="1">
			<thead>
			
				<tr>
					<th><h3>Id</h3></th>
					<th><h3>Image</h3></th>
					<th><h3>Product Name</h3></th>
					<th><h3>Price</h3></th>
					 <th><h3>Category</h3></th>
					<th><h3>Action</h3></th>
				</tr>
			</thead>
			<tbody>
			
				<c:forEach var="p" items="${productsList }">
					<tr >
						<td><a
							href="<c:url value='/all/getproduct/${p.id }'></c:url>"><b>${p.id }</b></a></td>
							 <td><img src="<c:url value='/resources/images/${p.id }.png'></c:url>" height="80px" width="80px"></td>
						<td><a
							href="<c:url value='/all/getproduct/${p.id }'></c:url>">${p.productname }</a></td>
						<td>${p.price }</td>
						<td>${p.category.categoryname }</td>
						 
						<td>
						  <a href="<c:url value='/all/getproduct/${p.id }'></c:url>">
							<span
								class="glyphicon glyphicon-info-sign"></span></a> 
								
								<security:authorize access="hasRole('ROLE_ADMIN')">
								<a href="<c:url value='/admin/deleteproduct/${p.id }'></c:url>"><span
								class="glyphicon glyphicon-trash"></span></a></security:authorize> 
								
								
								<security:authorize access="hasRole('ROLE_ADMIN')">
								<a href="<c:url value='/admin/getupdateform/${p.id }'></c:url>"><span
								class="glyphicon glyphicon-pencil"></span></a></security:authorize></td>
							

					</tr>
				</c:forEach>
			</tbody>
		</table>

	</div>
</body>
