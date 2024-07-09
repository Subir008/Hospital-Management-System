package com.userServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.configuration.Configuration;
import com.dao.UserDao;
import com.dto.User;

@WebServlet("/userLogin")
public class UserLogin extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			//Taking user input data from the frontend
			String email = req.getParameter("user_email");
			String password = req.getParameter("user_password");

			//Staring the session
			HttpSession session = req.getSession();

			// Creating object of userdao and passing the db connetion
			UserDao userdao = new UserDao(Configuration.configure());

			// Creating objet of user and passing the data that have been taken from the user 
			User user = userdao.userLogin(email, password);

			//Cheking first if there is user given data or not . After that checking user given credential is present in the db or not .
			if (user != null) {
				
				//If the user data is present in db then start the session and store the user data in the session and redirect to the index page.
				session.setAttribute("userObj", user);
				resp.sendRedirect("index.jsp");
			} else {
				session.setAttribute("incorrect", "Error");
				resp.sendRedirect("user-login.jsp");
			}
		

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
