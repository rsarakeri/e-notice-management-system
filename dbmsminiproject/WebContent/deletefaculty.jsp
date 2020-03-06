<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.*"%>
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
<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names.." title="Type in a name">
<h1>Faculty details..</h1>

<table id="customers">
<tr>
<th>Faculty Name</th>
<th>Department</th>
<th>Contact</th>
<th>Action</th>
</tr>
<%
try{
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/enotice","root","");
//we need to call callable statements for stored procedures
CallableStatement cstmt=con.prepareCall("{ call view()}");
Statement stmt=con.createStatement();
String sql ="select * from faculty";
ResultSet rs=stmt.executeQuery(sql);
while(rs.next()){
%>
<tr>
<td><%=rs.getString("faculty_name") %></td>
<td><%=rs.getString("dept") %></td>
<td><%=rs.getString("contact") %></td>
<td><a href="facultydeleteproc.jsp?ide=<%=rs.getString("faculty_id") %>"><button type="button" class="delete" onclick="return confirm('Are you sure you want to delete?')">Delete</button></a>
<a href="updatefaculty.jsp?table=faculty&faculty_name=faculty_name&dept=dept&contact=contact&para=faculty_id&id=<%=rs.getString("faculty_id") %>"><button type="button" class="delete">Update</button></a></td>
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