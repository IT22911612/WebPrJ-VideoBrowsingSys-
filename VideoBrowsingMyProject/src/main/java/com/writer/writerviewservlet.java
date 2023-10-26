package com.writer;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import model.writerDBUtil;


/**
 * Servlet implementation class writerviewservlet
 */
@WebServlet("/writerviewservlet")
public class writerviewservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//if login unsuccess, show javascript error and redirect to the login page
				PrintWriter out = response.getWriter();
				response.setContentType("text/html");
				
				String nic = request.getParameter("nic");//catch the event type
				
				boolean isTrue;
				
				isTrue =writerDBUtil.validate(nic);
				
				if(isTrue == true) {
					
					 List<writer> writerDetails = writerDBUtil.getWriterDetails2(nic);
				     request.setAttribute("writerDetails", writerDetails);
					
					//navigate to another page
					RequestDispatcher dis = request.getRequestDispatcher("writerdetailview.jsp");
					dis.forward(request, response);
				}
				else
				{
					out.println("<script type='text/javascript'>");
					out.print("alert('Content Writer not found');");
					out.println("location = 'writersearch.jsp'");
					out.println("</script>");
				}
	}

}
