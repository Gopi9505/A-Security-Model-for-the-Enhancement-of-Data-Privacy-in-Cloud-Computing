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

/**
 * Servlet implementation class Owner
 */
@WebServlet("/Owner")
public class Owner extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Owner() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter o = response.getWriter();
		String uid = request.getParameter("uid");
		String pwd = request.getParameter("pwd");
		String sql = "select * from owner where email='"+uid+"' and pword='"+pwd+"'";
		boolean b = DbConnection.getData(sql);
		HttpSession session = request.getSession();
		if(b == true){
			session.setAttribute("uid", uid);
			sql = "select name from owner where email='"+uid+"'";
			String name = DbConnection.getName(sql);
			session.setAttribute("name", name);
			response.sendRedirect("ohome.jsp");
		}else{
			o.println("<script type=\"text/javascript\">");
			o.println("alert('Please enter valid Details');");
			o.println("window.location='owner.jsp';</script>");
		}
	}

}
