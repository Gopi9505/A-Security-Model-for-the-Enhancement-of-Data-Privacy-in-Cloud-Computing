package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DBConnect.DbConnection;

/**
 * Servlet implementation class Approve
 */
@WebServlet("/approve")
public class Approve extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Approve() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter o = response.getWriter();
		String fid = request.getParameter("fid");
		String da = request.getParameter("da");
		String sql = "update keyreq set status1='Approved' where fid='"+fid+"' and Date1='"+da+"'";
		int i = DbConnection.update(sql);
		if(i > 0){
			o.println("<script type=\"text/javascript\">");
			o.println("alert('Keys Request Approved Successfully...');");
			o.println("window.location='akey.jsp';</script>");
		}else{
			o.println("<script type=\"text/javascript\">");
			o.println("alert('Keys Request Not Approved');");
			o.println("window.location='akey.jsp';</script>");
		}
	}

}
