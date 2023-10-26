package com.feedback;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/createfeedbackServlet")
public class createfeedbackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.print("dopost eke ekat awa");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String feedback = request.getParameter("feedback");   
	
		boolean isTrue;
	
		isTrue = feedbackDButil.createfeedback(name, email, feedback);	   	
	
		if(isTrue == true) { 
		
		System.out.print("data insert una");
		
		RequestDispatcher dis = request.getRequestDispatcher("fdview.jsp");
		dis.forward(request, response);

		
		} else {
			System.out.print("data giy nh");
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}

	}
}