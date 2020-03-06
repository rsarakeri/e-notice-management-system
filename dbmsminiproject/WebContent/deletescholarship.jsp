<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
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
<!DOCTYPE html>
<head>
<link href="css/deletecss.css" rel="stylesheet" type="text/css">
</head>
<html>
<body>
<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for Scholarship names.." title="Type in a name">
<h1>Scholarship Info.... </h1>

<table id="customers">
<tr>
<th>Scholarship Name</th>
<th>From</th>
<th>To</th>
<th>Documents</th>
<th>Action</th>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from scholarship";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("scholarship_name") %></td>
<td><%=resultSet.getString("active_date") %></td>
<td><%=resultSet.getString("expire_date") %></td>
<td><%=resultSet.getString("documents") %></td>
<td><a href="delet.jsp?table=scholarship&para=scholarship_name&ide=<%=resultSet.getString("scholarship_name") %>"><button type="button" class="delete" onclick="return confirm('Are you sure you want to delete?')">Delete</button></a>
<a href="updatescholarship.jsp?&i=<%=resultSet.getString("scholarship_name") %>"><button type="button" class="delete">Update</button></a></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<script>
function myFunction() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("customers");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
</script>
</body>
</html>