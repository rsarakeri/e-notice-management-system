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
    <li><a href="deleteacademic.jsp"><button>DELETE</button><a/><li>
    <li><a href="deleteacademic.jsp"><button>UPDATE</button><a/><li>
</ul>
</div>
<h1 align="center">ACADEMIC TABLE</h1>

<div>
  <form class = "ff" action="Academicinsert.jsp">
    <label >Department</label>
   <br> <input type="text" name="a" placeholder="enter Department name" oninvalid="alert('You must fill out the form!');" required> 

  <p>  <label>Date</label>
    <br><input type="date" name="b" placeholder="enter active date"  required><br>
   
    <label >Description</label>
   <br> <input type="text" name="c" placeholder="enter Description" required><br></p>
    
    <label >Scholarship</label>
   <br> <input type="text" name="d" placeholder="enter Scholarship" >

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
  
String q="insert into academic values(?,?,?,?)";  
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