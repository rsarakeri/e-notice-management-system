<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%

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
String sql ="select * from academic where dept='"+id+"'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<body>
<h1>Update data </h1>
<form method="get" action="update-process4.jsp">

<br>
Department:<br>
<input type="text" name="dept" value="<%=resultSet.getString("dept") %>" required>
<br>
Date:<br>
<input type="text" name="date" value="<%=resultSet.getString("date") %>" required>
<br>
Description:<br>
<input type="text" name="description" value="<%=resultSet.getString("description") %>" required>
<br>
Scholarship:<br>
<input type="text" name="scholarship" value="<%=resultSet.getString("scholarship") %>"required>
<br><br>
<input type="submit" value="update"></a>

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