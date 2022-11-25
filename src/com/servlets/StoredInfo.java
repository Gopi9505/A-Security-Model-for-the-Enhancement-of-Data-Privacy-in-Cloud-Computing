package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class StoredInfo
 */
@WebServlet("/StoredInfo")
public class StoredInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public StoredInfo() {
        super();
   
    }
		  
		 public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException 
		      {  
		         PrintWriter out = res.getWriter();  
		         res.setContentType("text/html");  
		         out.println("<html><body>");  
		         try 
		         {  
		        	 Class.forName("com.mysql.jdbc.Driver");
		 			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cc05", "root", "root"); 
		             Statement stmt = con.createStatement();  
		             ResultSet rs = stmt.executeQuery("select * from reg");  
		             out.println("<table border=1 width=50% height=50%>");  
		             out.println("<tr><th>EmpId</th><th>Name</th><th>EmailId</th><th>Age</th><th>Gender</th><tr><th>Password</th>");  
		             while (rs.next()) 
		             {  
		                 String name = rs.getString("Name");  
		                 String emailid = rs.getString("Email");  
		                 String age = rs.getString("Age");
		                 String gender = rs.getString("Gender");
		                 String password = rs.getString("Password");
		                   
		                 out.println("<tr><td>" + name + "</td><td>" + emailid + "</td><td>" + age + "</td><td>"+gender+"</td><td>"+password+"</td></tr>");
		             }  
		             out.println("</table>");  
		             out.println("</html></body>");  
		             out.println("window.location='StoredInfo.jsp'</script>");
		             con.close();  
		            }  
		             catch (Exception e) 
		            {  
		             out.println("error"); 
		             
		         }  
		     }  
		 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
