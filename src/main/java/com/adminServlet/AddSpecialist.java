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
import com.dao.SpecialistDao;
import com.dto.Specialist;
import com.dto.User;

@WebServlet("/add-Specialist")
public class AddSpecialist extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// Taking user data from the frontend
		String name = req.getParameter("specialist_name");

		// Starting the Session
		HttpSession session = req.getSession();

		// Creating object of SpecialistDao and passing the db connetion
		SpecialistDao specialistDao = new SpecialistDao(Configuration.configure());

		// Creating objet of Specialist and passing the data that have been taken from
		// the user
		Specialist specialist = new Specialist(0, name);

		boolean flag = false;

		// Taking the specialist added value either true or false from specialistDao
		// class
		try {
			flag = specialistDao.addSpecialist(specialist);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		if (flag) {
			session.setAttribute("SuccessMessage", "Specialist Added Successfully");
			resp.sendRedirect("admin/index.jsp");
		} else {

			session.setAttribute("FailureMessage", "Something Went Wrong");
			resp.sendRedirect("admin/index.jsp");
		}

	}

}
