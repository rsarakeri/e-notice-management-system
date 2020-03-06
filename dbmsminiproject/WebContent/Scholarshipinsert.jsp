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
    <li><a href="deletescholarship.jsp"><button>DELETE</button><a/><li>
    <li><a href="deletescholarship.jsp"><button>UPDATE</button><a/><li>
</ul>
</div>
<h1 align="center">SCHOLARSHIP TABLE</h1>

<div>
  <form class = "ff" action="Scholarshipinsert.jsp">
    <label >Scholarship Name</label>
   <br> <input type="text" name="a" placeholder="enter scholarship name" required> 

  <p>  <label>Active Date</label>
    <br><input type="date" name="b" placeholder="enter active date" required><br>
   
    <label >Expire Date</label>
   <br> <input type="date" name="c" placeholder="enter expire date" required><br></p>
    
    <label >Documents</label>
   <br> <input type="text" name="d" placeholder="enter documents required" required>

    <input type="submit" value="Submit">
 
</div>
   <% 
try{
	String a=request.getParameter("a");
	String b=request.getParameter("b");
	String c=request.getParameter("c");
	String d=request.getParameter("d");
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/enotice","root","");  
//here sonoo is database name, root is username and password  
  
String q="insert into scholarship values(?,?,?,?)";  
 //
PreparedStatement stmt=con.prepareStatement(q);  
stmt.setString(1,a);//1 specifies the first parameter in the query  
stmt.setString(2,b);  
stmt.setString(3,c);
stmt.setString(4,d);
  
int i=stmt.executeUpdate();  
out.println("<script>alert('sucessfully inserted!!');</script>");  
  
con.close(); 
}catch(Exception e){
	
} 
   %>
</form>

</body>
</html>