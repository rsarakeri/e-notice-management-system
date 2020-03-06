<html>
<head>
<style>
div{
position:absolute;
width:20px;
height:40px;
padding:50px;
margin:auto;
font-size:20px;
background:white;
margin-left:500px;
}

body{

font-family:algerian;

}
img{
height:400px;
width:400px;

}
</style>
</head>
<body>
<%
if(null!= session.getAttribute("theName")){
	  // User is not logged in.
	   response.sendRedirect("login.jsp");

	}

%>

<pre>
<h3 align="right"><a href="previous.jsp">LOGOUT </a></h3>
<div>
<center><a href="insert.jsp"><img src = "images/ii.png"></a></center>

</div></body>
</html>