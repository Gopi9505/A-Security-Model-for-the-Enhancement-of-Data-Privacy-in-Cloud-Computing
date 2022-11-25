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

<!--[if IE 6]><link href="default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->
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

<!-- <body  style="background-image:url('10.jpg');">
		<br><br><br><br><br><br><br><br>
		<center>	<div>
					<a href="ahome.jsp" accesskey="1" title="">Home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="aowner.jsp" accesskey="2" title="">Owner</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="auser.jsp" accesskey="3" title="">User</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="afiles.jsp" accesskey="4" title="">Files</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="akey.jsp" accesskey="4" title="">Keys</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="attack.jsp" accesskey="4" title="">Attack</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="index.html" accesskey="5" title="">Logout</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				
		</div>
		</center>
		<center> -->
		
		
<div id="banner" class="container">
			<div class="title">
			<center>	<h2 style="color: orange;">Key Requests</h2></center>
				<br>
				<%
					String sql = "select * from keyreq where status1='pending'";
							List<String> lt = DbConnection.getAkey(sql);
							Iterator<String> itr = lt.iterator();
				%>
				<table width="100%" border="1" class="table-wrapper">
					<thead>
						<tr>
							<th style="color: orange; font-size: 20px;">FID</th>
							<th style="color: orange; font-size: 20px;">Owner</th>
							<th style="color: orange; font-size: 20px;">User</th>
							<th style="color: orange; font-size: 20px;">Approve</th>
						</tr>
					</thead>
					<%
						while(itr.hasNext()){
							String fid = itr.next();
					%>
					<tbody>
						<tr>
							<td style="color: white; font-size: 20px;"><%=fid%></td>
							<td style="color: white; font-size: 20px;"><%=itr.next()%></td>
							<td style="color: white; font-size: 20px;"><%=itr.next()%></td>
							<td><a href="approve?fid=<%=fid%>&&da=<%=itr.next()%>"
								class="actions">Approve</a></td>
						</tr>
					</tbody>
					<%
						}
					%>
				</table>
			</div>
		</div>
	</center>
</body>
</html>
