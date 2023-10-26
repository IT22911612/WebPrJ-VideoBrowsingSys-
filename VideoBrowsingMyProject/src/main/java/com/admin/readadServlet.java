package com.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/readadServlet")
public class readadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Email = request.getParameter("email");	
		
		try {
			List<Advertiser> adDetails = adminDButil.getadvertiser(Email);	
			System.out.println(adDetails + "me details");
   			request.setAttribute("adDetails", adDetails);
   			
   			RequestDispatcher dis = request.getRequestDispatcher("adRead.jsp");
   			dis.forward(request, response);
   			System.out.println("read pass kara");
   			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}
}


