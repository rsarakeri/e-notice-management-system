<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">
body{
background:url(images/googl.jpeg);
color:blue;
margin:0;
padding:0;
background-size:cover;
}

input{
position:relative;
cursor:pointer;
border-radius:100px;
height:90px;
width:300px;
padding:0px;
margin:10px;
font-size:20px;
background:rgba(1,0,0,0.2);
color:white;
}
</style>
</head>
<body>

<font color="red">
<marquee><h2>Welcome!! to e-notice system </h2></marquee>
</font>
<center>
<div>
<form action="NewFile.jsp" method="get" target="_self">
<input type="submit" name="submit" value="ADMIN" >
</form>
<form action="img.jsp" method="get">
<input type="submit" name="submit" value="USER">
</form>
</center>
</div>
<footer>
  <p>Developed by: Rsquare</p>
  <p>Contact information: <a href="mailto:someone@example.com">someone@example.com</a>.</p>
</footer>
</body>
</html>