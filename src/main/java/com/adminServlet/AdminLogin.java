package com.adminServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dto.User;

@WebServlet("/adminLogin")
public class AdminLogin extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String email = req.getParameter("admin_email");
			String password = req.getParameter("admin_password");

			HttpSession session = req.getSession();

			String admin_email = "admin@gmail.com";
			String admin_password = "admin";

			if (admin_email.equals(email) && admin_password.equals(password)) {
				session.setAttribute("adminObj", new User());
				resp.sendRedirect("admin/index.jsp");
			} else {
				if (!admin_email.equals(email) && !admin_password.equals(password)) {
					session.setAttribute("Incorrect", "Error");
				} else if (!admin_password.equals(password)) {
					session.setAttribute("passwordIncorrect", "Error");
				} else if (!admin_email.equals(email)) {
					session.setAttribute("emailIncorrect", "Error");
				}
				resp.sendRedirect("admin-login.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
