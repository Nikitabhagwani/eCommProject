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

	<b><h2>List of Category</h2></b>
		<table class="table table-striped" border="1">
			<thead>
				<tr>
		
					<th><center><h3>ID</h3></center></th>
					<th><center><h3>CATEGORY</h3></center></th>
					<th><center><h3>ACTION</h3></center></th>
				</tr>
			</thead>
			<tbody>
				
				
				<c:forEach var="c" items="${categoryList }">
					<tr >
						<td><a
							href="<c:url value='/all/getcategory/${p.id }'></c:url>">${c.id }</a></td>
							 
						<td><a
							href="<c:url value='/all/getcategory/${p.id }'></c:url>">${c.categoryname }</a></td>
				
				
				
				
						<td>
						  <a href="<c:url value='/all/getcategory/${c.id }'></c:url>">
						<span
								class="glyphicon glyphicon-info-sign"></span></a> 
								
								
								<a href="<c:url value='/admin/deletecategory/${c.id }'></c:url>"><span
								class="glyphicon glyphicon-trash"></span></a> 
								
								<a href="<c:url value='/admin/getCupdateform/${c.id }'></c:url>"><span
								class="glyphicon glyphicon-pencil"></span></a>

					</tr>
				</c:forEach>
			</tbody>
		</table>
</div>

	
</body>
</html>