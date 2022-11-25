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
p {
	font-size: 20px;
	font-family: verdana;
}
a
{
color: orange;
font-style: italic;
font-size: 24px;
}
h2
{
color: orange;
font-size: 30px;
}
</style>
</head>
<body  style="background-image:url('cc1.jpg');">
		<br><br><br><br><br><br>
		<a CLASS="w3-button w3-orange w3-display-left" href="apfiles.jsp">BACK</a>
        <a CLASS="w3-button w3-orange w3-display-right" href="Files.jsp">HOME</a>
		<center>
		
		<div id="banner" class="container" style="padding-top: 100px;">
			<div class="title">
				<h2>Decrypting  Keys</h2>
				<%
					session = request.getSession(false);
					String fid = request.getParameter("fid");
				%>
				<form action="Down" method="post">
					<table width="80%" border="1.5">
						<thead>
							<tr>
								<th style="color: orange;">FID</th>
								<th style="color: orange;">Key1</th>
								<th style="color: orange;">Key2</th>
								
								<th style="color: orange;">Download</th>
							</tr>
						</thead>
							<tr>
								<td><input type="text" name="fid" <%-- value="<%=fid%>"  --%>style="width: 50px;" /></td>
								<td><input type="password" name="key1" style="width: 150px;"/></td>
								<td><input type="password" name="key2" style="width: 150px;" /></td>
								<td><input type="submit" value="Download" class="actions" /></td>
							</tr>
					</table>
				</form>
			</div>
		</div>
		</center>
</body>
</html>
