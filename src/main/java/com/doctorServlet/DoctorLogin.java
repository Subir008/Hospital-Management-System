package com.doctorServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.configuration.Configuration;
import com.dao.DoctorDao;
import com.dto.Doctor;
import com.dto.User;

@WebServlet("/doctor-login")
public class DoctorLogin extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			// Taking user data from the frontend
			String email = req.getParameter("doctor_email");
			String password = req.getParameter("doctor_password");

			// Starting the Session
			HttpSession session = req.getSession();

			DoctorDao doctorDao = new DoctorDao(Configuration.configure());

			Doctor doctor = doctorDao.doctorLogin(email, password);

			if (doctor != null) {
				session.setAttribute("doctorObj", doctor);
				resp.sendRedirect("doctor/index.jsp");
			} else {
				session.setAttribute("Incorrect", "Incorrect Login Credentials");
				resp.sendRedirect("doctor-login.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
