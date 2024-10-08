package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dto.Appointment;

public class AppointmentDao {
	private Connection connection;

	public AppointmentDao(Connection connection) {
		super();
		this.connection = connection;
	}

	// Method for Storing User Appointment Details
	public boolean bookAppointment(Appointment appointment) throws SQLException {
		boolean flag = false;

		String sql = "INSERT INTO appointment_master (user_id,full_name,gender,age,email,contact,appointment_date,disease,doc_id,address,status) VALUES(?,?,?,?,?,?,?,?,?,?,?)";

		PreparedStatement ps = connection.prepareStatement(sql);
		ps.setInt(1, appointment.getUser_id());
		ps.setString(2, appointment.getFull_name());
		ps.setString(3, appointment.getGender());
		ps.setString(4, appointment.getAge());
		ps.setString(5, appointment.getEmail());
		ps.setString(6, appointment.getContact());
		ps.setString(7, appointment.getAppointment_date());
		ps.setString(8, appointment.getDisease());
		ps.setInt(9, appointment.getDoc_id());
		ps.setString(10, appointment.getAddress());
		ps.setString(11, appointment.getStatus());

		flag = ps.execute();

		if (flag == false) {
			flag = true;
		}

		return flag;
	}

	// Method for getting all the appointment information based on User
	public List<Appointment> fetchAllAppointmentByUser(int user_id) throws SQLException {
		List<Appointment> list = new ArrayList<Appointment>();

		Appointment appointment = null;

		String sql = "SELECT * FROM appointment_master WHERE user_id = ?";

		PreparedStatement ps = connection.prepareStatement(sql);
		ps.setInt(1, user_id);

		ResultSet rs = ps.executeQuery();

		while (rs.next()) {
			appointment = new Appointment();

			appointment.setAppointment_id(rs.getInt(1));
			appointment.setUser_id(rs.getInt(2));
			appointment.setFull_name(rs.getString(3));
			appointment.setGender(rs.getString(4));
			appointment.setAge(rs.getString(5));
			appointment.setEmail(rs.getString(6));
			appointment.setContact(rs.getString(7));
			appointment.setAppointment_date(rs.getString(8));
			appointment.setDisease(rs.getString(9));
			appointment.setDoc_id(rs.getInt(10));
			appointment.setAddress(rs.getString(11));
			appointment.setStatus(rs.getString(12));

			list.add(appointment);

		}

		return list;
	}

	// Method for getting appointment information based on doctor
	public List<Appointment> fetchDoctorById(int doc_id) throws SQLException {
		List<Appointment> list = new ArrayList<Appointment>();

		Appointment appointment = null;

		String sql = "SELECT * FROM appointment_master WHERE doc_id = ? ORDER BY appointment_id DESC";

		PreparedStatement ps = connection.prepareStatement(sql);
		ps.setInt(1, doc_id);

		ResultSet rs = ps.executeQuery();

		while (rs.next()) {
			appointment = new Appointment();

			appointment.setAppointment_id(rs.getInt(1));
			appointment.setUser_id(rs.getInt(2));
			appointment.setFull_name(rs.getString(3));
			appointment.setGender(rs.getString(4));
			appointment.setAge(rs.getString(5));
			appointment.setEmail(rs.getString(6));
			appointment.setContact(rs.getString(7));
			appointment.setAppointment_date(rs.getString(8));
			appointment.setDisease(rs.getString(9));
			appointment.setDoc_id(rs.getInt(10));
			appointment.setAddress(rs.getString(11));
			appointment.setStatus(rs.getString(12));
			appointment.setComment(rs.getString(13));

			list.add(appointment);

		}

		return list;
	}

	// Method for getting appointment information based on appointment id
	public Appointment fetchAppointmentById(int appointment_id) throws SQLException {

		Appointment appointment = null;

		String sql = "SELECT * FROM appointment_master WHERE appointment_id = ? ";

		PreparedStatement ps = connection.prepareStatement(sql);
		ps.setInt(1, appointment_id);

		ResultSet rs = ps.executeQuery();

		while (rs.next()) {
			appointment = new Appointment();

			appointment.setAppointment_id(rs.getInt(1));
			appointment.setUser_id(rs.getInt(2));
			appointment.setFull_name(rs.getString(3));
			appointment.setGender(rs.getString(4));
			appointment.setAge(rs.getString(5));
			appointment.setEmail(rs.getString(6));
			appointment.setContact(rs.getString(7));
			appointment.setAppointment_date(rs.getString(8));
			appointment.setDisease(rs.getString(9));
			appointment.setDoc_id(rs.getInt(10));
			appointment.setAddress(rs.getString(11));
			appointment.setStatus(rs.getString(12));

		}

		return appointment;
	}

	// Method for adding comment to the patient
	public boolean addComment(int doc_id, int appointment_id, String comment, String status) throws SQLException {
		boolean flag = false;

		String sql = "UPDATE appointment_master SET comment = ? , status = ? WHERE doc_id =? AND appointment_id = ? ";

		PreparedStatement ps = connection.prepareStatement(sql);
		ps.setString(1, comment);
		ps.setString(2, status);
		ps.setInt(3, doc_id);
		ps.setInt(4, appointment_id);

		int i = ps.executeUpdate();

		if (i == 1) {
			flag = true;
		}

		return flag;
	}

	// Method for getting all the appointment information based on User
	public List<Appointment> fetchAllAppointment() throws SQLException {
		List<Appointment> list = new ArrayList<Appointment>();

		Appointment appointment = null;

		String sql = "SELECT * FROM appointment_master ORDER BY user_id DESC";

		PreparedStatement ps = connection.prepareStatement(sql);

		ResultSet rs = ps.executeQuery();

		while (rs.next()) {
			appointment = new Appointment();

			appointment.setAppointment_id(rs.getInt(1));
			appointment.setUser_id(rs.getInt(2));
			appointment.setFull_name(rs.getString(3));
			appointment.setGender(rs.getString(4));
			appointment.setAge(rs.getString(5));
			appointment.setEmail(rs.getString(6));
			appointment.setContact(rs.getString(7));
			appointment.setAppointment_date(rs.getString(8));
			appointment.setDisease(rs.getString(9));
			appointment.setDoc_id(rs.getInt(10));
			appointment.setAddress(rs.getString(11));
			appointment.setStatus(rs.getString(12));
			appointment.setComment(rs.getString(13));

			list.add(appointment);

		}

		return list;
	}

	// Method for getting total number of appointment
	public int countAllAppointment() throws SQLException

	{
		int count = 0;

		String sql = "SELECT * FROM  appointment_master ";

		PreparedStatement ps = connection.prepareStatement(sql);

		ResultSet rs = ps.executeQuery();

		while (rs.next()) {
			count++;
		}

		return count;
	}

	// Method for getting number of appointments based on Doctor
	public int countAppointmentByDoctor(int doc_id) throws SQLException

	{
		int count = 0;

		String sql = "SELECT * FROM  appointment_master WHERE doc_id = ?";

		PreparedStatement ps = connection.prepareStatement(sql);
		ps.setInt(1, doc_id);

		ResultSet rs = ps.executeQuery();

		while (rs.next()) {
			count++;
		}

		return count;
	}

}
