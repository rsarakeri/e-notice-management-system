<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "enotice";
String userId = "root";
String password = "";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<h2 align="center"><font><strong>Retrieve data from database in jsp</strong></font></h2>
<table align="center" cellheight="20px" cellwidth="100" cellpadding="20" cellspacing="20" border="1">

<tr bgcolor="#A52A2A">
<td><b>Faculty-Name</b></td>
<td><b>Department</b></td>
<td><b>Contact</b></td>
<td><b>delete</b></td>
<td><b>update</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM faculty";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">
<td><%=resultSet.getString("faculty_name") %></td>
<td><%=resultSet.getString("dept") %></td>
<td><%=resultSet.getString("contact") %></td>
<td><a href="delet.jsp?faculty=<%=resultSet.getString("faculty_id") %>"><button type="button" class="delete">Delete</button></a></td>
</tr>
<% 
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>