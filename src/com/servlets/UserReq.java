package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DBConnect.DbConnection;
import com.beans.UserBean;

/**
 * Servlet implementation class UserReq
 */
@WebServlet("/UserReq")
public class UserReq extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserReq() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter o=response.getWriter();
		String name = request.getParameter("name");
		String sql = "select * from user where email='" + name + "'";
		ResultSet rs = DbConnection.getData1(sql);
		String sql1 = "insert into user values(?,?,?,?,?,?) ";
		UserBean ub = new UserBean();
		try {
			while (rs.next()) {
				ub.setName(rs.getString(1));
				ub.setEmail(rs.getString(2));
				ub.setAge(rs.getString(3));
				ub.setGen(rs.getString(4));
				ub.setPwd(rs.getString(5));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		int i = DbConnection.userRegister(sql1, ub);
		if (i == 1) {
			
			o.println("CSP approved the Member Request");
			sql = "update user set status1='Approved' where email='" + name + "'";
			int k = DbConnection.update(sql);
			if (k == 1)
				response.sendRedirect("AddSuccess.jsp?name=Member");
		} else {
			response.sendRedirect("RegisterError.jsp");
		}
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
