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
@WebServlet("/update-department")
public class Update_Department extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// Take all the written input data from the user
		String department_name = req.getParameter("department_name");
		String flaticon_name = req.getParameter("flaticon_name");
		String heading = req.getParameter("heading");
		String dept_details = req.getParameter("dept_details");

		int dept_id = Integer.parseInt(req.getParameter("dept_id"));

		Department department = null;

		// --------------- Image Upload Code Start ---------------------

		// req.getPart(" ") retrieves the uploaded file part.
		Part part = req.getPart("dept_img");

		// part.getSubmittedFileName() gets the name of the uploaded file.
		String fileName = part.getSubmittedFileName();

		// Check if image is added by the user or not with the help of filename
		if (fileName != "") {

			// Get Server Path: String path = getServletContext().getRealPath("") +
			// "folder-name(where the data will be stored)";
			String path = getServletContext().getRealPath("") + "upload_content" + File.separator + "department";
			// System.out.println(path);

			// Create Directory if it Doesn’t Exist by invoking File Class of io.File
			// package: File file = new File(path);
			File file = new File(path);

			// Write File to Server: part.write(path + File.separator + fileName);
			part.write(path + File.separator + fileName);

			// Create object of department class and sending the data to the class
			department = new Department(dept_id, department_name, flaticon_name, heading, dept_details, fileName);

		}
		if (fileName == "") {
			
			// Create object of department class and sending the data to the class
			department = new Department(dept_id, department_name, flaticon_name, heading, dept_details);

		}

		// --------------- Image Upload Code End ---------------------

		// Create object of DepartmentDao Class and pass the db connection
		DepartmentDao departmentDao = new DepartmentDao(Configuration.configure());

		boolean flag = false;
		// Store the data to the db
		try {
			flag = departmentDao.updateDepartment(department);
		} catch (Exception e) {
			e.printStackTrace();
		}

		// Start the session
		HttpSession session = req.getSession();

		// If the data come from DepartmentDao class is true then it will enter the if
		// block otherwise it will go to the else block
		if (flag) {
			session.setAttribute("UpdateSuccessfull", "Data Updated Successfully");
			resp.sendRedirect("admin/department.jsp");
		} else {
			session.setAttribute("Error", "Something Went Wrong Couldn't Insert The Data");
			resp.sendRedirect("admin/department.jsp");
		}

	}

}
