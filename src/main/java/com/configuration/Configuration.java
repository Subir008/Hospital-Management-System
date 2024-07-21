package com.configuration;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Configuration 
{
  public static Connection configure() 
  {
	  
	  Connection connection = null ;
	  try {
	  
		  Class.forName("com.mysql.cj.jdbc.Driver");
		  
		   connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_management_system", "root","12345");
		  
	  }catch (Exception e)
	  {
		  e.printStackTrace();
	  }
	  
	  return connection;
  }
}
