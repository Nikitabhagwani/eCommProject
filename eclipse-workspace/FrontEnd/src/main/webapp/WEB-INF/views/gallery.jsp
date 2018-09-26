<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header1.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <link href="resources/css/sample.css" rel="stylesheet">
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="${ pageContext.request.contextPath}/resources/css/sample.css" rel="stylesheet">


<style>
div.gallery {
    margin: 5px;
    border: 1px solid #ccc;
    float: left;
    width: 180px;
}

div.gallery:hover {
    border: 1px solid #777;
}

div.gallery img {
    width: 100%;
    height: 100%;
}

div.desc {
    padding: 15px;
    text-align: center;
}
</style>
</head>
<body background="resources/images/bg.jpg">

<div class="gallery">
  <!-- <a target="_blank" href="fjords.jpg"> -->
  <a href="<c:url value='/all/getAllProducts'></c:url>">
    <img src="${ pageContext.request.contextPath}/resources/images/bend1.jpg" width="600" height="600">
 </a>
 </div>
  </a>
 
</div>

<div class="gallery">
 <a href="<c:url value='/all/getAllProducts'></c:url>">
    <img src="${ pageContext.request.contextPath}/resources/images/door1.jpg" width="600" height="600">
    </a>
</div>

<div class="gallery">
  <a href="<c:url value='/all/getAllProducts'></c:url>">
    <img src="${ pageContext.request.contextPath}/resources/images/pipedemo.jpg" width="600" height="600">
  </a>
  
</div>

<div class="gallery">
  <a href="<c:url value='/all/getAllProducts'></c:url>">
    <img src="${ pageContext.request.contextPath}/resources/images/tap.jpg" width="600" height="600">
  </a>
  </div>
  
  <div class="gallery">
  <a href="<c:url value='/all/getAllProducts'></c:url>">
    <img src="${ pageContext.request.contextPath}/resources/images/interior4.jpg" width="600" height="600">
  </a>  
</div>
 <div class="gallery">
  <a href="<c:url value='/all/getAllProducts'></c:url>">
    <img src="${ pageContext.request.contextPath}/resources/images/interior5.jpg" width="600" height="600">
  </a>  
</div>
 <div class="gallery">
  <a href="<c:url value='/all/getAllProducts'></c:url>">
    <img src="${ pageContext.request.contextPath}/resources/images/interior6.jpg" width="600" height="600">
  </a>  
</div>
<br>





<div class="gallery">
  <a href="<c:url value='/all/getAllProducts'></c:url>">
    <img src="${ pageContext.request.contextPath}/resources/images/img1.jpg" width="600" height="600">
  </a>  
</div>
<br>
<div class="gallery">
  <a href="<c:url value='/all/getAllProducts'></c:url>">
    <img src="${ pageContext.request.contextPath}/resources/images/img2.jpg" width="600" height="600">
  </a>  
</div>
<div class="gallery">
  <a href="<c:url value='/all/getAllProducts'></c:url>">
    <img src="${ pageContext.request.contextPath}/resources/images/img3.jpg" width="600" height="600">
  </a>  
</div>
<div class="gallery">
  <a href="<c:url value='/all/getAllProducts'></c:url>">
    <img src="${ pageContext.request.contextPath}/resources/images/img4.jpg" width="600" height="600">
  </a>  
</div>


<div class="gallery">
  <a href="<c:url value='/all/getAllProducts'></c:url>">
    <img src="${ pageContext.request.contextPath}/resources/images/img5.jpg" width="600" height="600">
  </a>  
</div>

<div class="gallery">
  <a href="<c:url value='/all/getAllProducts'></c:url>">
    <img src="${ pageContext.request.contextPath}/resources/images/img6.jpg" width="600" height="600">
  </a>  
</div>


<div class="gallery">
  <a href="<c:url value='/all/getAllProducts'></c:url>">
    <img src="${ pageContext.request.contextPath}/resources/images/img7.jpg" width="600" height="600">
  </a>  
</div>


<div class="gallery">
  <a href="<c:url value='/all/getAllProducts'></c:url>">
    <img src="${ pageContext.request.contextPath}/resources/images/img8.jpg" width="600" height="600">
  </a>  
</div>

<div class="gallery">
  <a href="<c:url value='/all/getAllProducts'></c:url>">
    <img src="${ pageContext.request.contextPath}/resources/images/img9.jpg" width="600" height="600">
  </a>  
</div>

<div class="gallery">
  <a href="<c:url value='/all/getAllProducts'></c:url>">
    <img src="${ pageContext.request.contextPath}/resources/images/img10.jpg" width="600" height="600">
  </a>  
</div>


</body>
</html>