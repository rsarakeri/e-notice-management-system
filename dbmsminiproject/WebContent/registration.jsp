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
background:rgba(1,0,0,0.4);
}
input{
padding:10px;
width:400Px;
}
body{
background:url(reg.jpg);
}
</style>


</head>
<body>
<div>
<form action="regpro.jsp" method="get">
<input type="email" name="a" placeholder="Enter your email" required><br/><br/>
<input type="password" name="b" placeholder="Enter your password" required><br/><br/>
<input type="text" name="c" placeholder="Enter your phone number" required><br/><br/>
<input type="submit"  value="register">
<input type="reset"  value="clear"/>

</form>
<a href="login.jsp">click here if you have already registered!!--></a>
</div>
</body>
</html>