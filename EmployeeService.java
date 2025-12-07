package com.Database;

import java.util.ArrayList;

public class EmployeeService {
	
	EmployeeDao dao = new EmployeeDao();
	
	public String getConnection(Employee employee) {
		
		String msg = dao.getConnection(employee);
		return  msg;
	}
	
	
	public Employee takenEmployee(String email, String password) {
		Employee loginEmployee = dao.loginEmployee(email, password);
		
		return loginEmployee;
	}
	
	
	
	public ArrayList<Employee> getAllemployee() {
		ArrayList<Employee> emp = dao.getAllemployees();
		return emp;
	}
	
	
}
