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
public class Register extends HttpServlet
{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		String name = req.getParameter("username");
				
		String email = req.getParameter("email");
		
		String password = req.getParameter("password");
		
		User user = new User(name,email,password);
		
		UserDao dao = new UserDao(Configuration.configure());
		
		boolean flag = dao.UserRegister(user);
		
		HttpSession session = req.getSession();
		
		if(flag)
		{
			session.setAttribute("success", "Register Successfull");
			resp.sendRedirect("user-login.jsp");
			System.out.println("Register Successfull");
		}else {
			session.setAttribute("failed", "Something Went Wrong");
			resp.sendRedirect("user-login.jsp");
			System.out.println("Failed To Register ");
		}
		
		
	}
	
}
