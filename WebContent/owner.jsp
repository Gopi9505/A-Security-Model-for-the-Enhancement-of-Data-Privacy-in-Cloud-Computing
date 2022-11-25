<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link rel="stylesheet" href="w3.css">
<meta name="keywords" content="" />
<meta name="description" content="" />
<style type="text/css">
a
{
color: orange;
font-size: 20px;
}
td,tr,th{
color: orange;
}
.tbox2 {
  display: inline-block; /* the default for span */
  padding: 60px;
  position: left;
}

.tbox1 {
  display: inline-block;
  padding: 80px;
}
</style>
</head>
<body  style="background-image:url('cc1.jpg');">
<br><br><br><br><br>
<a CLASS="w3-button w3-orange w3-display-right" href="index.jsp">BACK</a>
	<div id="banner" class="container" style=" padding-top: 30px; padding-bottom: 150px;">
		<div class="title">
		
		<div class="tbox1 boxA">
		<h2 style="color: orange">Registration</h2>
		<form action="OwnerReg" method="post">
			<table class=" fa-lg table-wrapper alt" style="text-align: left;">
			<tr><td>Name</td><td><input type="text" name="name" style="width: 350px;"/> </td></tr>
			<tr><td>Email</td><td><input type="text" name="uid"  style="width: 350px;"/> </td></tr>	
			<tr><td>Age</td><td><input type="text" name="age"  style="width: 350px;"/> </td></tr>
			
			<tr><td>Gender</td><td><input type="text" name="gen"  style="width: 350px;"/> </td></tr>
			<tr><td>Password</td><td><input type="password" name="pwd"  style="width: 350px;"/> </td></tr>
			<tr><td><input type="submit" value="Register" class="button-alt" style="color: black;"/>	</td></tr>
			</table>
		</form>
		</div>
		<div class="tbox2 boxC ">
		<h2  style="color: orange" >Login</h2>
			<form action="Owner" method="post" style="text-align: left;">
			<table class="fa-lg table-wrapper alt">
			<tr><td>Email</td><td><input type="text" name="uid"  style="width: 400px;"/> </td></tr>
			<tr><td>Password</td><td><input type="password" name="pwd"  style="width: 400px;"/> </td></tr>
			<tr><td><input type="submit" value="Login" class="button-alt" style="color: black;"/>	</td></tr>
			</table>
		</form>
		</div>
		</div>
	</div>
</body>
</html>
