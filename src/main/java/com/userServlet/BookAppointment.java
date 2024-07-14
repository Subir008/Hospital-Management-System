package com.userServlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.configuration.Configuration;
import com.dao.AppointmentDao;
import com.dto.Appointment;

@WebServlet("/appointment-booking")
public class BookAppointment extends HttpServlet
{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		// Taking the user input
		int user_id = Integer.parseInt(req.getParameter("user_id").trim());
		int doc_id = Integer.parseInt(req.getParameter("doc_id").trim());
		String full_name = req.getParameter("full_name");
		String gender = req.getParameter("gender");
		String age = req.getParameter("age");
		String email = req.getParameter("email");
		String contact = req.getParameter("contact");
		String appointment_date = req.getParameter("appointment_date");
		String disease = req.getParameter("disease");
		String address = req.getParameter("address");
		
		//Sending user data to the appointment table
		Appointment appointment = new Appointment(user_id,doc_id,full_name,gender,age,email,contact,appointment_date,disease,address,"Pending");
	
		// Creating object of Appontmentdao class and passing the db connetion
		AppointmentDao appointmentDao = new AppointmentDao(Configuration.configure());
		
		boolean flag = false;
		
		// Taking the data from Appontmentdao class i.e, if the operation is performed it will send true 
		 try {
			flag = appointmentDao.bookAppointment(appointment);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		 //Starting the session
		HttpSession session = req.getSession();
		
		// If the data is true it will start bookingConfirmed session otherwise it will throw error 
		if(flag)
		{
			session.setAttribute("bookingConfirmed", "Appointment Booked Successfully ");
			resp.sendRedirect("user-appointment.jsp");
		}else
		{
			session.setAttribute("Error", "Something Went Wrong");
			resp.sendRedirect("user-appointment.jsp");
			
		}
		
		
	}
	
	

}
