<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="com.DBConnect.DbConnection"
%>
<%@page import="java.util.*"
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>registration page</title>
<link rel="StyleSheet" href="w3.css" >
<style type="text/css">
.form{
width:650px;
padding: 50px;
font-size:150%;
margin-bottom: 100px;
}
a{
color:orange;
}
h2{
color:orange;
font-style: italic;
}

th{
font-size: 20px;
color: white;
}
td{
color: orange;
}
th,td{
margin-left: 20px;
}
thead,td,th{
border: 1.5px solid black;margin-left: 30px;
}
</style>
</head>
</head><body style="background-image:url('cc1.jpg');">
<% 
String sql = "select * from user where status1='Pending';";
ResultSet rs = DbConnection.getData1(sql);
%>
<br><br><br><br><br><br><br><br>
<a href=index.jsp onclick=goback() class="w3-button w3-orange w3-right" > LOGOUT </a> 
<a href=csphome.jsp class="w3-left w3-orange w3-button"> BACK </a>
<br>
<center>
<div >
<!-- <form action="UserDetails.jsp" method="post"> -->
<h2 class="w3-center">Users Request </h2>
<BR>
<table width="100%" border="1 solid red">
<tr><th>Name</th><th>Email</th><th>Age</th><th>Gender</th><th>Status</th></tr>
<%
try{
	while(rs.next()){
%>

<tr><td><%=rs.getString(1) %><td><%=rs.getString(2) %></td><td><%=rs.getString(3) %></td><td><%=rs.getString(4) %></td>
<td><a href="UserReq?name=<%=rs.getString(2) %>">Add</a> </td></tr>

<%} 
}catch(SQLException e){
	e.printStackTrace();
}
%>
</table>
	</form>
	</div>

</center>
</body>
</html>
