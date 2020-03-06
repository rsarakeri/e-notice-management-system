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
String sql ="select * from placement where "+para+"="+id;
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
<form method="get" action="update-process1.jsp">

<br>
coordinator id:<br>
<input type="text" name="coordinator_id" value="<%=resultSet.getString("coordinator_id") %>">
<br>
company Name:<br>
<input type="text" name="company_name" value="<%=resultSet.getString("company_name") %>">
<br>
eligibility:<br>
<input type="text" name="eligibility" value="<%=resultSet.getString("eligibility") %>">
<br>
date_of_visit:<br>
<input type="text" name="date_of_visit" value="<%=resultSet.getString("date_of_visit") %>">
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