package com.Servlets;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class RegisterServlet extends HttpServlet{

	@Override
	protected void service(HttpServletRequest rep, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.sendRedirect("register.jsp");
	}
}
