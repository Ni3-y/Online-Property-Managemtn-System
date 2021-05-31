import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;


public class a extends HttpServlet
{


	public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException
	{
	
	response.setContentType("Text/html");
	PrintWriter out=response.getWriter();
	System.out.println("<html><body>");
	
	String name=request.getParameter("name");
	out.println("\n Hello "+name);
	System.out.println("</body></html>");
	out.close();
	
	}
	

}
