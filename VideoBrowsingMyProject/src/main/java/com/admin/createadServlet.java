package com.admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/createadServlet")
public class createadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.print("dopost eke ekat awa");
		String companyName = request.getParameter("companyName");
		String contactPerson = request.getParameter("contactPerson");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String messege = request.getParameter("messege");    
	
		boolean isTrue;
	
		isTrue = adminDButil.createad( companyName, contactPerson, email, phone, messege);	   	
	
		if(isTrue == true) { 
		
		System.out.print("data insert una");
		
		RequestDispatcher dis = request.getRequestDispatcher("view.jsp");
		dis.forward(request, response);

		
		} else {
			System.out.print("data giy nh");
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}

	}
}
