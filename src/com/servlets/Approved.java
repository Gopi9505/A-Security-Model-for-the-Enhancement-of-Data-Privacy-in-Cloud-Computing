package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DBConnect.DbConnection;

/**
 * Servlet implementation class Approved
 */
@WebServlet("/Approved")
public class Approved extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Approved() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter o = response.getWriter();
		int fid = Integer.parseInt(request.getParameter("id"));
		String sql = "update keyreq set status='Approved' where id="+fid;
		System.out.println(sql);
		int i = DbConnection.update(sql);
		if(i > 0){
			o.println("<script type=\"text/javascript\">");
			o.println("alert('Key Request Approved Successfully...');");
			o.println("window.location='Request.jsp';</script>");
		}else{
			o.println("<script type=\"text/javascript\">");
			o.println("alert('Key Request Not Approved');");
			o.println("window.location='Request.jsp';</script>");
		}
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
