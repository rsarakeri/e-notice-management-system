<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/enotice";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
String first_name=request.getParameter("sports_name");
String last_name=request.getParameter("coordinator_id");
String city_name=request.getParameter("venue");
String email=request.getParameter("date");
String email1=request.getParameter("time");
String email2=request.getParameter("scholarship");

if(first_name != null)
{
Connection con = null;
PreparedStatement ps = null;

try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update sports set sports_name=?,coordinator_id=?,venue=?,date=?,time=?,scholarship=? where coordinator_id="+last_name;
ps = con.prepareStatement(sql);


ps.setString(1, first_name);
ps.setString(2, last_name);
ps.setString(3, city_name);
ps.setString(4, email);
ps.setString(5, email1);
ps.setString(6, email2);

int i = ps.executeUpdate();
if(i > 0)
{
out.println("<script>alert('updated!! Sucessfully');window.location.href='deletesports.jsp';</script>");  

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