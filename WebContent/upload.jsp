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
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Didact+Gothic" rel="stylesheet" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="main.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<link rel="StyleSheet" href="w3.css" >
<style type="text/css">
p {
	font-size: 20px;
	font-family: verdana;
}
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
<br><br><br><br><br><br><br><br><br>
<a href=ohome.jsp onclick=goback() class="w3-button w3-orange w3-right" > BACK</a>
		
	<div id="banner" class="container" style=" padding-top: 80px; padding-bottom: 150px;">
		<div class="title">
	<center>
	<h2>Upload</h2><br></br>
			<form action="Upload" method="post" style="text-align: left;" enctype="multipart/form-data">
			<table style="width: 1150px; padding-left: 100px;">
			<thead><tr><th style="color: orange;">File Name</th><th style="color: orange;">Description</th>
			<th style="color: orange;">File</th><th style="color: orange;">Upload</th></tr></thead>
			<tr><td><input type="text" name="fname" style="width: 150px;"/> </td>
			<td><input type="text" name="fdes" style="width: 200px;"/> </td>
			<td><input type="file" name="file" /> </td>
			<td><input type="submit" value="Upload" class="button-alt" style="color: orange;"/>	</td>
			</tr>
			</table>
		</form></center>
		</div>
	</div>
</body>
</html>
