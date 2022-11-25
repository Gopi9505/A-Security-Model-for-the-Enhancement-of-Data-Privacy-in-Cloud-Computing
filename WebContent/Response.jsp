<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.DBConnect.DbConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body{
background-image:url('cc1.jpg');
font-family: verdana;
font-size: 40px;
}
a{
color: orange;
font-style: none;
font-size: 30px;
}
th{
font-size: 20px;
}
</style>
</head>
<body><br><br><br>
<center>
<h5 style="color: orange;">Request Files</h5>
				<%
					session = request.getSession(false);
					String sql = "select * from keyreq where userid='"+session.getAttribute("uid")+"' and status='Approved'";
					List<String> lt = DbConnection.getFid(sql);
					Iterator<String> itr = lt.iterator();
				%><center>
<table width="100%" border="0">
					<thead>
						<tr>
							<th style="color: white;">FID</th>
							<th style="color: white;">Owner</th>
							<th style="color: white;">Key</th>
							<th style="color: white;">Download</th>
							</tr>
					</thead>
					<%
						while(itr.hasNext()){
								String fid = itr.next();
								String oid = itr.next();
								sql = "select key1 from upload where id='"+fid+"' and userid='"+oid+"'";
								String lt1 = DbConnection.getName(sql);
					%>
					<tbody>
						<tr>
							<td><%=fid%></td>
							<td><%=oid%></td>
							<td><%=lt1 %></td>
							<td><a href="download.jsp?fid=<%=fid%>" class="actions">Download</a></td>
						</tr>
					</tbody>
					<%
								}%>
								</table></center>
</body>
</html>