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
		String comment = req.getParameter("comment");
		String status = req.getParameter("status");
		int appointment_id = Integer.parseInt(req.getParameter("appointment_id"));
		int doc_id = Integer.parseInt(req.getParameter("doc_id"));

		AppointmentDao appointmentDao = new AppointmentDao(Configuration.configure());

		HttpSession session = req.getSession();

		boolean flag = false;

		try {
			flag = appointmentDao.addComment(doc_id, appointment_id, comment, status);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		if (flag)
		{
			session.setAttribute("CommentUpdated", "Comment Added Successfully");
			resp.sendRedirect("doctor/patient-appointment-list.jsp");
		}else {
			session.setAttribute("Error", "Something Error On Server");
			resp.sendRedirect("doctor/patient-appointment-list.jsp");
		}
	}

}
