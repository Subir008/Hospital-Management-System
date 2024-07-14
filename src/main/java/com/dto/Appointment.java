package com.dto;

import java.sql.Connection;

public class Appointment 
{
	
	private int appointment_id;
	private int user_id;
	private String full_name ;
	private String gender ;
	private String age;
	private String email;
	private String contact;
	private String appointment_date;
	private String disease;
	private int doc_id;
	private String address;
	private String status;
	
	
	
	public Appointment() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Appointment(int user_id, int doc_id, String full_name, String gender, String age, String email, String contact,
			String appointment_date, String disease, String address, String status) {
		super();
		this.user_id = user_id;
		this.full_name = full_name;
		this.gender = gender;
		this.age = age;
		this.email = email;
		this.contact = contact;
		this.appointment_date = appointment_date;
		this.disease = disease;
		this.doc_id = doc_id;
		this.address = address;
		this.status = status;
	}
	public int getAppointment_id() {
		return appointment_id;
	}
	public void setAppointment_id(int appointment_id) {
		this.appointment_id = appointment_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getFull_name() {
		return full_name;
	}
	public void setFull_name(String full_name) {
		this.full_name = full_name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
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
	public String getAppointment_date() {
		return appointment_date;
	}
	public void setAppointment_date(String appointment_date) {
		this.appointment_date = appointment_date;
	}
	public String getDisease() {
		return disease;
	}
	public void setDisease(String disease) {
		this.disease = disease;
	}
	public int getDoc_id() {
		return doc_id;
	}
	public void setDoc_id(int doc_id) {
		this.doc_id = doc_id;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
	
	
}
