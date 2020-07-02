package com.spring.crudoperation_usingmongodb.user;

import java.io.Serializable;

public class User implements Serializable {

	private static final long serialVersionUID = 1L;

	private String id, name, address, mobileNumber, emailId, gender, department;
	private String DOB, JoiningDate;
	private String salary;

	public User() {
		super();
	}

	public User(String id, String name, String address, String mobileNumber, String emailId, String gender,
			String department, String DOB, String joiningDate, String salary) {
		super();
		this.id = id;
		this.name = name;
		this.address = address;
		this.mobileNumber = mobileNumber;
		this.emailId = emailId;
		this.gender = gender;
		this.department = department;
		this.DOB = DOB;
		this.JoiningDate = joiningDate;
		this.salary = salary;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getMobileNumber() {
		return mobileNumber;
	}

	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	


	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getSalary() {
		return salary;
	}

	public void setSalary(String salary) {
		this.salary = salary;
	}

	public String getDOB() {
		return DOB;
	}

	public void setDOB(String DOB) {
		this.DOB = DOB;
	}

	public String getJoiningDate() {
		return JoiningDate;
	}

	public void setJoiningDate(String JoiningDate) {
		this.JoiningDate = JoiningDate;
	}

}