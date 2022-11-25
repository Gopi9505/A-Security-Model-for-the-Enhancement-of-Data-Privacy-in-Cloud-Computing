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
<style type="text/css">
a
{
color: black;
font-size: 20px;
}
h2{
color: orange;
font-size: 30px;
}
</style>
</head>
<body  style="background-image:url('cc1.jpg');">
<a class="w3-button w3-orange w3-display-right" href="adminsuccess.jsp">BACK</a>
		
		
		<div id="banner" class="container" style="padding-top: 70px;">
		
		<br><br><br></br>	<div class="title">
			<center>	<h2>Attacks</h2>
				</br></br>
				<%
					String sql = "select * from attack";
							List<String> lt = DbConnection.getAttack(sql);
							Iterator<String> itr = lt.iterator();
				%>
				<table width="80%" border="1">
					<tr>
						<th style="color: orange;">FID</th>
						<th style="color: orange;">Owner</th>
						<th style="color: orange;">UserId</th>
						<th style="color: orange;">IP</th>
						<th style="color: orange;">Date</th>
					</tr>
					<%
						while(itr.hasNext()){
					%>
					<tr>
						<td style="color: white;"><%=itr.next()%></td>
						<td style="color: white;"><%=itr.next()%></td>
						<td style="color: white;"><%=itr.next()%></td>
						<td style="color: white;"><%=itr.next()%></td>
						<td style="color: white;"><%=itr.next()%></td>
					</tr>
					<%
						}
					%>
				</table></center>
			</div>
		</div>
	
</body>
</html>
