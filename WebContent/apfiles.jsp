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
<%@page import="com.DBConnect.DbConnection"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<meta name="keywords" content="" />
<link rel="stylesheet" href="w3.css">
<meta name="description" content="" />
<style type="text/css">
a
{
color: black;
font-size: 20px;
}
h2{
font-size: 30px;
color: orange;
}
td
{
color: white;
}
</style>
</head>
<body style="background-image:url('cc1.jpg');">
<br><br><br><br><br><br>
<a CLASS="w3-button w3-orange w3-display-left" href="Files.jsp">BACK</a>
        <a CLASS="w3-button w3-orange w3-display-right" href="UserLogin.jsp">HOME</a>
		<center>
		<div id="banner" class="container" style="padding-top: 70px;">
			<div class="title">
				<h2>Request Files</h2>
				<%
					session = request.getSession(false);
					String sql = "select fid from keyreq where userid='"+session.getAttribute("uid")+"' and status1='Approved'";
					List<String> lt = DbConnection.getFid(sql);
					Iterator<String> itr = lt.iterator();
				%>
				<table width="80%" border="1">
					<thead>
						<tr>
							<th style="color: orange;">FID</th>
							<th style="color: orange;">Key1</th>
							<th style="color: orange;">Key2</th>
							<th style="color: orange;">Download</th>
						</tr>
					</thead>
					<%
						while(itr.hasNext()){
								String fid = itr.next();
								sql = "select * from ukeys where fid='"+fid+"' and userid='"+session.getAttribute("uid")+"'";
								if(DbConnection.getData(sql) == true){
								sql = "select * from ukeys where fid='"+fid+"'";
								List<String> lt1 = DbConnection.getUKeys(sql);
								Iterator<String> itr1 = lt1.iterator();
								while(itr1.hasNext()){
					%>
					<tbody>
						<tr>
							<td style="color: white;"><%=fid%></td>
							<td style="color: white;"><%=itr1.next()%></td>
							<td style="color: white;"><%=itr1.next()%></td>
							<td style="color: white;"><a href="download.jsp?fid=<%=fid%>" class="actions">Download</a></td>
						</tr>
					</tbody>
					<%
								}
						}else{
							System.out.println("hilal");
							sql = "select * from upload where fid='"+fid+"'";
							List<String> lt1 = DbConnection.getKeys(sql);
							Iterator<String> itr1 = lt1.iterator();
							while(itr1.hasNext()){
								%>
								<tbody>
									<tr>
										<td><%=fid%></td>
										<td><%=itr1.next()%></td>
										<td><%=itr1.next()%></td>
										<td><a href="download.jsp?fid=<%=fid%>" class="actions">Download</a></td>
									</tr>
								</tbody>
								<%
							}
						}
								}
					%>
				</table>
			</div>
		</div>
		</center>
</body>
</html>
