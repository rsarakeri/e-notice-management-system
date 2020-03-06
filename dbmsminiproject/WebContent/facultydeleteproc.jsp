<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<html>
<body>
<%


String ide=request.getParameter("ide");

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/enotice","root","");
	//we need to call callable statements for stored procedures
	
			
	CallableStatement cstmt=con.prepareCall("{ call det(?)}");

	cstmt.setString(1,ide);
	
	int i=cstmt.executeUpdate();
	con.close();
	

out.println("<script>alert('Deleted!! Sucessfully');window.location.href='deletefaculty.jsp';</script>");  

}
catch(Exception e)
{
	}
%>
</body>
</html>
