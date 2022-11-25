<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Random Login Form</title>
     <style>
body{
	margin: 0;
	padding: 0;
	font-family:verdana;
	font-size: 12px;
}

.body{
	position: absolute;
	top: 0px;
	left: 0px;
	right: 0px;
	bottom:0px;
	width: auto;
	height: auto;
	background-image: url(cc1.jpg);
}

.grad{
	position: absolute;
	top: 0px;
	left: 0px;
	right: 0px;
	bottom: 0px;
	width: auto;
	height: auto;
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(0,0,0,0)), color-stop(100%,rgba(0,0,0,0.65))); /* Chrome,Safari4+ */
	z-index: 1;
	opacity: 0.7;
}

.header{
	position: absolute;
	top: calc(50% - 35px);
	left: calc(50% - 455px);
	z-index: 2;
}

.header div{
	float: left;
	color: #fff;
	font-family: 'Exo', sans-serif;
	font-size: 35px;
	font-weight: 200;
}

.header div span{
	color: orange !important;
}

.login{
	position: absolute;
	top: calc(50% - 75px);
	left: calc(50% - 50px);
	height: 150px;
	width: 350px;
	padding: 20px;
	z-index: 2;
}

.login input[type=text]{
	width: 250px;
	height: 30px;
	background: transparent;
	border: 1px solid rgba(255,255,255,0.6);
	border-radius: 2px;
	color: #fff;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 4px;
}

.login input[type=password]{
	width: 250px;
	height: 30px;
	background: transparent;
	border: 1px solid rgba(255,255,255,0.6);
	border-radius: 2px;
	color: #fff;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 4px;
	margin-top: 10px;
}

.login input[type=button]{
	width: 260px;
	height: 35px;
	background: #fff;
	border: 1px solid #fff;
	cursor: pointer;
	border-radius: 2px;
	color: #a18d6c;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 6px;
	margin-top: 10px;
}

.login input[type=button]:hover{
	opacity: 0.8;
}

.login input[type=button]:active{
	opacity: 0.6;
}

.login input[type=text]:focus{
	outline: none;
	border: 1px solid rgba(255,255,255,0.9);
}

.login input[type=password]:focus{
	outline: none;
	border: 1px solid rgba(255,255,255,0.9);
}

.login input[type=button]:focus{
	outline: none;
}

::-webkit-input-placeholder{
   color: rgba(255,255,255,0.6);
}

::-moz-input-placeholder{
   color: rgba(255,255,255,0.6);
}

#hed{
font-size: 60px;
color:red;
top: -10px;
left: 40px;
position: fixed;
font-family: 'Exo',verdana;
font-weight: 900;

}
td{
color: orange;
}
    </style>
<link rel="StyleSheet" href=w3.css>
</head>
<body>
  <div class="body">
  
  </div>
  <a CLASS="w3-button w3-orange w3-display-left" href="adminlogin.jsp">BACK</a>
				<a CLASS="w3-button w3-orange w3-display-right" href="index.jsp">HOME</a></div>
		
	
		<div class="header"> 
			<div>Login for <span>Admin</span></div>
			
		</div>
		<br>
		<center>
		<form action="Admin" method="post" style="text-align: left;">
		<div class="login">
			<table>
			<tr><td>UserId</td><td><input type="text" name="uid" style="width: 250px;"/> </td></tr>
			<tr><td>Password</td><td><input type="password" name="pwd" style="width: 250px;"/> </td></tr>
			<tr><td><input type="submit" value="Login" class="button-alt" style="color: black;"/>	</td></tr>
			</table>
		</div>
		</form></center>
</body>
</html>
