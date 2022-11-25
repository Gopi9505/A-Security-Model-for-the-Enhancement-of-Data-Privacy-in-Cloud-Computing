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
<link rel="stylesheet" href="w3.css">
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Didact+Gothic"
	rel="stylesheet" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="main.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />

<!--[if IE 6]><link href="default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->
<style type="text/css">
a
{
color: black;
font-size: 20px;
}
h2{
font-size: 30px;
}
td{
color: white;
}
</style>
</head>
<body  style="background-image:url('cc1.jpg');">
<a CLASS="w3-button w3-orange w3-display-left" href="search.jsp">BACK</a>
<a CLASS="w3-button w3-orange w3-display-right" href="Files.jsp">HOME</a>
		<br><br><br><br><br><br><br>
	<center>
		<div id="banner" class="container" style="padding-top: 70px;">
			<div class="title">
				<h2 style="color: orange" >Files</h2>
				<br></br>
				<%
					String fname = request.getParameter("sub");
					String sql = "select * from upload where fname like '%"+fname+"%'"; 
					List<String> lt = DbConnection.getUFile(sql);
					Iterator<String> itr = lt.iterator();
				%>
				<table width="80%" border="1">
					<thead>
						<tr>
							<th style="color: orange;">FID</th>
							<th style="color: orange;">UserID</th>
							<th style="color: orange;">FileName</th>
							<th style="color: orange;">Download</th>
							<th style="color: orange;">Key Request</th>
						</tr>
					</thead>
					<%
						while(itr.hasNext()){
							String fid = itr.next();
					%>
					<tbody>
						<tr>
							<td><%=fid%></td>
							<td><%=itr.next()%></td>
							<td><%=itr.next()%></td>
							<td><a href="FDownload?fid=<%=fid%>" class="actions">Download</a></td>
							<td><a href="KeyReq?fid=<%=fid%>" class="actions">Request</a></td>
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
