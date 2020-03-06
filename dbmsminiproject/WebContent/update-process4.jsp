<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/enotice";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
String first_name=request.getParameter("dept");
String last_name=request.getParameter("date");
String city_name=request.getParameter("description");
String email=request.getParameter("scholarship");


if(first_name != null)
{
Connection con = null;
PreparedStatement ps = null;

try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update academic set dept=?,date=?,description=?,scholarship=? where dept='"+first_name+"'";
ps = con.prepareStatement(sql);


ps.setString(1, first_name);
ps.setString(2, last_name);
ps.setString(3, city_name);
ps.setString(4, email);
int i = ps.executeUpdate();
if(i > 0)
{
out.println("<script>alert('updated!! Sucessfully');window.location.href='deleteacademic.jsp';</script>");  

}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>