<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@page import="com.DBConnect.DbConnection"%>
<%@ page import="java.util.*" %>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>
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
<style type="text/css">
p {
	font-size: 20px;
	font-family: verdana;
}
a
{
color: black;
font-style: italic;
font-size: 24px;
}
</style>
</head>
<body  style="background-image:url('10.jpg');">
		<br><br><br><br><br><br><br><br><br>
		<center>	
		<div>
					<a href="ahome.jsp" accesskey="1" title="">Home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="aowner.jsp" accesskey="2" title="">Owner</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="auser.jsp" accesskey="3" title="">User</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="afiles.jsp" accesskey="4" title="">Files</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="akey.jsp" accesskey="4" title="">Keys</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="attack.jsp" accesskey="4" title="">Attack</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="index.html" accesskey="5" title="">Logout</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</div></center>
		<div id="banner" class="container" style="padding-top: 100px;">
			<div class="title">
		<div id="chartContainer" style="height: 370px;" class="tbox2 boxC"></div>
		<div id="chartContainer1" style="height: 370px;" class="tbox1 boxA"></div>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>		
 
<%
Gson gsonObj = new Gson();
Map<Object,Object> map = null;
List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();
String sql = "select fid from upload1";
List<String> lt = DbConnection.getFid(sql);
Iterator<String> itr = lt.iterator();
while(itr.hasNext()){
	String fid = itr.next();
	sql = "select count(*) from attack where fid='"+fid+"'";
	int count = DbConnection.getCount(sql);
map = new HashMap<Object,Object>(); map.put("label", fid); map.put("y", count); list.add(map);
}
String dataPoints = gsonObj.toJson(list);
List<Map<Object,Object>> list1 = new ArrayList<Map<Object,Object>>();
sql = "select fid from upload1";
List<String> lt1 = DbConnection.getFid(sql);
Iterator<String> itr1 = lt1.iterator();
while(itr1.hasNext()){
	String fid = itr1.next();
	sql = "select count(*) from keyreq where fid='"+fid+"'";
	int count = DbConnection.getCount(sql);
map = new HashMap<Object,Object>(); map.put("label", fid); map.put("y", count); list1.add(map);
}
String dataPoints1 = gsonObj.toJson(list1);
%>
<script type="text/javascript">
window.onload = function() { 
 
var chart = new CanvasJS.Chart("chartContainer", {
	theme: "light2",
	animationEnabled: true,
	exportFileName: "New Year Resolutions",
	exportEnabled: true,
	title:{
		text: "Attacked Files"
	},
	data: [{
		type: "pie",
		showInLegend: true,
		legendText: "{label}",
		toolTipContent: "{label}: <strong>{y}%</strong>",
		indexLabel: "{label} {y}%",
		dataPoints : <%out.print(dataPoints);%>
	}]
});

var chart1 = new CanvasJS.Chart("chartContainer1", {
	theme: "light2",
	animationEnabled: true,
	exportFileName: "New Year Resolutions",
	exportEnabled: true,
	title:{
		text: "Request Files"
	},
	data: [{
		type: "pie",
		showInLegend: true,
		legendText: "{label}",
		toolTipContent: "{label}: <strong>{y}%</strong>",
		indexLabel: "{label} {y}%",
		dataPoints : <%out.print(dataPoints1);%>
	}]
});
chart.render();
chart1.render();
}
</script>
			</div>
		</div>
</body>
</html>
