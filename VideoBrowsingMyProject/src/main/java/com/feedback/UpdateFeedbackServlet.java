package com.feedback;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateFeedbackServlet")
public class UpdateFeedbackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String feedback = request.getParameter("feedback");
		
		
		boolean isTrue;
		
		isTrue = feedbackDButil.updatefeedback(name, email, feedback);
		
		if(isTrue == true) {
			
			List <feedback> fdDetails = feedbackDButil.getfeedback(email);
			request.setAttribute("fdDetails", fdDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("feedbackRead.jsp");
			dis.forward(request, response);
		}
		else{
			List <feedback> fdDetails = feedbackDButil.getfeedback(email);
			request.setAttribute("fdDetails", fdDetails);
			
			
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
				
		}
	}

}
