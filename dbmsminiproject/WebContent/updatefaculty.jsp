<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String table=request.getParameter("table");
String para=request.getParameter("para");
String id = request.getParameter("id");
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
String sql ="select * from faculty where "+para+"="+id;
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
<form method="get" action="update-process.jsp">

<br>
Faculty id:<br>
<input type="text" name="faculty_id" value="<%=resultSet.getString("faculty_id") %>">
<br>
Faculty Name:<br>
<input type="text" name="faculty_name" value="<%=resultSet.getString("faculty_name") %>">
<br>
Department:<br>
<input type="text" name="dept" value="<%=resultSet.getString("dept") %>">
<br>
Contact:<br>
<input type="text" name="contact" value="<%=resultSet.getString("contact") %>">
<br><br>

<td><a href="update-process.jsp?table=faculty&id=<%=resultSet.getString("faculty_id") %>"><input type="submit" value="update"></a></td>

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