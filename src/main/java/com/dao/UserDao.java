package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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

	// Method for User Register
	public Boolean UserRegister(User user) {

		boolean flag = false;
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

	// Method for User Login
	public User userLogin(String email, String password) throws SQLException {
		User user = null;

		String sql = "SELECT  * FROM user_master where email = ? and password = ? ";

		PreparedStatement ps = connection.prepareStatement(sql);

		ps.setString(1, email);
		ps.setString(2, password);

		ResultSet rs = ps.executeQuery();

		while (rs.next()) {
			user = new User();
			user.setId(rs.getInt(1));
			user.setName(rs.getString(2));
			user.setEmail(rs.getString(3));
			user.setPassword(rs.getString(4));

		}

		return user;
	}

	// Method for getting number of User registered
	public int countAllUser() throws SQLException

	{
		int count = 0;

		String sql = "SELECT * FROM  user_master ";

		PreparedStatement ps = connection.prepareStatement(sql);

		ResultSet rs = ps.executeQuery();

		while (rs.next()) {
			count++;
		}

		return count;
	}

	// Method for fetching all User details
	public List<User> getAllUser() throws SQLException {
		List<User> list = new ArrayList<User>();
		User user = null;

		String sql = "SELECT * FROM user_master";

		PreparedStatement ps = connection.prepareStatement(sql);

		ResultSet rs = ps.executeQuery();

		while (rs.next()) {
			user = new User();

			user.setName(rs.getString(2));
			user.setEmail(rs.getString(3));

			list.add(user);
		}

		return list;
	}

	// Method for getting User By id
	public User fetchUserById(int id) throws SQLException {
		User user = null;

		String sql = "SELECT * FROM user_master WHERE user_id = ?";

		PreparedStatement ps = connection.prepareStatement(sql);
		ps.setInt(1, id);

		ResultSet rs = ps.executeQuery();

		while (rs.next()) {
			user = new User();
			user.setId(rs.getInt(1));
			user.setName(rs.getString(2));
			user.setEmail(rs.getString(3));
			user.setPassword(rs.getString(4));
			user.setContact(rs.getString(5));
			user.setAddress(rs.getString(6));
			user.setGender(rs.getString(7));
		}
		return user;
	}

	// Method for checking Old Password
	public boolean checkPassword(int id, String old_password) throws SQLException {
		boolean flag = false;

		String sql = "SELECT * FROM user_master WHERE user_id = ? AND password = ?";

		PreparedStatement ps = connection.prepareStatement(sql);

		ps.setInt(1, id);
		ps.setString(2, old_password);

		ResultSet rs = ps.executeQuery();

		while (rs.next()) {
			flag = true;
		}

		return flag;
	}

	// Method for update Old Password
	public boolean updatePassword(int id, String new_password) throws SQLException {
		boolean flag = false;

		String sql = "UPDATE user_master SET password = ? WHERE user_id = ?";

		PreparedStatement ps = connection.prepareStatement(sql);

		ps.setString(1, new_password);
		ps.setInt(2, id);

		int i = ps.executeUpdate();

		if (i == 1) {
			flag = true;
		}

		return flag;
	}

	// Method for Update Profile
	public boolean updateUserProfile(User user) throws SQLException {
		boolean flag = false;

		String sql = "UPDATE user_master set name = ?, email = ?, contact = ? ,address = ? , gender = ? WHERE user_id = ?";

		PreparedStatement ps = connection.prepareStatement(sql);
		ps.setString(1, user.getName());
		ps.setString(2, user.getEmail());
		ps.setString(3, user.getContact());
		ps.setString(4, user.getAddress());
		ps.setString(5, user.getGender());
		ps.setInt(6, user.getId());

		int i = ps.executeUpdate();

		if (i == 1) {
			flag = true;
		}

		return flag;
	}

}
