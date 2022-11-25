
package com.servlets;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DBConnect.DbConnection;
import com.beans.UserBean;
import com.beans.UserBean;

/**
 * Servlet implementation class Reg
 */
@WebServlet("/RegServlets")
public class UserReg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserReg() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
		PrintWriter o = response.getWriter();
		String name = request.getParameter("name");
		String email = request.getParameter("uid");
		String age = request.getParameter("age");
		String gen = request.getParameter("gen");
		String pass = request.getParameter("pass");
		UserBean ub = new UserBean();
		ub.setName(name);
		ub.setEmail(email);
		ub.setAge(age);
		ub.setGen(gen);
		ub.setPwd(pass);
		String sql = "insert into user values(?,?,?,?,?,?)";
		int i = DbConnection.setUser(sql, ub);
		if(i > 0){
			o.println("<script type=\"text/javascript\">");
			o.println("alert('Register Successfully...');");
			o.println("window.location='UserLogin.jsp';</script>");
		}else{
			o.println("<script type=\"text/javascript\">");
			o.println("alert('Please enter valid Details/Already Exist');");
			o.println("window.location='Register.jsp';</script>");
		}}}
