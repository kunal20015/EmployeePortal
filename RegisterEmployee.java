package com.Servlets;

import java.io.IOException;

import com.Database.Employee;
import com.Database.EmployeeService;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class RegisterEmployee extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		String department = req.getParameter("department");
		String gender = req.getParameter("gender");
		String city = req.getParameter("city");
		Employee employee = new Employee(name, email, password, department, gender, city);
		
		EmployeeService service = new EmployeeService();
		String msg = service.getConnection(employee);
		
		req.setAttribute("message", msg);
		req.getRequestDispatcher("register.jsp").include(req, resp);
		
	}
}
