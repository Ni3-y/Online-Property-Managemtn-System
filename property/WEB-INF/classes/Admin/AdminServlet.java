
package Admin;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;
import javax.servlet.RequestDispatcher;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;
import java.util.GregorianCalendar;

import java.sql.SQLException;

import java.sql.*;
import java.io.*;
import java.util.*;

public class AdminServlet extends HttpServlet 
{

Connection con=null;
Statement st= null; 
ResultSet rs= null; 

public AdminServlet() throws SQLException,IOException
{

		try { 
			 Class.forName("org.postgresql.Driver").newInstance();
     con = DriverManager.getConnection("jdbc:postgresql://localhost/property","nitin","nitin144");
			st = con.createStatement(); 
	
		}
		catch(Exception ce)
		{
		System.out.println(ce);
		} 

}
public void init() throws ServletException
{
	
}

protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
{
doPost(req, res);
}
public void destroy()
{
System.out.println("destroy() executed");
}


protected void doPost (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
{




	String userAction   = request.getParameter("userAction");

	System.out.println(" userAction"+userAction);		

	if(userAction != null && !userAction.equals(""))
	{

		if(userAction.equals("login"))
		{

			String userName  = request.getParameter("userName");
			String userPass   = request.getParameter("password");

			try
			{ 
PreparedStatement ps=con.prepareStatement("SELECT * FROM admin where admin_user_name=? and admin_password=?");
ps.setString(1,userName);
ps.setString(2,userPass);
rs = ps.executeQuery(); 

			if(rs.next()) 
			{ 
				int admin_id= rs.getInt(1); 
		
				HttpSession session = request.getSession();
	
				session.setAttribute("admin_id", admin_id);
				
				response.sendRedirect("/property/property_report.jsp");

			}
		
			else
			{

			response.sendRedirect("/property/errorMsg.jsp");
			}

			}
			catch(SQLException exception){ 	} 


		}

	}

	if(userAction.equals("updateProperty")) //Updating Agent Property
	{
		
	
		
	
		int propertyid	=Integer.parseInt(request.getParameter("property_id"));
		
		int price	=Integer.parseInt( request.getParameter("property_price"));
		
		
							  try 
							{
	System.out.println("\nhello");

				  

				int numRowsAffected = st.executeUpdate("update property set property_price="+price+" where property_id="+propertyid);

				System.out.println("Number of rows affected: " + numRowsAffected);
				if(numRowsAffected > 0)
				{
					response.sendRedirect("/property/property_report.jsp");
				}
				else
				{
				response.sendRedirect("/property/errorMsg.jsp");
				}
			}
				catch (SQLException sqle) 
				{
				sqle.printStackTrace();
				  }
			
		}
	
	
	if(userAction.equals("updateCustProperty")) //Updating Customer Property
	{
		
	
		int propertyid	=Integer.parseInt(request.getParameter("property_id"));
		
		int custid	= Integer.parseInt(request.getParameter("property_cust_id"));

							  try 
							{



				int numRowsAffected = st.executeUpdate("update property set cust_id="+custid+" where property_id="+propertyid+"");
				  
				System.out.println("Number of rows affected: " + numRowsAffected);
				if(numRowsAffected > 0)
				{
					response.sendRedirect("/property/property_report.jsp");
						}
				else
				{
				response.sendRedirect("/property/errorMsg.jsp");
				}
	}
				catch (SQLException sqle) 
				{
				sqle.printStackTrace();
				  }
			
		}
		
		

}


}


