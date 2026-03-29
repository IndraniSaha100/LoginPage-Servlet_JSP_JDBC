package com.indrani;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginServlet extends HttpServlet{
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		String uname= request.getParameter("uname");
		String upass= request.getParameter("upass");
		
		if (uname.equals("indrani") && upass.equals("sam123")){
			
			HttpSession session= request.getSession();
			//******
			session.setAttribute("uname", uname);
			response.sendRedirect("Welcome.jsp");
		}
		else {
			//*****
			request.setAttribute("errorMsg", "Invalid username or password!");
		    
		    RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
		    rd.forward(request, response);
		}
	}
}
