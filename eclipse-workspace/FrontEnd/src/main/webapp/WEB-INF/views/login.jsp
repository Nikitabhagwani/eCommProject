<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header1.jsp" %>
<html>
  <head>

<link href="resources/css/sample.css" rel="stylesheet">
  <!-- <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->
</head>
<body background="${ pageContext.request.contextPath}/resources/images/interior4.jpg">
<div background="resources/images/interior2.jpg">
<div class="container">
<!--  <h1 class="form-heading">login Form</h1> -->
<div class="login-form">
<div class="main-div">
    <div class="panel">
   <h2>ADMIN LOGIN</h2>
   <p>Please enter your email and password</p>
   </div>
   
   
   
   
   <span style="color:red">${error }</span><br>
${msg }<br>
<b>Login Page</b><br>
<c:url value="/j_spring_security_check" var="url"></c:url>
<form method="post" action="${url }"><br>
Enter Email :  &nbsp;&nbsp;&nbsp;&nbsp;   <input type="text" name="j_username"><br><br>
Enter password : <input type="password" name="j_password"><br><br>
<br><input type="submit" value="Login">

   
   
   
   
   
   
   

    <!-- <form id="Login" method="post">

        <div class="form-group">


            <input type="email" class="form-control" name="username" placeholder="Email Address">

        </div>

        <div class="form-group">

            <input type="password" class="form-control" name="password" placeholder="Password">

        </div>
        <div class="forgot">
        <a href="#">Forgot password?</a>
</div>
        <button type="submit" class="btn btn-primary">LOGIN</button>

    </form>
    </div>
</div></div></div>


 --></body>
</html>

