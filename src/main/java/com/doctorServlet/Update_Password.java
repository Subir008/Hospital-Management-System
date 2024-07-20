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
import com.dao.UserDao;

@WebServlet("/update-doctor-password")
public class Update_Password extends HttpServlet
{	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		int doc_id = Integer.parseInt(req.getParameter("doc_id").trim()); 
		
		String email = req.getParameter("email");
		String old_password = req.getParameter("old_password");
		String new_password = req.getParameter("new_password");
		String confirm_password = req.getParameter("confirm_password");
		
		DoctorDao doctorDao = new DoctorDao(Configuration.configure());
		
		HttpSession session = req.getSession();
		
		boolean flag = false;
		
		
		try {
		flag = doctorDao.checkPassword(doc_id, old_password);
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		// First check the id and password is present there in db or not if present go to if block otherwise else
		if(flag)
		{
			// If the old password is present than check the new given password is equals to the confirm password or not if they matches then go to if block and update the data otherwise through error			
			if (new_password.equals(confirm_password))
			{
				boolean check = false;
				try {
				 check = doctorDao.updatePassword(doc_id, new_password);
				}catch (Exception e) {
					e.printStackTrace();
				}
				// If the password updated successfully go to if block otherwise else block
				if(check)
				{
					session.setAttribute("PasswordUpdate", "Password Updated Successfully");
					resp.sendRedirect("doctor/update-doctor-details.jsp");
				}else
				{
					session.setAttribute("Error", "Something Wrong On Server Couldn't Update" );
					resp.sendRedirect("doctor/update-doctor-details.jsp");
				}
				
			}else
			{
				session.setAttribute("PasswordNotMatch", "Password Not Match");
				resp.sendRedirect("doctor/update-doctor-details.jsp");
			}
		}else 
		{
			session.setAttribute("PasswordWrong", "Current Password is Wrong");
			resp.sendRedirect("doctor/update-doctor-details.jsp");
		}
		
	}
	


}
