package com.doctorServlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.configuration.Configuration;
import com.dao.DoctorDao;
import com.dto.Doctor;

@WebServlet("/update-profile-details")
public class Update_Profile_Details extends HttpServlet
{
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		String name = req.getParameter("name");
		String dob = req.getParameter("dob");
		String qualification = req.getParameter("qualification");
		String specialist = req.getParameter("specialist");
		String email = req.getParameter("email");
		String contact = req.getParameter("contact");
		String experience = req.getParameter("experience");
		String address = req.getParameter("address");
		String bio = req.getParameter("bio");
		int doc_id = Integer.parseInt(req.getParameter("doc_id"));
		
		// Create object of doctor class and Pass the information to the class
		Doctor doctor = new Doctor(doc_id,name,dob,qualification,specialist,email,contact,bio,address,experience);
		
		// Create object of DoctorDao Class and pass the db connection
		DoctorDao doctorDao = new DoctorDao(Configuration.configure());
		
		boolean flag = false ;
		// Fetch the data of the DoctorDao Class
		try {
		 flag = doctorDao.updateProfile(doctor);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		//Start the session
		HttpSession session = req.getSession();
		
		// If the data come from DoctorDao class is true then it will enter the if block otherwise it will go to the else block
		if (flag)
		{
			Doctor updateDoctor = null ;
			try {
				 updateDoctor = doctorDao.fetchDoctorById(doc_id);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			session.setAttribute("UpdateSuccess", "Profile Details Updated Successfully");
			session.setAttribute("doctorObj", updateDoctor);
			resp.sendRedirect("doctor/update-doctor-details.jsp");
		}else {
			session.setAttribute("Error", "Something Went Wrong Couldn't Update");
			resp.sendRedirect("doctor/update-doctor-details.jsp");
		}	
		
		
	}
	
}
