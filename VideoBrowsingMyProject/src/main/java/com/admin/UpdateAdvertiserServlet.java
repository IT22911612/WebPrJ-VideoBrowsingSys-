package com.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/UpdateAdvertiserServlet")
public class UpdateAdvertiserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String companyName = request.getParameter("companyName");
		String contactPerson = request.getParameter("contactPerson");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String messege = request.getParameter("messege");
		
		
		boolean isTrue;
		
		isTrue = adminDButil.updateadvertiser(companyName, contactPerson, email, phone, messege);
		
		if(isTrue == true) {
			
			List <Advertiser> adDetails = adminDButil.getadvertiser(email);
			request.setAttribute("adDetails", adDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("adRead.jsp");
			dis.forward(request, response);
		}
		else{
			List <Advertiser> adDetails = adminDButil.getadvertiser(email);
			request.setAttribute("adDetails", adDetails);
			
			
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
				
		}
	}

}