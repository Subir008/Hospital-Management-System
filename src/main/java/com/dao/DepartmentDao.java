package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.dto.Department;

public class DepartmentDao 
{
	private Connection connection ;

	public DepartmentDao(Connection connection) {
		super();
		this.connection = connection;
	}
	
	// Method for storing department data
	public boolean saveDepartmentDetails (Department department) throws SQLException
	{
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
		
		if(flag == false)
		{
			flag = true;
		}
		return flag;
	}
	
	
}
