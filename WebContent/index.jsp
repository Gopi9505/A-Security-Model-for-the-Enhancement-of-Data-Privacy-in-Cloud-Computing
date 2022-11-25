<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Random Login Form</title>
     <style>
body{
	margin: 0;
	padding: 0;
	font-family: verdana;
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
	padding: 10px;
	z-index: 2;
}

.login input[type=text]{
	width: 250px;
	height: 30px;
	background: transparent;
	
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
	
	color: #fff;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 4px;
	margin-top: 10px;
}

.login input[type=submit]{
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

.login input[type=submit]:hover{
	opacity: 0.8;
}

.login input[type=submit]:active{
	opacity: 0.6;
}

.login input[type=submit]:focus{
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
color: red;
top: 20px;
left: 20px;
position: absolute;
font-family: verdana;
font-weight: 900; 
}
    </style>
<link rel="StyleSheet" href=w3.css>

</head>

<body style="background-image:url('cc1.jpg');"><BR><BR><br><br><br><br><BR><BR>
<center>
<br><br>
<a href=adminlogin.jsp  ><img src="admin2.png" width="250px" height="250px"/></a>
				<a href=LoginCSP.jsp  ><img src="logu.png" alt="CSP" width="250px" height="250px"/></a>
				<a href=owner.jsp ><img src="owner2.png" width="250px" height="250px"/></a>
				<a href=Register.jsp ><img src="reg2.png" width="250px" height="250px"/></a>
		</div>
  
  
</body>
</html>
