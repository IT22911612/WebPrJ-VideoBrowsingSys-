package com.writer;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.writerDBUtil;


@WebServlet("/writerinsertservlet")
public class writerinsertservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		 PrintWriter out = response.getWriter();
		    
		 	String name = request.getParameter("name");
		 	String email = request.getParameter("email");
		 	String phone = request.getParameter("phone");
			String nic = request.getParameter("nic");
			String linkdin = request.getParameter("linkdin");
			String youtube = request.getParameter("youtube");
			String website = request.getParameter("website");
			
			
			
			
		
		boolean isTrue;//catch the return value by the variable
		
		isTrue = writerDBUtil.insertWriter(name,email,phone,nic,linkdin,youtube,website);
		
		if(isTrue == true) {//check the database connection success or not
			 out.println("<script type=\"text/javascript\">");
			    out.println("alert(' Content Writer Added successfully!');");
			    out.println("window.location.href = 'writerinsert.jsp';"); 
			    out.println("</script>");
		} else {
		    // Replace the RequestDispatcher with a JavaScript alert
		   
		    out.println("<script type=\"text/javascript\">");
		    out.println("alert('Unsuccessfull!');");
		    out.println("window.location.href = 'writerinsert.jsp';"); 
		    out.println("</script>");
		}
	}

}
