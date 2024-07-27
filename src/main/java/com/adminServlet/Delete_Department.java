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
import com.dao.DepartmentDao;
import com.dao.DoctorDao;

@WebServlet("/delete-department-details")
public class Delete_Department extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// Take the input from the user
		int id = Integer.parseInt(req.getParameter("id"));
		System.out.println(id);

		DepartmentDao departmentDao = new DepartmentDao(Configuration.configure());

		boolean flag = false;
		
		try {
			flag = departmentDao.deleteDepartment(id);
		}catch (Exception e) {
			e.printStackTrace();
		}

		// Start the session
		HttpSession session = req.getSession();

		// If the data come from DepartmentDao class is true then it will enter the if block
		// otherwise it will go to the else block
		try {
			if (flag) {
				session.setAttribute("DeleteSuccess", "Department Deleted Successfully");
				resp.sendRedirect("admin/department.jsp");
			} else {
				session.setAttribute("Failed", "Something Went Wrong Couldn't Delete");
				resp.sendRedirect("admin/department.jsp");

			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
