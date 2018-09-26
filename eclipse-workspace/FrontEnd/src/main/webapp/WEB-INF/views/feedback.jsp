<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header1.jsp" %>
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="${ pageContext.request.contextPath}/resources/css/sample.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body background="${ pageContext.request.contextPath}/resources/images/interior4.jpg">
<body background="interior1.jpg" >
<font color=black>
<CENTER>
<Title>SHARE YOUR VIEWS</TITLE>
<h2 ><span>SHARE YOUR VIEWS </span></h2>
<table>
               <input class="span7" type="text"placeholder="Name (required)"style="height:40px;width:200px" /><br><br>

             <input class="span7" type="text"  placeholder="Email (required)"style="height:40px;width:200px" /><br><br>
                                      
  <input class="span7" type="text"placeholder="Subject"style="height:40px;width:200px" /><br><br>

     <textarea placeholder="Message" style="height:40px;width:200px"></textarea><br><br>
                                        
                                        
                                        <input type="submit" class="btn send_btn" value="Submit" style="height:40px;width:120px" />
										
										
										
</body>
</html>

