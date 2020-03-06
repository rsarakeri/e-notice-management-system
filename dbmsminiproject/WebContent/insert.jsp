<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style 
type="text/css">
body{
margin-top:300px;
 font-family:Arial;
background:white ;
margin:40px;
padding:20px;
background-size:cover;
}

input{
font-size:20px;
  font-weight: bold;
  font-variant:small-caps;
cursor:pointer;
padding:10px;
border: 1px solid;
background-color: white;
color: black;
border: 2px solid #4CAF50; /* Green */
width:300Px;
border-radius:30px;
  position: relative;
  height: 100px;;
  bottom: 20px;
  width: 20%;
  border: 3px solid black;
  margin-top:25px;
}
.btn-group input {
  background-color: white; /* Green background */
  border: 2px solid black; /* Green border */
  color: Black; /* White text */
  padding: 10px 24px; /* Some padding */
  cursor: pointer; /* Pointer/hand icon */
  width: 40%; /* Set a width if needed */
  display: block; /* Make the buttons appear below each other */
}

.btn-group input:not(:last-child) {
  border-bottom: none; /* Prevent double borders */
}

/* Add a background color on hover */
.btn-group input:hover {
  background-color: #eddb99;
}
}
a {
text-decoration: none;
}
</style>
</head>

<body>
<center>
<div class ="btn-group">
<a href="Facultyinsert.jsp" style="text-decoration: none;"><input type = "button" value = "Faculty Notice"></a>
<a href="Scholarshipinsert.jsp" style="text-decoration:none;"><input type = "button" value = "Scholarship Notice"></a>
<a href="Academicinsert.jsp" style="text-decoration:none;" ><input type = "button" value = "Academic Notice"></a>
<a href="Culturalinsert.jsp" style="text-decoration:none;"><input type = "button" value = "Cultural Notice"></a>
<a href="Sportsinsert.jsp" style="text-decoration:none;"><input type = "button" value = "Sports Notice"></a>
<a href="Placementinsert.jsp" style="text-decoration:none;"><input type = "button" value = "Placement Notice"></a>
</div>
</center>
</body>
</html>