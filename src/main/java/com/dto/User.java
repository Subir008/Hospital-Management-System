package com.dto;

public class User {
	private int id;

	private String name;

	private String password;

	private String email;

	private String contact;

	private String address;

	private String gender;

	public User() {
		super();

	}

	public User(String name, String email, String password, int id) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.password = password;
	}

	// These constructor is used in update user profile
	public User(int id, String name, String email, String contact, String gender, String address) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.contact = contact;
		this.address = address;
		this.gender = gender;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

}
