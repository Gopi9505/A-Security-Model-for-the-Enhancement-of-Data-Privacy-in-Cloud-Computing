<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="w3.css">
<style>
body{
font-size:30px;
font-family:verdana;
}
.body{
background-image: url(cc1.jpg);
	background-size: cover;
	-webkit-filter: blur(5px);
	z-index: 0;
}
h1{
text-align:center;
color:red;
}
a{
font-size: 20px;
}
</style>
</head>
<body onload="hidingall()" background="cc1.jpg">
<br>
<!-- <a CLASS="w3-button w3-orange w3-display-left" href="index.jsp">HOME</a> -->
<div class=" w3-center w3-paddong ">
<pre style="font-size:30px;font-weight: 900;font-stretch: narrower;"><br>
<a href=StoredInfo.jsp class="w3-text-orange w3-hover-text-white">Stored Information</a><br>
<a href=afiles.jsp class="w3-text-orange w3-hover-text-white">Update keys</a><br>
<a href=aowner.jsp class="w3-text-orange w3-hover-text-white">Owner</a><br>
<a href=akey.jsp class="w3-text-orange w3-hover-text-white">Keys</a><br>
<a href=auser.jsp class="w3-text-orange w3-hover-text-white">User</a><br>
<a href=Attackers.jsp class="w3-text-orange w3-hover-text-white">Attackers</a><br>
<a href=adminlogin.jsp class="w3-text-orange w3-hover-text-white">Logout</a>
</pre></div></body>
</html>