<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.DBConnect.DbConnection"    %> 
      <%@ page import="java.sql.*"    %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

String s=request.getParameter("email");
System.out.println("value from html"+s);
try {
	boolean f=DbConnection.updateUser(s);
	System.out.println("boolean in sevlet"+f);
	if(!f) {
		System.out.println("deleted");
		response.sendRedirect("UserDetails.jsp");
	}else {
		System.out.println("failed");
	}
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}


%>

</body>
</html>