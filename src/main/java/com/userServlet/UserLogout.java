package com.userServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/userLogout")
public class UserLogout extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// Start the session
		HttpSession session = req.getSession();

		// Removing the previous session
		session.removeAttribute("userObj");

		// Setting new session for showing logout successfull message and then redirect
		// to another page
		session.setAttribute("logout", "Logout Successfully");

		resp.sendRedirect("user-login.jsp");
	}

}
