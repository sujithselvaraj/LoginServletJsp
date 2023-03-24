package com.login.dao;

import java.sql.*;

public class LoginDao {

	public boolean check(String uname,String pass)
	{		String sql="select * from login where uname=? and pass=?";

		String url="jdbc:mysql://localhost:3306/login";
		String username="root";
		String passwrd="Sujith@1234";
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,username,passwrd);
			PreparedStatement st= con.prepareStatement(sql);
			st.setString(1, uname);
			st.setString(2, pass);
			ResultSet rs=st.executeQuery();
			if(rs.next())
			{
				return true;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
			System.out.println(e);
		}
		
		return false;
	}
}
