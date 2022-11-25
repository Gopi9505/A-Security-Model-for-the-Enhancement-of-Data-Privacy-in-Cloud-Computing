
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
input {
	border: none;
	border-bottom: black solid 1px;
	width: 100%;
}
#form{
border: solid 1px black;
width:500px;
padding: 50px;
left: 300px;
position: absolute;


}
td{
text-align: left;
color: orange;
}
</style>
<link rel="stylesheet" href="w3.css">
</head>
<body style="background-image:url('cc1.jpg');"><br><br><br><br>
<a CLASS="w3-button w3-orange w3-display-left" href="index.jsp">BACK</a>

<center>
<div ><br><br><br><br><br><br>
<form action="RegServlets" method="post">
<table >
<tr><td>NAME</td><td><input type=text name="name" ></td></tr>
<tr><td>EMAIL ID</td><td><input type=text name="uid" ></td></tr>
<tr><td>AGE</td><td><input type=text name="age" ></td></tr>
<tr><td>GENDER</td><td><input type=text name="gen" ></td></tr>
<tr><td>PASSWORD</td><td><input type=password name="pass" ></td></tr>
<tr><td><input CLASS="w3-button w3-orange w3-disply" type="submit"></td>
<td><input type="reset" class="w3-orange w3-button" style="width: 100%"></td></tr>
<tr><td><a href=UserLogin.jsp class="w3-text-orange w3-hover-text-white">User Login</a></td></tr>
</table>
</form>
</div>
</body>
</html>