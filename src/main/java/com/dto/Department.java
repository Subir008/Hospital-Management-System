package com.dto;

public class Department 
{
	private int dept_id;
	
	private String department_name;
	
	private String flaticon_name;
	
	private String heading;
	
	private String dept_details;
	
	private String dept_img;
	
	public Department() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Department(String department_name, String flaticon_name, String heading, String dept_details,
			String dept_img) {
		super();
		this.department_name = department_name;
		this.flaticon_name = flaticon_name;
		this.heading = heading;
		this.dept_details = dept_details;
		this.dept_img = dept_img;
	}

	public int getDept_id() {
		return dept_id;
	}

	public void setDept_id(int dept_id) {
		this.dept_id = dept_id;
	}

	public String getDepartment_name() {
		return department_name;
	}

	public void setDepartment_name(String department_name) {
		this.department_name = department_name;
	}

	public String getFlaticon_name() {
		return flaticon_name;
	}

	public void setFlaticon_name(String flaticon_name) {
		this.flaticon_name = flaticon_name;
	}

	public String getHeading() {
		return heading;
	}

	public void setHeading(String heading) {
		this.heading = heading;
	}

	public String getDept_details() {
		return dept_details;
	}

	public void setDept_details(String dept_details) {
		this.dept_details = dept_details;
	}

	public String getDept_img() {
		return dept_img;
	}

	public void setDept_img(String dept_img) {
		this.dept_img = dept_img;
	}
	
	
}
