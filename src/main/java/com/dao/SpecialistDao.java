package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dto.Specialist;

public class SpecialistDao
{
private Connection connection;
	
	// Getting and setting the connection
	public SpecialistDao (Connection connection)
	{
		super();
		this.connection = connection;
	}
	
	// Add Specialist  to the db
	public boolean addSpecialist(Specialist specialist) throws SQLException
	{
		boolean flag = false;
		
		String sql = "INSERT INTO specialist_master (specialist_name) values (?)";
		
		PreparedStatement ps = connection.prepareStatement(sql);
		
		ps.setString(1, specialist.getSpecialist_name());
		
		flag = ps.execute();
		
		if(flag == false)
		{
			flag = true;
		}
		
		return flag;
	}
	
	// Fetching all the speialist data
	// As multiple data is present so storing them in the form of Specialist list array.
	public List<Specialist> getSpecialist () throws SQLException
	{
		List<Specialist> list = new ArrayList<Specialist>();
		
		Specialist specialist = null;
		
		String sql = "SELECT * FROM specialist_master";
		
		PreparedStatement ps = connection.prepareStatement(sql);
		
		ResultSet rs = ps.executeQuery();
		
		while(rs.next())
		{
			specialist = new Specialist() ;
			
			specialist.setId(rs.getInt(1));
			specialist.setSpecialist_name(rs.getString(2));
			
			list.add(specialist);
			
		}
		
		return list;
	}
	
}

