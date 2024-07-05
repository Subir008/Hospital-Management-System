package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.dto.User;

public class UserDao {
	private Connection connection;

	public UserDao(Connection connection) {
		super();
		this.connection = connection;
	}

	public Boolean UserRegister(User user) {

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
}
