<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String id = request.getParameter("i");
out.println(id);
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "enotice";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from scholarship where scholarship_name='"+id+"'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<head>
<head>
<link href="css/insertstyle.css" rel="stylesheet" type="text/css">
</head>
<style>
input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}
</style>
</head>>
<body>
<h1>Update data </h1>
<form method="get" action="update-process3.jsp">

<br>
scholarship_name:<br>
<input type="text" name="scholarship_name" value="<%=resultSet.getString("scholarship_name") %>">
<br>
active_date:<br>
<input type="text" name="active_date" value="<%=resultSet.getString("active_date") %>">
<br>
expire_date:<br>
<input type="text" name="expire_date" value="<%=resultSet.getString("expire_date") %>">
<br>
documents:<br>
 <textarea id="subject" type="text "name="documents"  style="height:200px" 
 value="<%=resultSet.getString("expire_date") %>"></textarea>
<br><br>
<input type="submit" value="update">
</form>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>