package com.servlets;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/login")
public class LoginCSP extends HttpServlet 
{
   @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	   }
	   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			PrintWriter o = response.getWriter();
			String uid = request.getParameter("uname");
			String pwd = request.getParameter("pass");
			if(uid.equals("admin") && pwd.equals("admin")){
				int count = 0;
				count++;
				System.out.println(count);
				if(count > 2){
					o.println("<script type=\"text/javascript\">");
					o.println("alert('You need to update the File keys..');");
					o.println("window.location='UserRequests.jsp';</script>");
				}else{
					response.sendRedirect("LoginCSP.jsp");
				}
			}else{
				o.println("<script type=\"text/javascript\">");
				o.println("alert('Please enter valid Details');");
				o.println("window.location='index.jsp';</script>");
			}
		}

	}