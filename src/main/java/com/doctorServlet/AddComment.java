package com.doctorServlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.configuration.Configuration;
import com.dao.AppointmentDao;

@WebServlet("/add-comment")
public class AddComment extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// Taking the data from the user
		String comment = req.getParameter("comment");
		String status = req.getParameter("status");
		int appointment_id = Integer.parseInt(req.getParameter("appointment_id"));
		int doc_id = Integer.parseInt(req.getParameter("doc_id"));

		// Creating object of AppointmentDao Class and passing the connection to invoke
		// its method
		AppointmentDao appointmentDao = new AppointmentDao(Configuration.configure());

		// Starting the session
		HttpSession session = req.getSession();

		boolean flag = false;

		// Taking the value and passing to the AppointmentDao Class and taking its value
		// in the boolean form
		try {
			flag = appointmentDao.addComment(doc_id, appointment_id, comment, status);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		if (flag) {
			// Setting the session value
			session.setAttribute("CommentUpdated", "Comment Added Successfully");
			// Page redirecting
			resp.sendRedirect("doctor/patient-appointment-list.jsp");
		} else {
			// Setting the session value
			session.setAttribute("Error", "Something Error On Server");
			// Page redirecting
			resp.sendRedirect("doctor/patient-appointment-list.jsp");
		}
	}

}
