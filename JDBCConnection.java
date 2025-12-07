package com.Database;

import java.sql.Connection;
import java.sql.DriverManager;

public class JDBCConnection {
	
	private static final String url = "jdbc:mysql://localhost:3306/employeeportal";
	private static final String username = "root";
	private static final String password = "root";
	
	public static Connection getConnection() {
		
		Connection con = null; 
		try {
			
		Class.forName("com.mysql.cj.jdbc.Driver");
		con = DriverManager.getConnection(url, username, password);
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return con; 
	}
}
