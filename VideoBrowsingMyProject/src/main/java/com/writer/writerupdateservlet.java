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
 * Servlet implementation class writerupdateservlet
 */
@WebServlet("/writerupdateservlet")
public class writerupdateservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 response.setContentType("text/html");
		 PrintWriter out = response.getWriter();
		//save the details
		 String writerid = request.getParameter("writerid");
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String phone = request.getParameter("phone");
			String nic = request.getParameter("nic");
			String linkdin = request.getParameter("linkdin");
			String youtube = request.getParameter("youtube");
			String website = request.getParameter("website");
		
		boolean isTrue;
		
		isTrue = writerDBUtil.updateWriter(writerid,name,email,phone,nic,linkdin,youtube,website);
		
		 if (isTrue) {
	            List<writer> writerDetails = writerDBUtil.getWriterDetails(writerid);
	            request.setAttribute("writerDetails", writerDetails);
	            // JavaScript message for success
	            out.println("<script>alert('Update successful!');</script>");
	            // Include the JSP page with the message
	            RequestDispatcher dis = request.getRequestDispatcher("writerdetailview.jsp");
	            dis.include(request, response);
	        } else {
	        	List<writer> writerDetails = writerDBUtil.getWriterDetails(writerid);
	            request.setAttribute("writerDetails", writerDetails);
	            // JavaScript message for failure
	            out.println("<script>alert('Update unsuccessful. Please try again.');</script>");
	            // Forward to userprofile.jsp for an unsuccessful update
	            RequestDispatcher dis = request.getRequestDispatcher("writerdetailview.jsp");
	            dis.forward(request, response);
	        }
	}

}
