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

@WebServlet("/update-user-profile")
public class Update_Profile extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int user_id = Integer.parseInt(req.getParameter("user_id"));

		String name = req.getParameter("name");
		String contact = req.getParameter("contact");
		String gender = req.getParameter("gender");
		String address = req.getParameter("address");
		String email = req.getParameter("email");

		UserDao userDao = new UserDao(Configuration.configure());

		User user = new User(user_id, name, email, contact, gender, address);

		boolean flag = false;
		try {
			flag = userDao.updateUserProfile(user);
		} catch (Exception e) {
			e.printStackTrace();
		}

		HttpSession session = req.getSession();

		if (flag) {
			User updateUser = new User();
			try {
				updateUser = userDao.fetchUserById(user_id);
			} catch (Exception e) {
				e.printStackTrace();
			}
			session.setAttribute("ProfileUpdated", "User Profile Updated Successfully");
			session.setAttribute("userObj", updateUser);
			resp.sendRedirect("user-profile.jsp");
		} else {
			session.setAttribute("Error", "Server Error Couldn't Update Data");
			resp.sendRedirect("user-profile.jsp");
		}

	}
}
