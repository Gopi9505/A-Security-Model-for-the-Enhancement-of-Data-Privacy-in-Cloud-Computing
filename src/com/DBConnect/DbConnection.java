package com.DBConnect;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import com.beans.UserBean;

public class DbConnection {
	private static UserBean u;
	private static UserBean u2;

	public static Connection connect() {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cc05", "root", "root");
			return con;
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			return con;
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
			return con;
		}

	}
	// Method for user Registration
	public static int setUser(String sql, UserBean ub) {
		// TODO Auto-generated method stub
		int i = 0;
		Connection con = connect();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, ub.getName());
			ps.setString(2, ub.getEmail());
			ps.setString(3, ub.getAge());
			ps.setString(4, ub.getGen());
			ps.setString(5, ub.getPwd());
			ps.setString(6, "pending");
			i = ps.executeUpdate();
			ps.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}public static boolean getData(String sql) {
		// TODO Auto-generated method stub
		boolean b = false;
		Connection con = connect();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			b = rs.next();
			rs.close();
			ps.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return b;
	}
	public static ResultSet getData1(String sql) {
		// TODO Auto-generated method stub
			Connection con = connect();
			ResultSet rs = null;
			try{
				PreparedStatement ps = con.prepareStatement(sql);
				rs = ps.executeQuery();
			}catch(SQLException e){
				e.printStackTrace();
			}
			return rs;
		}

	// Method For Check userLogin
	public static boolean checkUserLogin(String sql2)  {
		Connection con = null;
		int count = 0;
		try {
			con = DbConnection.connect();
			/* String sql="select * from reg;"; */
			Statement s = con.createStatement();
			ResultSet r = s.executeQuery(sql2);
			while (r.next()) {

				count++;
				// break;

			}
		} catch (SQLException e) {
			// TODO: handle exception
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if (count > 0) {
			return true;
		} else {
			return false;
		}

	}

	// Method for get userDetails
	public static ResultSet getUser1(String Email) throws SQLException {
		Connection con = DbConnection.connect();
		String sql = "select * from reg where email='" + Email + "'";
		Statement s = con.createStatement();
		ResultSet r = s.executeQuery(sql);
		return r;
	}
	public static List<String> getUser(String sql) {
		// TODO Auto-generated method stub
		List<String> lt = new ArrayList<String>();
		Connection con = connect();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				lt.add(rs.getString(1));
				lt.add(rs.getString(2));
				lt.add(rs.getString(3));
				lt.add(rs.getString(4));
				lt.add(rs.getString(6));
			}
			rs.close();
			ps.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lt;
	}

	public static ResultSet getUsers(String Email) throws SQLException {
		Connection con = DbConnection.connect();
		String sql = "select * from reg where id='" + Email + "'";
		Statement s = con.createStatement();
		ResultSet r = s.executeQuery(sql);
		return r;
	}

	public static ResultSet getUserDetails() throws SQLException {
		Connection con = DbConnection.connect();
		String sql = "select * from user";
		Statement s = con.createStatement();
		ResultSet r = s.executeQuery(sql);
		return r;
	}

	public static String getName(String sql) {
		// TODO Auto-generated method stub
		String name ="";
		Connection con = connect();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			if(rs.next()){
				name = rs.getString(1);
			}
			rs.close();
			ps.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return name;

	}

	public static String get(String sql) {
		// TODO Auto-generated method stub
		return null;
	}

	public static String getEmail(String sql) {
		// TODO Auto-generated method stub
		return null;
	}

	public static String getPword(String sql) {
		// TODO Auto-generated method stub
		return null;
	}

	public static List getAllusers() throws SQLException {
		List al = new ArrayList();
		String sql = "select * from keyreq";
		Connection con = DbConnection.connect();
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(sql);
		while (rs.next()) {

			if (rs.getString(2).equalsIgnoreCase("false")) {
				al.add(rs.getString(1));
			} else {

			}

		}

		return al;
	}

	public static boolean updateUser(String s) throws SQLException {
		String sql = "update req set request='true' where email='" + s + "'";
		Connection con = DbConnection.connect();
		Statement st = con.createStatement();
		boolean f = st.execute(sql);
		System.out.println("boolean is" + f);
		return f;
	}

	public static boolean deleteUser(String s) throws SQLException {
		String sql = "delete from req where email='" + s + "'";
		Connection con = DbConnection.connect();
		Statement st = con.createStatement();
		boolean f = st.execute(sql);
		System.out.println("boolean is" + f);
		return f;
	}

	public static int update(String sql) {
		// TODO Auto-generated method stub
		int i = 0;
		Connection con = connect();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			i = ps.executeUpdate();
			ps.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}

	public static int setAttack(String sql, com.beans.AttackBean ab) {
		// TODO Auto-generated method stub
		int i = 0;
		Connection con = connect();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, ab.getFid());
			ps.setString(2, ab.getOwn());
			ps.setString(3, ab.getEmail());
			ps.setString(4, ab.getIp());
			ps.setString(5, ab.getDa());
			ps.setInt(6, ab.getFcount());
			i = ps.executeUpdate();
			ps.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}
	public static List<String> getUKeys(String sql) {
		// TODO Auto-generated method stub
		List<String> lt = new ArrayList<String>();
		Connection con = connect();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				lt.add(rs.getString(3));
				lt.add(rs.getString(4));
			}
			rs.close();
			ps.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lt;
	}
	public static boolean getStatus(String sql) {
		// TODO Auto-generated method stub
		boolean b = false;
		ResultSet rs = null;
		Connection con = connect();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			b = rs.next();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return b;
	}


	public static String getUserkey(String sql) {
		String s = "";
		Connection con = connect();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				s = rs.getString(1);
			}
			rs.close();
			ps.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return s;
	}
	public static int sendRequest(String sql, com.beans.KeyBean kb) {
	int i = 0;
	Connection con = connect();
	try {
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, kb.getUid());
		ps.setString(2, kb.getFid());
		i = ps.executeUpdate();
		ps.close();
		con.close();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return i;
	}
	
	public static List<String> getUFile(String sql) {
		// TODO Auto-generated method stub
		List<String> lt = new ArrayList<String>();
		Connection con = connect();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				lt.add(rs.getString(1));
				lt.add(rs.getString(2));
				lt.add(rs.getString(3));
			}
			rs.close();
			ps.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lt;
	}
	
	public static List<String> getOkey(String sql) {
		// TODO Auto-generated method stub
		List<String> lt = new ArrayList<String>();
		Connection con = connect();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				lt.add(rs.getString(1));
				lt.add(rs.getString(4));
				lt.add(rs.getString(3));
			}
			rs.close();
			ps.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lt;
	}
	
	public static List<String> getFid(String sql) {
		// TODO Auto-generated method stub
		List<String> lt = new ArrayList<String>();
		Connection con = connect();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				lt.add(rs.getString(1));
			}
			rs.close();
			ps.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lt;
	}
	public static List<String> getKeys(String sql) {
		// TODO Auto-generated method stub
		List<String> lt = new ArrayList<String>();
		Connection con = connect();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				lt.add(rs.getString(8));
				lt.add(rs.getString(9));
			}
			rs.close();
			ps.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lt;
	}
	public static ResultSet getreg() throws SQLException
	{
		Connection con=DbConnection.connect();
		java.sql.Statement s=con.createStatement();
		ResultSet r=s.executeQuery("select * from reg");
		return r;
	}
	public static List<String> getAttack1(String sql) {
		// TODO Auto-generated method stub
		List<String> lt = new ArrayList<String>();
		Connection con = connect();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				lt.add(rs.getString(1));
				lt.add(rs.getString(2));
				lt.add(rs.getString(3));
				lt.add(rs.getString(4));
				lt.add(rs.getString(5));
			}
			rs.close();
			ps.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lt;
}
	public static int getCount(String sql) {
		// TODO Auto-generated method stub
		int i = 0;
		Connection con = connect();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				i = rs.getInt(1);
			}
			rs.close();
			ps.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}
	public static List<String> getAttack(String sql) {
		// TODO Auto-generated method stub
		List<String> lt = new ArrayList<String>();
		Connection con = connect();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				lt.add(rs.getString(1));
				lt.add(rs.getString(2));
				lt.add(rs.getString(3));
				lt.add(rs.getString(4));
				lt.add(rs.getString(5));
			}
			rs.close();
			ps.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lt;
	}public static int sendRKeys(String sql, com.beans.KeyReqBean kb) {
		// TODO Auto-generated method stub
		int i = 0;
		Connection con = connect();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, kb.getFid());
			ps.setString(2, kb.getOwn());
			ps.setString(3, kb.getEmail());
			ps.setString(4, "pending");
			ps.setString(5, kb.getDa());
			i = ps.executeUpdate();
			ps.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
}
	public static int sendKeys(String sql, com.beans.KeyBean kb) {
		// TODO Auto-generated method stub
		int i = 0;
		Connection con = connect();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, kb.getFid());
			ps.setString(2, kb.getUid());
			ps.setString(3, kb.getKey1());
			ps.setString(4, kb.getKey2());
			i = ps.executeUpdate();
			ps.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}
	public static List<String> getOKeys(String sql) {
		// TODO Auto-generated method stub
		List<String> lt = new ArrayList<String>();
		Connection con = connect();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				lt.add(rs.getString(7));
				lt.add(rs.getString(8));
				
			}
			rs.close();
			ps.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lt;
	}
	public static List<String> getAFiles(String sql) {
		// TODO Auto-generated method stub
		List<String> lt = new ArrayList<String>();
		Connection con = connect();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				lt.add(rs.getString(1));
				lt.add(rs.getString(2));
				lt.add(rs.getString(3));
				lt.add(rs.getString(8));
				lt.add(rs.getString(9));
			}
			rs.close();
			ps.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lt;
	}
	public static List<String> getOwner(String sql) {
		// TODO Auto-generated method stub
		List<String> lt = new ArrayList<String>();
		Connection con = connect();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				lt.add(rs.getString(1));
				lt.add(rs.getString(2));
				lt.add(rs.getString(4));
			}
			rs.close();
			ps.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lt;

	}public static int setOwner(String sql, com.beans.OwnerBean ub) {
		// TODO Auto-generated method stub
		int i = 0;
		Connection con = connect();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, ub.getName());
			ps.setString(2, ub.getEmail());
			ps.setString(3, ub.getAge());
			ps.setString(4, ub.getGender());
			ps.setString(5, ub.getPwd());
			i = ps.executeUpdate();
			ps.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}
	public static int userRegister(String sql1, UserBean ub) {
		// TODO Auto-generated method stub
			int i = 0;
			Connection con = connect();
			try{
				PreparedStatement ps = con.prepareStatement(sql1);
				ps.setString(1, ub.getName());
				ps.setString(4, ub.getGen());
				ps.setString(2, ub.getEmail());
				ps.setString(3, ub.getAge());
				ps.setString(5, ub.getPwd());
				ps.setString(6, "Approved");
				
				i = ps.executeUpdate();
			}catch(Exception e){
				e.printStackTrace();
			}
			return i;
		}
	public static ResultSet getReg() throws SQLException
	{
		Connection con=connect();
		java.sql.Statement s=con.createStatement();
		ResultSet rs=(ResultSet) s.executeQuery("select * from user");
		return rs;
	}
	public static ResultSet getUp() throws SQLException
	{
		Connection con=connect();
		java.sql.Statement s=con.createStatement();
		ResultSet rs=(ResultSet) s.executeQuery("select * from upload");
		return rs;
	}
	public static List<String> getAkey(String sql) {
		// TODO Auto-generated method stub
		List<String> lt = new ArrayList<String>();
		Connection con = connect();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				lt.add(rs.getString(1));
				lt.add(rs.getString(2));
				lt.add(rs.getString(3));
				lt.add(rs.getString(5));
			}
			rs.close();
			ps.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lt;
	}
	}

