<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>registration page</title>
<link rel="StyleSheet" href="w3.css" >
<style type="text/css">
a{
color:yellow;
}
h3{
color:yellow;
}
td
{
color: orange;
}
</style>
</head>
</head><body style="background-image:url('cc1.jpg');"><br><br><BR><BR><br><br>
<a CLASS="w3-button w3-orange w3-display-left" href="index.jsp">HOME</a>
<br><br><br><center>
<form action="NewUser.jsp" method="post">
<table>
<tr><td>UserName</td>
<td><input type="text" name="uname" value=""></td></tr>
<tr><td>Email</td>                     <td><input type="text" name="email" value=""></td></tr>
<tr><td>Age</td>                          <td><input type="text" name="age" value=""></td></tr>
<tr><td>Gender</td>                       <td><input type="text" name="gender" value=""></td></tr>
<tr><td>Password</td>                       <td><input type="password" name="pword" value=""></td></tr>
<tr><td><input type="Submit" class="w3-green w3-button"style="width:100%"></td>
<td><input type="reset" class="w3-red w3-button" style="width: 100%"> </td></tr>
</table>
</form>
</body>
</html>