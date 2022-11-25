<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.DBConnect.DbConnection"%>
<%@page import="java.util.Iterator"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="StyleSheet" href="w3.css" >
<style type="text/css">
body{
background-image:url('cc1.jpg');
font-family: verdana;
font-size: 40px;
font-weight: 900px;
}
a{
font-size: 20px;
color: orange;
}
th{
color: white;
}
td{
color: orange;
}
td,thead,th{
border: 1.5px solid black;
font-family: verdana;
font-size: 20px;
}
</style>
</head>
<body><br><br><br>
<a href=adminsuccess.jsp onclick=goback() class="w3-button w3-orange w3-right" > BACK</a>
<!-- <a href="adminsuccess.jsp" class="w3-button w3-orange w3-display-left" >BACK</a> -->
<center>
<table width="100%"><thead>
<tr >
<th>File ID</th>
<th>Owner</th>
<th>File Name</th>
<th>Type</th>
<th>Description</th>
</tr>
<%
try{
ResultSet r=DbConnection.getUp();
while(r.next())
{

		%>
		<tr >
		<td><%=r.getString(1) %></td>
		<td><%=r.getString(2) %></td>
		<td><%=r.getString(3) %></td>
		<td><%=r.getString(6) %></td>
		<td><%=r.getString(7) %></td>
		</tr>
		<%
	
}
}catch(SQLException e)
{
	e.printStackTrace();
}
%></thead>
</table>
</body>
</html>