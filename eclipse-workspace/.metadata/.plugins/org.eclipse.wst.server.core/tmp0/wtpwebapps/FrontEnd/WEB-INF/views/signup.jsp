<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header1.jsp" %>
<html>
  <head>

  <link href="resources/css/sample.css" rel="stylesheet">
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body id="LoginForm">

<div class="container">
<h1 class="form-heading">login Form</h1>
<div class="login-form">
<div class="main-div">
    <div class="panel">
   <h2>REGISTER HERE</h2>
   <p>Please enter your details</p>
   </div>
    <form id="Login" method="post">
    
<div class="form-group">

             
            <input type="text" class="form-control" name="FIRSTNAME" placeholder="Enter your first name">

        </div> 
        <div class="form-group">

             
            <input type="text" class="form-control" name="LASTNAME" placeholder="Enter your last name">

        </div>    
    
    

        <div class="form-group">

             
            <input type="email" class="form-control" name="EMAIL-ID" placeholder="Email Address">

        </div>
        
        

        <div class="form-group">

            <input type="password" class="form-control" name="PASSWORD" placeholder="Password">

        </div>
        <div class="form-group">

            <input type="password" class="form-control" name="RE-ENTER" placeholder="Re-enter Password">

        </div>
        <DIV>
        <select>
        <option selected="selected" class="gender" disabled selected >I AM...</option>
<option value="MALE">MALE</option>
<option value="FEMALE">FEMALE</option>

</select>

</DIV>
<br>
<div class="form-group">

            <input type="TEXT" class="form-control" name="MOBILE-NO" placeholder="Enter mobile no">

        </div>
        
        
        <button type="submit" class="btn btn-primary">REGISTER</button>

    </form>
    </div>
</div></div></div>


</body>
</html>




