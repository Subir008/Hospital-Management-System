package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.dto.Specialist;

public class SpecialistDao
{
	private Connection connection;
	
	public SpecialistDao (Connection connection)
	{
		super();
		this.connection = connection;
	}
	
	public boolean addSpecialist(Specialist specialist) throws SQLException
	{
		boolean flag = false;
		
		String sql = "INSERT INTO specialist_master specialist_name = ?";
		
		PreparedStatement ps = connection.prepareStatement(sql);
		
		ps.setString(1, specialist.getSpecialist_name());
		
		flag = ps.execute();
		
		if(flag == false)
		{
			flag = true;
		}
		
		return flag;
	}
}
