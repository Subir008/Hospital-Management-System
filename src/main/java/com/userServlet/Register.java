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
import com.dao.UserDao;
import com.dto.User;

@WebServlet("/register")
public class Register extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// Taking user input data from the frontend
		String name = req.getParameter("username");
		String email = req.getParameter("email");
		String password = req.getParameter("password");

		// Creating objet of user and passing the data that have been taken from the
		// user
		User user = new User(name, email, password, 0);

		// Creating object of userdao and passing the db connetion
		UserDao dao = new UserDao(Configuration.configure());

		// Storing the data coming from userdao class after registering the data
		boolean flag = dao.UserRegister(user);

		// Staring the session
		HttpSession session = req.getSession();

		// If the data come from UserDao class is true then it will enter the if block
		// otherwise it will go to the else block
		if (flag) {
			// If the data inserted then session will start , message will show and
			// redireect to login page
			session.setAttribute("success", "Register Successfull");
			resp.sendRedirect("user-login.jsp");
			System.out.println("Register Successfull");

		} else {
			// If the data is not inserted then another session will start , message will
			// show and redireect to login page
			session.setAttribute("failed", "Email Id Already Exists");
			resp.sendRedirect("user-login.jsp");
			System.out.println("Something Went Wrong");
		}

	}

}
