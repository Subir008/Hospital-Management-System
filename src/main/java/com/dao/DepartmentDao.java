package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dto.Department;

public class DepartmentDao {
	private Connection connection;

	public DepartmentDao(Connection connection) {
		super();
		this.connection = connection;
	}

	// Method for storing department data
	public boolean saveDepartmentDetails(Department department) throws SQLException {
		boolean flag = false;

		String sql = "INSERT INTO department_master (dept_id,department_name,flaticon_name,heading,dept_details,dept_img) VALUES (?,?,?,?,?,?)";

		PreparedStatement ps = connection.prepareStatement(sql);
		ps.setInt(1, department.getDept_id());
		ps.setString(2, department.getDepartment_name());
		ps.setString(3, department.getFlaticon_name());
		ps.setString(4, department.getHeading());
		ps.setString(5, department.getDept_details());
		ps.setString(6, department.getDept_img());

		flag = ps.execute();

		if (flag == false) {
			flag = true;
		}
		return flag;
	}

	// Method for fetching all departments data
	public List<Department> fetchAllDepartment() throws SQLException {

		List<Department> list = new ArrayList<Department>();
		Department department = null;

		String sql = "SELECT * FROM	department_master ";

		PreparedStatement ps = connection.prepareStatement(sql);

		ResultSet res = ps.executeQuery();

		while (res.next()) {
			department = new Department();

			department.setDept_id(res.getInt(1));
			department.setDepartment_name(res.getString(2));
			department.setFlaticon_name(res.getString(3));
			department.setHeading(res.getString(4));
			department.setDept_details(res.getString(5));
			department.setDept_img(res.getString(6));

			list.add(department);

		}

		return list;
	}

	// Method for fetching departments data by Id
	public Department fetchDepartmentById(int id) throws SQLException {
		Department department = null;

		String sql = "SELECT * FROM	department_master WHERE dept_id = ?";

		PreparedStatement ps = connection.prepareStatement(sql);
		ps.setInt(1, id);

		ResultSet res = ps.executeQuery();

		while (res.next()) {
			department = new Department();

			department.setDept_id(res.getInt(1));
			department.setDepartment_name(res.getString(2));
			department.setFlaticon_name(res.getString(3));
			department.setHeading(res.getString(4));
			department.setDept_details(res.getString(5));
			department.setDept_img(res.getString(6));

		}

		return department;
	}

	// Method for getting total number of data present in db
	public int countDepartment() throws SQLException {
		int count = 0;

		String sql = "SELECT * FROM department_master";

		PreparedStatement ps = connection.prepareStatement(sql);

		ResultSet rs = ps.executeQuery();

		while (rs.next()) {
			count++;
		}

		return count;
	}

	// Method for update departments data
	public boolean updateDepartment(Department department) throws SQLException {
		boolean flag = false;

		if (department.getDept_img() == null) {
			String sql = "UPDATE department_master SET department_name = ? , flaticon_name = ? , heading = ?, dept_details = ? WHERE dept_id = ?";

			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setString(1, department.getDepartment_name());
			ps.setString(2, department.getFlaticon_name());
			ps.setString(3, department.getHeading());
			ps.setString(4, department.getDept_details());
			ps.setInt(5, department.getDept_id());

			int i = ps.executeUpdate();

			if (i == 1) {
				flag = true;
			}
		} else {

			String sql = "UPDATE department_master SET department_name = ? , flaticon_name = ? , heading = ?, dept_details = ? , dept_img = ? WHERE dept_id = ?";

			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setString(1, department.getDepartment_name());
			ps.setString(2, department.getFlaticon_name());
			ps.setString(3, department.getHeading());
			ps.setString(4, department.getDept_details());
			ps.setString(5, department.getDept_img());
			ps.setInt(6, department.getDept_id());

			int i = ps.executeUpdate();

			if (i == 1) {
				flag = true;
			}
		}
		return flag;
	}

	// Method for Delete Department
	public boolean deleteDepartment(int id) throws SQLException {
		boolean flag = false;

		String sql = "DELETE FROM department_master WHERE dept_id = ?";

		PreparedStatement ps = connection.prepareStatement(sql);
		ps.setInt(1, id);

		int i = ps.executeUpdate();

		if (i == 1) {
			flag = true;
		}

		return flag;

	}

}
