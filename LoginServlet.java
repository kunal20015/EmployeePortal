						package com.Servlets;

import java.io.IOException;

import com.Database.Employee;
import com.Database.EmployeeService;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class LoginServlet extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		

		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		
		EmployeeService service = new EmployeeService();
		Employee emp = service.takenEmployee(email, password);
		
		if(emp != null) {
			req.setAttribute("email", emp.getEmail());
			req.getRequestDispatcher("profile.jsp").forward(req, resp);
		}
		else {
			req.setAttribute("msg", "Invalid Credentials");
			req.getRequestDispatcher("login.jsp").include(req, resp);
		}
		
	}
}
