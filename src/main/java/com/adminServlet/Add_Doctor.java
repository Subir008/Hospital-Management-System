package com.adminServlet;

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

@WebServlet("/add-doctor")
public class Add_Doctor extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// Getting user data from frontend
		String name = req.getParameter("name");
		String dob = req.getParameter("dob");
		String qualification = req.getParameter("qualification");
		String specialist = req.getParameter("specialist");
		String email = req.getParameter("email");
		String contact = req.getParameter("contact");
		String password = req.getParameter("password");

		// Create object of doctor class and Pass the information to the class
		Doctor doctor = new Doctor(name, dob, qualification, specialist, email, contact, password);

		// Create object of DoctorDao Class and pass the db connection
		DoctorDao doctorDao = new DoctorDao(Configuration.configure());

		boolean flag = false;
		// Fetch the data of the DoctorDao Class
		try {
			flag = doctorDao.addDoctor(doctor);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		// Start the session
		HttpSession session = req.getSession();

		// If the data come from DoctorDao class is true then it will enter the if block
		// otherwise it will go to the else block
		if (flag) {
			session.setAttribute("Success", "Dotor Added Successfully");
			resp.sendRedirect("admin/add-doctor.jsp");
		} else {
			session.setAttribute("Failed", "Server Error");
			resp.sendRedirect("admin/add-doctor.jsp");

		}

	}

}
