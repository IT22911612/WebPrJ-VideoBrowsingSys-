package com.feedback;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/readfeedbackServlet")
public class readfeedbackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String Email = request.getParameter("email");	
		
		try {
			List<feedback> fdDetails = feedbackDButil.getfeedback(Email);	
			System.out.println(fdDetails + "me details");
   			request.setAttribute("fdDetails", fdDetails);
   			
   			RequestDispatcher dis = request.getRequestDispatcher("feedbackRead.jsp");
   			dis.forward(request, response);
   			System.out.println("read pass kara");
   			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}
}

