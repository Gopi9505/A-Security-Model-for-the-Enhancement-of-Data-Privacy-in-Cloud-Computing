<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@page import="com.DBConnect.DbConnection"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link rel="stylesheet" href="w3.css">
<meta name="keywords" content="" />
<meta name="description" content="" />
<style type="text/css">
td{
color: white;
}
a
{
color:	orange;
font-size: 20px;
}
h2
{
color: orange;
}
</style>
</head>
<body  style="background-image:url('cc1.jpg');">
<a CLASS="w3-button w3-orange w3-display-right" href="adminsuccess.jsp">BACK</a>
		<br><br><br><br><br><br><br>
		<br></br>
	<center><div id="banner" class="container">
			<div class="title">
				<h2>Files</h2><br><br>
				<%
					String sql = "select * from upload";
							List<String> lt = DbConnection.getAFiles(sql);
							Iterator<String> itr = lt.iterator();
				%>
				<table width="80%" border="1">
						<tr>
							<th style="color: orange; width: 50px;">FID</th>
							<th style="color: orange; width: 60px;">Owner</th>
							<th style="color: orange; width: 60px;">File</th>
							<th style="color: orange; width: 60px;">Key1</th>
							<th style="color: orange; width: 60px;">Key2</th>
							<th style="color: orange;">Update</th>
						</tr>
					<%
						while(itr.hasNext()){
							String fid = itr.next();
					%>
					<tr>
						<td style="width: 50px;"><%=fid%></td>
						<td style="width: 60px;"><%=itr.next()%></td>
						<td style="width: 60px;"><%=itr.next()%></td>
						<td style="width: 60px;"><%=itr.next()%></td>
						<td style="width: 60px;"><%=itr.next()%></td>
						<td><a href="Update?fid=<%=fid%>" class="actions">Update</a></td>
					</tr>
					<%
						}
					%>
				</table>
			</div>
		</div>
	</center>	
</body>
</html>
