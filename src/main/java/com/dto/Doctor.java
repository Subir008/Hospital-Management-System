package com.dto;

public class Doctor
{
	private int doc_id;
	private String full_name ;
	private String dob;
	private String qualification;
	private String specialist;
	private String email;
	private String contact;
	private String password;
	
	
	public Doctor() 
	{
		super();
		// TODO Auto-generated constructor stub
	}


	public Doctor(String full_name, String dob, String qualification, String specialist, String email, String contact,
			String password) 
	{
		super();
		this.full_name = full_name;
		this.dob = dob;
		this.qualification = qualification;
		this.specialist = specialist;
		this.email = email;
		this.contact = contact;
		this.password = password;
	}

	public Doctor(int doc_id, String full_name, String dob, String qualification, String specialist, String email,
			String contact, String password) {
		super();
		this.doc_id = doc_id;
		this.full_name = full_name;
		this.dob = dob;
		this.qualification = qualification;
		this.specialist = specialist;
		this.email = email;
		this.contact = contact;
		this.password = password;
	}


	public int getDoc_id() {
		return doc_id;
	}


	public void setDoc_id(int doc_id) {
		this.doc_id = doc_id;
	}


	public String getFull_name() {
		return full_name;
	}


	public void setFull_name(String full_name) {
		this.full_name = full_name;
	}


	public String getDob() {
		return dob;
	}


	public void setDob(String dob) {
		this.dob = dob;
	}


	public String getQualification() {
		return qualification;
	}


	public void setQualification(String qualification) {
		this.qualification = qualification;
	}


	public String getSpecialist() {
		return specialist;
	}


	public void setSpecialist(String specialist) {
		this.specialist = specialist;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getContact() {
		return contact;
	}


	public void setContact(String contact) {
		this.contact = contact;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
	
	
	
	
}
