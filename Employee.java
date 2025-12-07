package com.Database;

public class Employee {
	
	@Override
	public String toString() {
		return "Employee [name=" + name + ", email=" + email + ", password=" + password + ", department=" + department
				+ ", gender=" + gender + ", city=" + city + "]";
	}

	private String name;
	private String email;
	private String password;
	private String department;
	private String gender;
	private String city;
	
	
	public Employee(String name, String email, String password, String department, String gender, String city) {
		super();
		this.name = name;
		this.email = email;
		this.password = password;
		this.department = department;
		this.gender = gender;
		this.city = city;
	}
	
	public Employee(String email, String password) {
		this.email = email;
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}
	
	
	
}
