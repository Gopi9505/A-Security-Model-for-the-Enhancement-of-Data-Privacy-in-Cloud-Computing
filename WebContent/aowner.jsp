<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by TEMPLATED
http://templated.co
Released for free under the Creative Commons Attribution License

Name       : Assembly 
Description: A two-column, fixed-width design with dark color scheme.
Version    : 1.0
Released   : 20140330

-->
<%@page import="com.DBConnect.DbConnection"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Didact+Gothic"
	rel="stylesheet" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="main.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="w3.css">
<!--[if IE 6]><link href="default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->
<style type="text/css">
a
{
color: orange;
font-size: 20px;
}
h2
{
color: orange;
font-size: 30px;
}
tr,th{
color: orange;
font-size: 20px;

}
</style>
</head>
<body  style="background-image:url('cc1.jpg');"><br><br></br></br>
<a CLASS="w3-button w3-orange w3-display-right" href="adminsuccess.jsp">BACK</a>
		<br><br><br><br>
		<center>
		<div id="banner" class="container">
			<div class="title">
				<h2>Owners</h2>
				<br></br>
				<%
					String sql = "select * from owner";
							List<String> lt = DbConnection.getOwner(sql);
							Iterator<String> itr = lt.iterator();
				%>
				<table width="80%" border="1">
					<tr>
						<th style="color: orange;">Name</th>
						<th style="color: orange;">Email</th>
						<th style="color: orange;">Mobile No</th>
					</tr>
					<%
						while(itr.hasNext()){
					%>
					<tr>
						<td style="color: white;"><%=itr.next()%></td>
						<td style="color: white;"><%=itr.next()%></td>
						<td style="color: white;"><%=itr.next()%></td>
					</tr>
					<%
						}
					%>
				</table>
			</div>
		</div>
	</center>
</body>
</html>
