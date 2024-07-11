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
import com.dao.DoctorDao;

@WebServlet("/delete-doctor-details")
public class Delete_Doctor extends HttpServlet
{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		// Take the input from the user 
		int id = Integer.parseInt(req.getParameter("id"));
	
		DoctorDao doctorDao = new DoctorDao(Configuration.configure());
		
		boolean flag = false;
		// Sending the id value to deleteDoctor method to perform delete operation
		/*
		 * try { flag = ; } catch (SQLException e) { // TODO Auto-generated catch block
		 * e.printStackTrace(); }
		 */
		
		//Start the session
		HttpSession session = req.getSession();
		
		// If the data come from DoctorDao class is true then it will enter the if block otherwise it will go to the else block
		try {
			if (doctorDao.deleteDoctor(id))
			{
				session.setAttribute("DeleteSuccess", "Dotor Deleted Successfully");
				resp.sendRedirect("admin/doctor.jsp");
			}else {
				session.setAttribute("Failed", "Something Went Wrong Couldn't Delete");
				resp.sendRedirect("admin/doctor.jsp");
				
			}
		} catch (SQLException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		
	
	}
	
	
}
