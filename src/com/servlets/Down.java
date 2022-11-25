package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.InetAddress;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DBConnect.DbConnection;
import com.beans.AttackBean;

/**
 * Servlet implementation class Down
 */
@WebServlet("/Down")
public class Down extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Down() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter o = response.getWriter();
		HttpSession session = request.getSession(false);
		String email = (String) session.getAttribute("uid");
		String fid = request.getParameter("fid");
		String key1 = request.getParameter("key1");
		String key2 = request.getParameter("key2");
		String sql = "select * from upload1 where fid='" + fid + "' and f1key='"
				+ key1 + "' and f2key='" + key2 + "' ";
		if (DbConnection.getData(sql) == true) {
			response.sendRedirect("Download?fid=" + fid);
		} else {
			sql = "select * from upload where fid='" + fid + "' and f1key='"
					+ key1 + "' and f2key='" + key2 + " '";
			if (DbConnection.getData(sql) == true) {
				sql = "select * from fcount where uid='" + email + "' && fid='"
						+ fid + "'";
				if (DbConnection.getData(sql) == true) {
					sql = "select fcount from fcount where uid='" + email
							+ "' && fid='" + fid + "'";
					int count = DbConnection.getCount(sql);
					count = count + 1;
					sql = "update fcount set fcount=" + count + " where uid='"
							+ email + "' && fid='" + fid + "'";
					int i = DbConnection.update(sql);
					if (i > 0) {
						o.println("<script type=\"text/javascript\">");
						o.println("alert('File Keys are Wrong...This is your first attempt');");
						o.println("window.location='apfiles.jsp';</script>");
					} else {
						o.println("<script type=\"text/javascript\">");
						o.println("alert('File Keys are Wrong... This is your first attempt');");
						o.println("window.location='apfiles.jsp';</script>");
					}
				} else {
					sql = "insert into fcount(fid, uid, fcount) values('" + fid
							+ "','" + email + "',1)";
					int i = DbConnection.update(sql);
					if (i > 0) {
						o.println("<script type=\"text/javascript\">");
						o.println("alert('File Keys are Wrong... This is your first attempt');");
						o.println("window.location='apfiles.jsp';</script>");
					} else {
						o.println("<script type=\"text/javascript\">");
						o.println("alert('File Keys are Wrong... This is your first attempt');");
						o.println("window.location='apfiles.jsp';</script>");
					}
				}
			} else {
				int fcount = 0;
				InetAddress ia = InetAddress.getLocalHost();
				String ip = ia.getHostAddress();
				
				sql = "select uid from upload1 where fid='" + fid + "'";
				String own = DbConnection.getName(sql);
				sql = "select * from attack where fid='" + fid
						+ "' and userid='" + email + "'";
				if (DbConnection.getData(sql) == true) {
					sql = "select fcount from attack where fid='" + fid
							+ "' and userid='" + email + "'";
					fcount = DbConnection.getCount(sql);
					fcount = fcount + 1;
					sql = "update attack set fcount="+fcount+" where fid='"+fid+"' and userid='"+email+"'";
					DbConnection.update(sql);
					if (fcount >= 3) {
						sql = "update user set status1='Blocked' where email='"
								+ email + "'";
						int i = DbConnection.update(sql);
						if (i > 0) {
							o.println("<script type=\"text/javascript\">");
							o.println("alert('You try to attack the file multiple times, Now you are Blocked...');");
							o.println("window.location='logout.jsp';</script>");
						} else {
							o.println("<script type=\"text/javascript\">");
							o.println("alert('Please enter valid file keys...');");
							o.println("window.location='apfiles.jsp';</script>");
						}
					}else {
						o.println("<script type=\"text/javascript\">");
						o.println("alert('Please enter valid file keys... This is your Second attempt');");
						o.println("window.location='apfiles.jsp';</script>");
					}
				} else {
					Date d = new Date();
					String da = "" + d;
					fcount = 1;
					AttackBean ab = new AttackBean();
					ab.setFid(fid);
					ab.setEmail(email);
					ab.setOwn(own);
					ab.setIp(ip);
					ab.setDa(da);
					ab.setFcount(fcount);
					sql = "insert into attack values(?,?,?,?,?,?)";
					int i = DbConnection.setAttack(sql, ab);
					if (i > 0) {
						o.println("<script type=\"text/javascript\">");
						o.println("alert('File Keys are Wrong...This is your Second attempt');");
						o.println("window.location='apfiles.jsp';</script>");
					} else {
						o.println("<script type=\"text/javascript\">");
						o.println("alert('Please enter valid file keys... This is your Second attempt');");
						o.println("window.location='apfiles.jsp';</script>");
					}
				}
			}
		}
	}

}
