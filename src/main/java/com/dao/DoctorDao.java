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

	// Getting and setting the connection
	public DoctorDao(Connection connection) {
		super();
		this.connection = connection;
	}

	// Adding Doctor details to the db
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

	// Fetching all the doctor details
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

			list.add(doctor);
		}

		return list;
	}

	// Fetching particular doctor details based on id.
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

		}

		return doctor;
	}

	// Update Doctor details to the db
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

	// Delete Doctor details in the db
	public boolean deleteDoctor(int id) throws SQLException {
		boolean flag = false;

		String sql = "DELETE FROM doctor_master WHERE doc_id = ?";

		PreparedStatement ps = connection.prepareStatement(sql);

		ps.setInt(1, id);

		int i = ps.executeUpdate();

		while (i == 1) {
			flag = true;
		}

		return flag;
	}

}
