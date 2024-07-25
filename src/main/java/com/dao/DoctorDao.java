package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dto.Doctor;

public class DoctorDao {
	private Connection connection;

	// Method for Getting and setting the connection
	public DoctorDao(Connection connection) {
		super();
		this.connection = connection;
	}

	// Method for Adding Doctor details to the db
	public boolean addDoctor(Doctor doctor) throws SQLException {
		boolean flag = false;

		String sql = "INSERT INTO doctor_master (full_name,dob,qualification,specialist,email,contact,password) VALUES (?,?,?,?,?,?,?)";

		PreparedStatement ps = connection.prepareStatement(sql);

		ps.setString(1, doctor.getFull_name());
		ps.setString(2, doctor.getDob());
		ps.setString(3, doctor.getQualification());
		ps.setString(4, doctor.getSpecialist());
		ps.setString(5, doctor.getEmail());
		ps.setString(6, doctor.getContact());
		ps.setString(7, doctor.getPassword());

		flag = ps.execute();

		if (flag == false) {
			flag = true;
		}

		return flag;
	}

	// Method for Fetching all the doctor details
	// As multiple data is present so storing them in the form of doctor list array.

	public List<Doctor> fetchDoctor() throws SQLException {
		List<Doctor> list = new ArrayList<Doctor>();

		Doctor doctor = null;

		String sql = "SELECT * FROM doctor_master ORDER BY doc_id desc";

		PreparedStatement ps = connection.prepareStatement(sql);

		ResultSet rs = ps.executeQuery();

		while (rs.next()) {
			doctor = new Doctor();

			doctor.setDoc_id(rs.getInt(1));
			doctor.setFull_name(rs.getString(2));
			doctor.setDob(rs.getString(3));
			doctor.setQualification(rs.getString(4));
			doctor.setSpecialist(rs.getString(5));
			doctor.setEmail(rs.getString(6));
			doctor.setContact(rs.getString(7));
			doctor.setPassword(rs.getString(8));
			doctor.setBio(rs.getString(9));
			doctor.setAddress(rs.getString(10));
			doctor.setExperience(rs.getString(11));
			doctor.setProfile_img(rs.getString(12));

			list.add(doctor);
		}

		return list;
	}

	// Method for Fetching particular doctor details based on id.
	// As single data is present so storing them in the form of doctor object.

	public Doctor fetchDoctorById(int id) throws SQLException {
		Doctor doctor = null;

		String sql = "SELECT * FROM doctor_master WHERE doc_id = ?";

		PreparedStatement ps = connection.prepareStatement(sql);

		ps.setInt(1, id);

		ResultSet rs = ps.executeQuery();

		while (rs.next()) {
			doctor = new Doctor();

			doctor.setDoc_id(rs.getInt(1));
			doctor.setFull_name(rs.getString(2));
			doctor.setDob(rs.getString(3));
			doctor.setQualification(rs.getString(4));
			doctor.setSpecialist(rs.getString(5));
			doctor.setEmail(rs.getString(6));
			doctor.setContact(rs.getString(7));
			doctor.setPassword(rs.getString(8));
			doctor.setBio(rs.getString(9));
			doctor.setAddress(rs.getString(10));
			doctor.setExperience(rs.getString(11));
			doctor.setProfile_img(rs.getString(12));

		}

		return doctor;
	}

	// Method for Update Doctor details to the db
	public boolean updateDoctor(Doctor doctor) throws SQLException {
		boolean flag = false;

		String sql = "UPDATE doctor_master SET full_name = ? ,dob = ?, qualification = ?, specialist = ?, email = ?, contact = ?, password = ? WHERE doc_id = ?";

		PreparedStatement ps = connection.prepareStatement(sql);

		ps.setString(1, doctor.getFull_name());
		ps.setString(2, doctor.getDob());
		ps.setString(3, doctor.getQualification());
		ps.setString(4, doctor.getSpecialist());
		ps.setString(5, doctor.getEmail());
		ps.setString(6, doctor.getContact());
		ps.setString(7, doctor.getPassword());
		ps.setInt(8, doctor.getDoc_id());

		int i = ps.executeUpdate();

		if (i == 1) {
			flag = true;
		}

		return flag;
	}

	// Method for Update Doctor Profile to the db
	public boolean updateProfile(Doctor doctor) throws SQLException {
		boolean flag = false;

		String sql = "UPDATE doctor_master SET full_name = ? ,dob = ?, qualification = ?, specialist = ?, email = ?, contact = ?, bio = ?, address= ?, experience= ?, profile_img = ? WHERE doc_id = ?";

		PreparedStatement ps = connection.prepareStatement(sql);

		ps.setString(1, doctor.getFull_name());
		ps.setString(2, doctor.getDob());
		ps.setString(3, doctor.getQualification());
		ps.setString(4, doctor.getSpecialist());
		ps.setString(5, doctor.getEmail());
		ps.setString(6, doctor.getContact());
		ps.setString(7, doctor.getBio());
		ps.setString(8, doctor.getAddress());
		ps.setString(9, doctor.getExperience());
		ps.setString(10, doctor.getProfile_img());
		ps.setInt(11, doctor.getDoc_id());

		int i = ps.executeUpdate();

		if (i == 1) {
			flag = true;
		}

		return flag;
	}

	// Method for Delete Doctor details in the db
	public boolean deleteDoctor(int id) throws SQLException {
		boolean flag = false;

		String sql = "DELETE FROM doctor_master WHERE doc_id = ?";

		PreparedStatement ps = connection.prepareStatement(sql);

		ps.setInt(1, id);

		int i = ps.executeUpdate();

		if (i == 1) {
			flag = true;
		}

		return flag;
	}

	// Method for Doctor panel Login
	public Doctor doctorLogin(String email, String password) throws SQLException {
		Doctor doctor = null;

		String sql = "SELECT * FROM doctor_master WHERE email= ? AND password = ?";

		PreparedStatement ps = connection.prepareStatement(sql);
		ps.setString(1, email);
		ps.setString(2, password);

		ResultSet rs = ps.executeQuery();

		while (rs.next()) {
			doctor = new Doctor();

			doctor.setDoc_id(rs.getInt(1));
			doctor.setFull_name(rs.getString(2));
			doctor.setDob(rs.getString(3));
			doctor.setQualification(rs.getString(4));
			doctor.setSpecialist(rs.getString(5));
			doctor.setEmail(rs.getString(6));
			doctor.setContact(rs.getString(7));
			doctor.setPassword(rs.getString(8));

		}

		return doctor;
	}

	// Method for getting number of doctor
	public int countDoctor() throws SQLException {
		int count = 0;

		String sql = "SELECT * FROM  doctor_master ";

		PreparedStatement ps = connection.prepareStatement(sql);

		ResultSet rs = ps.executeQuery();

		while (rs.next()) {
			count++;
		}

		return count;
	}

	// Method for checking Old Password
	public boolean checkPassword(int id, String old_password) throws SQLException {
		boolean flag = false;

		String sql = "SELECT * FROM doctor_master WHERE doc_id = ? AND password = ?";

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

		String sql = "UPDATE doctor_master SET password = ? WHERE doc_id = ?";

		PreparedStatement ps = connection.prepareStatement(sql);

		ps.setString(1, new_password);
		ps.setInt(2, id);

		int i = ps.executeUpdate();

		if (i == 1) {
			flag = true;
		}

		return flag;
	}

}
