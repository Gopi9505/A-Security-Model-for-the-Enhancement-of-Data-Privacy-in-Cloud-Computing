package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DBConnect.DbConnection;
import com.beans.OwnerBean;

/**
 * Servlet implementation class OwnerReg
 */
@WebServlet("/OwnerReg")
public class OwnerReg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OwnerReg() {
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
		String name = request.getParameter("name");
		String email = request.getParameter("uid");
		String age = request.getParameter("age");
		String gen = request.getParameter("gen");
		String pass = request.getParameter("pwd");
		OwnerBean ub = new OwnerBean();
		ub.setName(name);
		ub.setEmail(email);
		ub.setAge(age);
		ub.setGender(gen);
		ub.setPwd(pass);
		String sql = "insert into owner values(?,?,?,?,?)";
		int i = DbConnection.setOwner(sql, ub);
		if(i > 0){
			o.println("<script type=\"text/javascript\">");
			o.println("alert('Register Successfully...');");
			o.println("window.location='owner.jsp';</script>");
		}else{
			o.println("<script type=\"text/javascript\">");
			o.println("alert('Please enter valid Details/Already Exist');");
			o.println("window.location='owner.jsp';</script>");
		}
	}

}
