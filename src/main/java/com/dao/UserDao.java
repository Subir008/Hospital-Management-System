package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.dto.User;

public class UserDao {
	private Connection connection;

	public UserDao(Connection connection) {
		super();
		this.connection = connection;
	}

	public UserDao() {
		// TODO Auto-generated constructor stub
	}

	public Boolean UserRegister(User user) 
	{

		boolean flag = false ;
		String sql = "INSERT INTO user_master (name,email,password) values (?,?,?)";

		
		try {
			PreparedStatement ps = connection.prepareStatement(sql);

			ps.setString(1, user.getName());
			ps.setString(2, user.getEmail());
			ps.setString(3, user.getPassword());

			 flag = ps.execute();

			if (flag == false) {
				flag = true;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return flag;
	}
	
	public User userLogin (String email , String password) throws SQLException
	{
		User user = null;
		
		String sql = "SELECT  * FROM user_master where email = ? and password = ? ";
		
		PreparedStatement ps = connection.prepareStatement(sql);
		
		ps.setString(1, email);
		ps.setString(2, password);
		
		ResultSet rs = ps.executeQuery();
		
		while (rs.next())
		{
			user = new User();
			user.setId(rs.getInt(1));
			user.setName(rs.getString(2));
			user.setEmail(rs.getString(3));
			user.setPassword(rs.getString(4));
			
		}
		
		return user;
	}
}
