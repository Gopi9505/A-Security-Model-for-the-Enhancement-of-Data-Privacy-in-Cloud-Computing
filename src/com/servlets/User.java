package com.servlets;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DBConnect.DbConnection;


@WebServlet("/User")
public class User extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public User() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		// TODO Auto-generated method stub
				PrintWriter pw = response.getWriter();
				String uid = request.getParameter("email");
				String pwd = request.getParameter("pword");
				HttpSession session = request.getSession();
			System.out.println("username and password"+uid+pwd);
				String sql = "select * from user where email='"+uid+"' and pword='"+pwd+"'and status1='Approved'";
				boolean b = DbConnection.getData(sql);
				if(b == true){
					session.setAttribute("uid", uid);
					sql = "select name from user where email='"+uid+"'";
					String name = DbConnection.getName(sql);
					session.setAttribute("name", name);
					response.sendRedirect("Files.jsp");
				}else{
					pw.println("<script type=\"text/javascript\">");
					pw.println("alert('Please enter valid Details');");
					pw.println("window.location='UserLogin.jsp';</script>");
				}
			}
	}
