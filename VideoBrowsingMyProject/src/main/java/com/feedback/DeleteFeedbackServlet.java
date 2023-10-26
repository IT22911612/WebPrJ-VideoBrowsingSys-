package com.feedback;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteFeedbackServlet")
public class DeleteFeedbackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		boolean isTrue;
		
		isTrue = feedbackDButil.deleteFeedback(email);
		
		if(isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("feedback.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			List <feedback> fdDetails = feedbackDButil.getfeedback(email);
			request.setAttribute("fdDetails", fdDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("unsuccess.jsp");
			dispatcher.forward(request, response);
		}
		
	}

}
