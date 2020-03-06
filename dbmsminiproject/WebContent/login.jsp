<html>
<head>
<title>
login page
</title>
<style>
div{
width:450px;
background-color:#9fd876;
padding:50px;
margin:auto;
font-size:20px;
}
input{
padding:10px;
width:400Px;
}
</style>


</head>
<body>
<%
if(null!= session.getAttribute("theName")){
	  // User is not logged in.
	   response.sendRedirect("homepage.jsp");

	}

%>
<div>
<h3>Login Here</h3>
<form action="loginpro.jsp" method="get">
<input type="email" name="x" placeholder="Enter your email" required><br/><br/>
<input type="password" name="y" placeholder="Enter your password" required><br/><br/>
<input type="submit" name="submit">
<input type="reset" name="reset"/>
</form>
</div>
</body>