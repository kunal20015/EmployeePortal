package com.Servlets;

import java.io.IOException;
import java.util.ArrayList;

import com.Database.Employee;
import com.Database.EmployeeService;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class GetAllEmployess extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		EmployeeService service = new EmployeeService();
		ArrayList<Employee> emp = service.getAllemployee();
		
		if(emp.isEmpty()) {
			req.setAttribute("msg", "Employees not found in Database");
		}else {
			req.setAttribute("emp", emp);
			req.getRequestDispatcher("employee.jsp").forward(req, resp);
		}
	}
}
