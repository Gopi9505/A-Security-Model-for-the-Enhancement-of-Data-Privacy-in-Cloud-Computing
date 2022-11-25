package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DBConnect.DbConnection;

/**
 * Servlet implementation class KeyReq
 */
@WebServlet("/KeyReq")
public class KeyReq extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public KeyReq() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param Dao 
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter o = response.getWriter();
		String fid = request.getParameter("fid");
		HttpSession session = request.getSession(false);
		String email = (String) session.getAttribute("uid");
		String sql = "select uid from upload where fid='" + fid + "'";
		String own = DbConnection.getName(sql);
		Date d = new Date();
		String da = "" + d;
		sql = "select * from keyreq where fid='" + fid + "' and userid='"
				+ email + "'";
		if (DbConnection.getData(sql) == true) {
			o.println("<script type=\"text/javascript\">");
			o.println("alert('Already Made Request For Keys');");
			o.println("window.location='search.jsp';</script>");
		} else {
			com.beans.KeyReqBean kb = new com.beans.KeyReqBean();
			kb.setFid(fid);
			kb.setOwn(own);
			kb.setEmail(email);
			kb.setDa(da);
			sql = "insert into keyreq values(?,?,?,?,?)";
			int i = DbConnection.sendRKeys(sql, kb);
			if(i > 0){
				o.println("<script type=\"text/javascript\">");
				o.println("alert('Key Request Sent Successfully');");
				o.println("window.location='search.jsp';</script>");
			}else{
				o.println("<script type=\"text/javascript\">");
				o.println("alert('Keys request not sent');");
				o.println("window.location='search.jsp';</script>");
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
