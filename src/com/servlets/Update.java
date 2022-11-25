package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DBConnect.DbConnection;
import com.DBConnect.RandomeString;

/**
 * Servlet implementation class Update
 */
@WebServlet("/Update")
public class Update extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Update() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter o = response.getWriter();
		String fid = request.getParameter("fid");
		String key1 = RandomeString.getSaltString();
		String key2 = RandomeString.getSaltString();
		String sql = "update upload set f1key='"+key1+"', f2key='"+key2+"' where fid='"+fid+"'";
		int i = DbConnection.update(sql);
		if(i > 0){
			Admin.count = 0;
			o.println("<script type=\"text/javascript\">");
			o.println("alert('"+fid+" Keys Updated Successfully...');");
			o.println("window.location='afiles.jsp';</script>");
		}else{
			o.println("<script type=\"text/javascript\">");
			o.println("alert('"+fid+" Keys Not Updated');");
			o.println("window.location='afiles.jsp';</script>");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
