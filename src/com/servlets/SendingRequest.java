package com.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DBConnect.DbConnection;

/**
 * Servlet implementation class SendingRequest
 */
@WebServlet("/SendingRequest")
public class SendingRequest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SendingRequest() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email=request.getParameter("email");
	
		Connection con=DbConnection.connect();
		try {
			String sql = "select * from req where email='"+email+"'";
			if(DbConnection.checkUserLogin(sql)) {
				sql = "update req set request='true' where email='"+email+"'";
				int i = DbConnection.update(sql);
				if(i>0)
				{
					response.sendRedirect("Success.jsp?msg=Request sended successfully&&to=index.jsp");
				}
				else
				{
					response.sendRedirect("Success.jsp?msg=Faild to send request&&to=index.jsp");
				}
			}else {
			PreparedStatement ps=con.prepareStatement("insert into req values(?,?)");
			ps.setString(1, email);
			ps.setString(2, "false");
			
		int i=ps.executeUpdate();
			if(i>0)
			{
				response.sendRedirect("Success.jsp?msg=Request sended successfully&&to=index.jsp");
			}
			else
			{
				response.sendRedirect("Success.jsp?msg=Faild to send request&&to=index.jsp");
			}
			}	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
