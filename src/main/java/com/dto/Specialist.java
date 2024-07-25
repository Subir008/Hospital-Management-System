package com.dto;

public class Specialist {
	private int id;

	private String specialist_name;

	public Specialist() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Specialist(int id, String specialist_name) {
		super();
		this.id = id;
		this.specialist_name = specialist_name;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSpecialist_name() {
		return specialist_name;
	}

	public void setSpecialist_name(String specialist_name) {
		this.specialist_name = specialist_name;
	}

}
