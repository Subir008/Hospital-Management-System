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
		int user_id = Integer.parseInt(req.getParameter("user_id"));
		int doc_id = Integer.parseInt(req.getParameter("doc_id"));
		String full_name = req.getParameter("full_name");
		String gender = req.getParameter("gender");
		String age = req.getParameter("age");
		String email = req.getParameter("email");
		String contact = req.getParameter("contact");
		String appointment_date = req.getParameter("appointment_date");
		String disease = req.getParameter("disease");
		String address = req.getParameter("address");
		
		Appointment appointment = new Appointment(user_id,doc_id,full_name,gender,age,email,contact,appointment_date,disease,address,"Pending");
	
		AppointmentDao appointmentDao = new AppointmentDao(Configuration.configure());
		
		boolean flag = false;
		
		 try {
			flag = appointmentDao.bookAppointment(appointment);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		HttpSession session = req.getSession();
		
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
