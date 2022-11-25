<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="w3.css">
<link rel="stylesheet" href="win8.css">
<style type="text/css">
h1{
font-size: 50px;
color: red;
top: 20px;
left: -20px;
right:5px;

position: absolute;
font-family: verdana;
font-weight: 900; 
}
</style>
</head>
<body onload="hidingall()" background="cc1.jpg"><center>
<%
String msg=request.getParameter("msg");
String to=request.getParameter("to");

%><a href="LoginCSP.jsp" style="margin-right: 20px;" class="w3-button w3-red w3-display-right">Close</a><br>
  <div class="w3-container w3-card-4 w3-display-middle w3-zoom" style="height:250px;width:600px;">
        
      <div class="w3-contant"><br>
      	
        <h1 class="w3-text-white w3-center"><%=msg %></h1>
      </div>
  </div>
</body>
</html>