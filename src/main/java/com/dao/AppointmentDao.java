package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.dto.Appointment;

public class AppointmentDao {
	private Connection connection;

	public AppointmentDao(Connection connection) {
		super();
		this.connection = connection;
	}

	// Storing User Appointment Details
	public boolean bookAppointment(Appointment appointment) throws SQLException {
		boolean flag = false;

		String sql = "INSERT INTO appointment_master SET user_id,full_name,gender,age,email,contact,appointment_date,disease,doc_id,address VALUES(?,?,?,?,?,?,?,?,?,?)";

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
		
		flag = ps.execute();

		if(flag == false)
		{
			flag = true;
		}
		
		return flag;
	}

}
