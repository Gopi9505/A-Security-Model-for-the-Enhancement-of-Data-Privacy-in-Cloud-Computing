<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Random Login Form</title>
     <style>
body{
	margin: 0;
	padding: 0;
    background-image: url(CC.jpg);
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
	background-image: url('cc1.jpg');
	z-index: 0;
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
	color: 3368FF;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 4px;
}

.login input[type=password]{
	width: 250px;
	height: 30px;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 4px;
	margin-top: 10px;
}

.login input[type=button]{
	width: 260px;
	height: 35px;
	background: 3368FF;
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
color: red;
top: 20px;
left: 15px;
position: absolute;
font-family: 'Exo', sans-serif;
font-weight: 900; 
}
    </style>
<link rel="StyleSheet" href=w3.css>
<script type="text/javascript">
function checklog()
{
	
var un=document.getElementById("uname").value;
var pwd=document.getElementById("pass").value;
if(un=="csp")
	{
	if(pwd=="csp")
		{
		window.location="csphome.jsp";
		}else{
			alert("login faild")
		}
	}else{
		alert("login faild")
	}
}
</script>
</head>

<body>
  <div class="body"></div>
  <a CLASS="w3-button w3-orange w3-display-left" href="index.jsp">BACK</a>
		<div class="header">
			<div>Login for <span>CSP</span></div>
		</div>
		<br>
		<form action="/login" method="get">
		<div class="login">
				<input type="text" placeholder="username" id="uname"><br>
				<input type="password" placeholder="password" id="pass"><br>
				<input  type="button" onclick="checklog()"style="width: 75%;" value="LOGIN"><br><br>
		</div>
		</form>
</body>
</html>
