package com.springmvc_validation;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.Range;
import org.springframework.stereotype.Component;

@Component
public class Employee {
	
	@Pattern(regexp = "^[a-zA-Z]{9}", message = "length must be 12 ")

	private String userName;

	@Pattern(regexp = "^[a-zA-Z0-9!@.]{8}", message = "length must be 5 ")

	private String password;

	@Range(min = 1, max = 100, message = "must be equal or greater than 1")
	private Integer age;
	
	@Size(min = 1, max = 300, message = "required")
	private String address;
	

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

}
