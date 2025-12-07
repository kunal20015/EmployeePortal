package com.Database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class EmployeeDao {
	
	Connection con = JDBCConnection.getConnection();
	
	public String getConnection(Employee employee) {
		
		try {
		PreparedStatement pst = con.prepareStatement("insert into employeedetails values(?,?,?,?,?,?)");
		pst.setString(1, employee.getName());
		pst.setString(2, employee.getEmail());
		pst.setString(3, employee.getPassword());
		pst.setString(4, employee.getDepartment());
		pst.setString(5, employee.getGender());
		pst.setString(6, employee.getCity());
		
		pst.execute();
		
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
		
		return "Employee Registration Successfull";
	}
	
	
	
	public Employee loginEmployee(String email, String password) {
		
		Employee employee = null;
		
		try {
		PreparedStatement pst =  con.prepareStatement("select * from employeedetails where email=? and password=?");
		pst.setString(1, email);
		pst.setString(2, password);
		
		ResultSet rs = pst.executeQuery();
		while(rs.next()) {
			String takenemail = rs.getString("email");
			String takenpassword = rs.getString("password");
			
			employee = new Employee(takenemail, takenpassword);
			
		}
		
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
		
		return employee;
	}
	
	
	public ArrayList<Employee> getAllemployees() {
		ArrayList<Employee> employees = new ArrayList<Employee>();
		
		try {
		PreparedStatement pst =  con.prepareStatement("select * from employeedetails");
		
		ResultSet rs = pst.executeQuery();
		
		while(rs.next()) {
			String name = rs.getString("name");
			String email = rs.getString("email");
			String password = rs.getString("password");
			String department = rs.getString("department");
			String gender = rs.getString("gender");
			String city = rs.getString("city");
				
			Employee employee = new Employee(name, email, password, department, gender, city);
			employees.add(employee);
		}
		
		
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return employees;
	}
	
	
}
