<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@page import="com.DBConnect.DbConnection"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Didact+Gothic"
	rel="stylesheet" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="main.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<link rel="StyleSheet" href="w3.css" >
<style type="text/css">
p {
	font-size: 20px;
	font-family: verdana;
}
a
{
color: black;
font-size: 20px;
}
tr,td,th{
color: orange;
}
</style>
</head>
<body  style="background-image:url('cc1.jpg');"><br><br><br><br><br><br><br><br><br>
<a href=ohome.jsp onclick=goback() class="w3-button w3-orange w3-right" > BACK</a>
		
		
	<center>
		<div id="banner" class="container" style="padding-top: 80px; padding-bottom: 150px;">
			<div class="title">
				<%
					session = request.getSession(false);
						String name = (String) session.getAttribute("name");
						String uid = (String) session.getAttribute("uid");
						System.out.println("hii"+name);
						System.out.println("hii id ="+uid);
				%>
				
				<%
					String sql = "select * from keyreq where owner='"+uid+"' and status1='Approved'";
				System.out.println("hii id ="+uid);
				
						List<String> lt = DbConnection.getOkey(sql);
						System.out.println("hiifffff id ="+uid);
						Iterator<String> itr = lt.iterator();
				%>
				<table  width="100%" border="1"">
					<thead>
						<tr>
							<th style="color: orange;">FID</th>
							<th style="color: orange;">Status</th>
							<th style="color: orange;">UserID</th>
							<th style="color: orange;">Send</th>
						</tr>
					</thead>
					<%
						while(itr.hasNext()){
						String fid = itr.next();
						String uname = itr.next();
						String da = itr.next();
					%>
					<tbody>
						<tr>
							<td><%=fid%></td>
							<td><%=uname%></td>
							<td><%=da%></td>
							<td><a href="Send?fid=<%=fid%>&&uid=<%=uname%>"
								class="actions">Send</a></td>
						</tr>
					</tbody>
					<%
						}
					%>
				</table>
			</div>
		</div>
		</center>
</body>
</html>
