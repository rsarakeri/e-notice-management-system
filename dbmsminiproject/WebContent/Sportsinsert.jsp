<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="java.sql.*"%>
        <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="css/insertstyle.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class=delete>
<ul>
    <li><a href="deletesports.jsp"><button>DELETE</button><a/><li>
    <li><a href="deletesports.jsp"><button>UPDATE</button><a/><li>
</ul>
</div>
<h1 align="center">SPORTS TABLE</h1>

<div>
  <form class = "ff" action="Sportsinsert.jsp">
    <label>Sports Name</label>
   <br> <input type="text" name="a" placeholder="enter event name" required> 

  <p>  <label>Coordinator id</label>
    <br><input type="text" name="b" placeholder="enter coordinator id" required><br>
   
    <label >Venue</label>
   <br> <input type="text" name="c" placeholder="enter venue" required><br></p>
    
    <label >Date</label>
   <br> <input type="date" name="d" placeholder="enter date" required><br>

<label >Time</label>
   <br> <input type="time" name="e" placeholder="enter time" required><br>

<label >Scholarship</label>
   <br> <input type="text" name="f" placeholder="enter scholarship" required>
    <input type="submit" value="Submit">
 
</div>
   <% 
try{
	String a=request.getParameter("a");
	String b=request.getParameter("b");
	String c=request.getParameter("c");
	String d=request.getParameter("d");
	String e=request.getParameter("e");
	String f=request.getParameter("f");
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/enotice","root","");  
//here sonoo is database name, root is username and password  
  
String q="insert into sports values(?,?,?,?,?,?)";  
 //
PreparedStatement stmt=con.prepareStatement(q);  
stmt.setString(1,a);//1 specifies the first parameter in the query  
stmt.setString(2,b);  
stmt.setString(3,c);
stmt.setString(4,d);
stmt.setString(5,e);
stmt.setString(6,f);
int i=stmt.executeUpdate();  
out.println("<script>alert('sucessfully inserted!!');</script>");  
con.close(); 
}catch(Exception e){
	
} 
   %>
</form>

</body>
</html>