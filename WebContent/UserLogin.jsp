<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"  "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Login</title>
<link rel="StyleSheet" href="w3.css" >
<style type="text/css">
.form{
width:900px;
padding: 50px;
font-size:150%;
margin-bottom: 100px;
}
td
{
color: orange;
font-size: 20px;
}
a{
color:yellow;
font-size: 20px;
}
h3{
color:yellow;
}
</style>
</head>
</head><body style="background-image:url('cc1.jpg');">
<a CLASS="w3-button w3-orange w3-display-left" href="LoginCSP.jsp">LOGOUT</a><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR>
<a href=index.jsp onclick=goback() class="w3-button w3-orange w3-right" > BACK</a> 
<br><br>
<center>
<form action="User" method="post">
<table>
<tr><td>Email Id</td>
<td><input type="text" name="email" value=""></td></tr>
<tr><td>Password</td>   <td><input type="password" name="pword" value=""></td></tr>
<tr><td><input type="Submit" class="w3-green w3-button"style="width:100%"></td>
<td><input type="reset" class="w3-red w3-button" style="width: 100%"> </td></tr></table>
</form>
<a href=adminlogin.jsp class="w3-text-orange w3-hover-text-white" style="text-decoration: none" >Admin Login</a>
</body>
</html>