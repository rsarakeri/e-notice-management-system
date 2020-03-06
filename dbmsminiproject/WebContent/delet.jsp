<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<html>
<body>
<%
String ide=request.getParameter("ide");
String table=request.getParameter("table");
String para=request.getParameter("para");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/enotice","root", "");
Statement st=conn.createStatement();

int i=st.executeUpdate("DELETE FROM "+table+" WHERE "+para+"='"+ide+"'");

out.println("<script>alert('Deleted!! Sucessfully');window.location.href='delete"+table+".jsp';</script>");  


}
catch(Exception e)
{
	}
%>
</body>
</html>
