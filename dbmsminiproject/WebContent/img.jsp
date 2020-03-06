<!DOCTYPE html>
<%@page import="java.sql.*,java.util.*"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Bootstrap 4 Carousel</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<style>
.container {
  position: relative;
  width: 40%;
}
.carousel{
   background:rgba(1,0,0,0.1);
    margin-top: 20px;
}

.carousel-item{
    text-align: center;
    min-height: 280px; /* Prevent carousel from being distorted if for some reason image doesn't load */
}
.bs-example{
    width:40%;
    height:40%;
	margin:10px;
	background: cover;
	margin:0;
	color:red;
}
#footer {
	width: 100%;
	height: 100px;
	position:bottom;
	bottom:0px;
	background-color: #f5f5f5;

}

.bottomLeft{
	color: #585858;
	float: left;
	padding: 10px;
	margin-left: 20px;
	margin-top:20px;
	text-decoration: none;

}

.bottomRight{
	color: #585858;
	float: right;
	margin-right: 20px;
	padding: 10px;
		margin-top:20px;
	text-decoration: none;
}



body{

margin:0;
 padding:0;
  font-family:Arial;
font-size:16px;

}
.container{
cursor:pointer;
border:solid 2px;
position:relative;
height:380px;
width:400px;
border-radius:25px;
padding:10px;
margin:40px;
background:mist;
}

.image {
  display: block;
  width: 100%;
  height: 100%;
  
}
img{
height:250px;
width:600px;
}
.overlay {
  position:absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  height:100%;
  width: 100%;
  opacity: 0;
  transition: .9s ease;
  background-color: #00c07f;
  border-radius:25px;
}

.container:hover .overlay {
  opacity: 1;
}

.text {

  color:black;
  font-size:19px;
  position: absolute;
  top: 50%;
  left: 50%;
  -webkit-transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
  text-align: center;
}
.all{
margin-left:25px;
  display: flex;
  flex-wrap: wrap;
  flex-direction: column;
  width: 500px;
  height: 400px;
  align-content: space-between;
  padding:20px;
}
</style>
</head>
<body> 

<center>
<%
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/enotice","root","");
	//we need to call callable statements for stored procedures
	CallableStatement cstmt=con.prepareCall("{ call view()}");
	ResultSet rs=cstmt.executeQuery();//we need to call callable statements for stored procedures
	
			%>
			Total:
			<%
			Statement stmt=con.createStatement();
	
	con.close();
}
catch(Exception e)
{
	}
%>
<hr color="black">Online Notice Board<hr color="black">

<div class="bs-example">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Carousel indicators -->
        <!-- Wrapper for carousel items -->
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="images/gg.jpeg" alt="First Slide">
        </div>
        <!-- Carousel controls -->
        <a class="carousel-control-prev" href="#myCarousel" data-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </a>
        <a class="carousel-control-next" href="#myCarousel" data-slide="next">
            <span class="carousel-control-next-icon"></span>
        </a>
    </div>
</div>
</center>
<div class="all">
<a href="academicview.jsp"><div class="container">
  <img src="images/aaaa.png" class="image">
  <div class="overlay">
    <div class="text">A C A D E M I C</div>
  </div></a>
  </div>

<a href="Facultyview.jsp"><div class="container">
  <img src="images/faculty.png" class="image">
  <div class="overlay">
    <div class="text">F A C U L T Y</div>
  </div></a>
</div>
<a href="Culturalview.jsp"><div class="container">
  <img src="images/x.jpg" class="image">
  <div class="overlay">
    <div class="text">C U L T U R A L</div>
  </div></a>
</div>

</div>

<div class="all">
<a href="Sports.jsp"><div class="container">
  <img src="images/ssa.png" class="image">
  <div class="overlay">
    <div class="text">S P O R T S</div>
  </div></a>
</div>

<a href="Placementview.jsp"><div class="container">
  <img src="images/z.jpg" class="image">
  <div class="overlay">
    <div class="text">P L A C E M E N T</div>
  </div></a>
</div>

<a href="Scholarshipview.jsp"><div class="container">
  <img src="images/kk.png" class="image">
  <div class="overlay">
    <div class="text">S C H O L A R S H I P</div>
  </div></a>
</div>
 

</div>
  <div id="footer">
        	<a href="#" class="bottomLeft">Advertising</a>
            <a href="#" class="bottomLeft">Business</a>
            <a href="https://www.instagram.com/rahul_araker/" class="bottomLeft">About</a>
            <a href="https://www.instagram.com/rahul_araker/" class="bottomRight">www.instagram.com</a>


            <a href="#" class="bottomRight">Settings</a>
            <a href="#" class="bottomRight">Terms</a> 
            <a href="#" class="bottomRight">Privacy</a>    
        </div>
</body>
</html>                                                        