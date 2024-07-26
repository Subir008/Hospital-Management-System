package com.adminServlet;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.configuration.Configuration;
import com.dao.DepartmentDao;
import com.dto.Department;

//@MultipartConfig annotation indicates that the servlet will handle multipart/form-data requests i.e, when we take image,or other files from the user.
@MultipartConfig
@WebServlet("/add-department")
public class Add_Department extends HttpServlet
{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		// Take all the written input data from the user
		String department_name = req.getParameter("department_name");
		String flaticon_name = req.getParameter("flaticon_name");
		String heading = req.getParameter("heading");
		String dept_details = req.getParameter("dept_details");
		
		// --------------- Image Upload Code Start ---------------------
				
		// req.getPart(" ") retrieves the uploaded file part.
		Part part = req.getPart("dept_img");
		
		// part.getSubmittedFileName() gets the name of the uploaded file.
		String fileName = part.getSubmittedFileName();
		
		// Get Server Path: String path = getServletContext().getRealPath("") + "folder-name(where the data will be stored)";
		String path = getServletContext().getRealPath("") + "upload_content\\department";
		// System.out.println(path);
		
		// Create Directory if it Doesn’t Exist by invoking File Class of io.File package: File file = new File(path);
		File file = new File(path);
		
		// Write File to Server: part.write(path + File.separator + fileName);
		part.write(path + File.separator +fileName);
		
		// --------------- Image Upload Code End ---------------------

		// Create object of department class and sending the data to the class
		Department department = new Department(department_name, flaticon_name, heading, dept_details, fileName);
				
		// Create object of DepartmentDao Class and pass the db connection
		DepartmentDao departmentDao = new DepartmentDao(Configuration.configure());
		
		boolean flag = false;
		// Store the data to the db
		try {
			flag = departmentDao.saveDepartmentDetails(department);
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		// Start the session
		HttpSession session = req.getSession();

		// If the data come from DepartmentDao class is true then it will enter the if block otherwise it will go to the else block
		if (flag) 
		{
			session.setAttribute("InsertSuccessfull", "Data Inserted Successfully");
			resp.sendRedirect("admin/add-department.jsp");
		}else {
			session.setAttribute("Error", "Something Went Wrong Couldn't Insert The Data");
			resp.sendRedirect("admin/add-department.jsp");			
		}
		
	}
	
}
