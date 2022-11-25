<%@page import="java.util.Iterator"%>
<%@page import="com.DBConnect.DbConnection"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="StyleSheet" href="w3.css" >
<style>
body{
background-image:url('cc1.jpg');
font-family: verdana;
font-size: 20px;
font-weight: 900px;
}
table, th, td {
  border: 1.5px solid black;
}
a{
font-size: 20px;
color: orange;
}
tbody {
	color: orange;
}
td{
color: orange;
}

</style>
</head>
<body><br><br><br><BR><BR><br><br>
<div class="title">
<a CLASS="w3-button w3-orange w3-display-right" href="UserLogin.jsp">HOME</a>
<a CLASS="w3-button w3-orange w3-display-left" href="Files.jsp">BACK</a>
				<center>
				<%
					session = request.getSession(false);
						String name = (String) session.getAttribute("name");
				%>
				<h2 style="color: orange;font-family: verdana;">
					Requested Files</h2>
				<%
					String sql = "select * from keyreq where oid='"+session.getAttribute("uid")+"' and status='pending'";
						List<String> lt = DbConnection.getOkey(sql);
						Iterator<String> itr = lt.iterator();
				%>
				<table style="width: 850px;">
					<thead>
						<tr>
							<th style="color: white;">FID</th>
							<th style="color: white;">UserID</th>
						</tr>
					</thead>
					 <%
						while(itr.hasNext()){
							
						String id = itr.next();
						String fid = itr.next();
						String uid = itr.next();
					 %>
					<tbody>
						<tr>
							<td><%=fid%></td>
							<td><%=uid%></td>
							<td><a href="Approved?id=<%=id%>"
								class="actions">Send</a></td>
						</tr>
					</tbody>
					<%
						}
					%>
				</table>
			</div></center>
</body>
</html>