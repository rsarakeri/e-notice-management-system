<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String table=request.getParameter("table");
String para=request.getParameter("para");
String id = request.getParameter("id");
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
String sql ="select * from sports where coordinator_id="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<head>
<link href="css/insertstyle.css" rel="stylesheet" type="text/css">
</head>
<body>
<h1>Update data </h1>
<form method="get" action="update-process2.jsp">

<br>
sports name:<br>
<input type="text" name="sports_name" value="<%=resultSet.getString("sports_name") %>">
<br>
coordinator id :<br>
<input type="text" name="coordinator_id" value="<%=resultSet.getString("coordinator_id") %>">
<br>
venue:<br>
<input type="text" name="venue" value="<%=resultSet.getString("venue") %>">
<br>
date:<br>
<input type="text" name="date" value="<%=resultSet.getString("date") %>">
<br>
time:<br>
<input type="text" name="time" value="<%=resultSet.getString("time") %>">
<br>
scholarship:<br>
<input type="text" name="scholarship" value="<%=resultSet.getString("scholarship") %>">
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