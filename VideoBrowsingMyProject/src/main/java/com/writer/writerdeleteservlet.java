package com.writer;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import model.writerDBUtil;


/**
 * Servlet implementation class writerdeleteservlet
 */
@WebServlet("/writerdeleteservlet")
public class writerdeleteservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String writerid = request.getParameter("writerid");
		boolean isTrue;
		
		isTrue = writerDBUtil.deleteWriter(writerid);//catch the return value of istrue variable in deleteWriter method in DBUtil class
		
		if (isTrue == true) {
			 request.getSession().invalidate(); 
			 
			// Display a JavaScript message
			    response.setContentType("text/html");
			    PrintWriter out = response.getWriter();
			    out.println("<html><body>");
			    out.println("<script type='text/javascript'>");
			    out.println("alert('Writer Profile deleted. Please add new Content Writer.');");
			    out.println("window.location.href='writerinsert.jsp';");
			    out.println("</script>");
			    out.println("</body></html>");
		}
		else {
			
			List<writer> writerDetails = writerDBUtil.getWriterDetails(writerid);
			request.setAttribute("writerDetails", writerDetails);
			
			// Display a JavaScript error message
		    response.setContentType("text/html");
		    PrintWriter out = response.getWriter();
		    out.println("<html><body>");
		    out.println("<script type='text/javascript'>");
		    out.println("alert('Cannot delete .');");
		    out.println("window.location.href='writerdetailview.jsp';");
		    out.println("</script>");
		    out.println("</body></html>");
		}
	}

}
