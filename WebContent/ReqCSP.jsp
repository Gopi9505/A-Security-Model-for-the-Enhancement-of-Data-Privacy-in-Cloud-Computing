<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Random Login Form</title>
      <style>
      @import url(https://fonts.googleapis.com/css?family=Exo:100,200,400);
@import url(https://fonts.googleapis.com/css?family=Source+Sans+Pro:700,400,300);

body{
	margin: 0;
	padding: 0;
	background: #fff;
    background-image:url('cc1.jpg');
	color: #fff;
	font-family:verdana;
	font-size: 12px;
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
	color: yellow;
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
#hed{
font-size: 70px;
color: red;
top: 20px;
left: 20px;
right:5px;

position: absolute;
font-family: 'Exo', sans-serif;
font-weight: 900; 
}
    </style>
<link rel="StyleSheet" href=w3.css>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>
</head>
<body><center>
  <div class="body"></div>
<a CLASS="w3-button w3-orange w3-display-left" href="LoginCSP.jsp">HOME</a></center>
		<div class="header">
			<div>Here <span>Sending Req</span></div>
		</div>
		<form action="SendingRequest" method="get">
		<div class="login">
				<!-- <input type="text" placeholder="UserName" name="uname"><br>
				<input type="text" placeholder="email" name="email"><br>
				<input type="password"  placeholder="password" name="pword"><br>
				<input type="text" placeholder="Age" name="age"><br>
				<input type="text" placeholder="Gender" name="gen"><br><br> -->
				<%
				String s=(String)session.getAttribute("uid"); 
			
				%>
				<input type="hidden" name="email" value=<%=s%>>
				<input type="submit" value="SEND REQUEST">
		</div>
		</form>
</body>
</html>