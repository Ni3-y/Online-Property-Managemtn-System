
package Customer;

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

public class CustomerServlet extends HttpServlet 
{

Connection con=null;
Statement st= null; 
ResultSet rs= null; 

public CustomerServlet() throws SQLException, IOException
{

	try { 
				Class.forName("org.postgresql.Driver").newInstance(); 
				con = DriverManager.getConnection("jdbc:postgresql://localhost/property","nitin", "nitin144"); 
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


	HttpSession session = request.getSession(true);

	String userAction = request.getParameter("userAction");
	
	System.out.println(" userAction"+userAction);		

	if(userAction != null && !userAction.equals(""))
	{

			if(userAction.equals("login"))//customer login
			{
			
					String userName= request.getParameter("cust_user_name");
					String userPass= request.getParameter("cust_password");

					try
			{ 
		rs = st.executeQuery("SELECT * FROM customer where cust_user_name='"+userName+"' and cust_password='"+userPass+"'"); 
									
				if(rs.next()) 
				{							
					int cust_id= rs.getInt(1); 
					
					session.setAttribute("cust_id", cust_id);
					response.sendRedirect("/property/cust_account.jsp");
				}
				else
				{
				response.sendRedirect("/property/index.jsp");
				}
	
			}	
				catch(SQLException exception){ 	} 

			}
			
 if(userAction.equals("register")) //customer registration
	{
	try{
			
			session.setAttribute("userAction",userAction);	
		
		String strUserName		= request.getParameter("cust_user_name");
		String strPassword		= request.getParameter("cust_password");
		String strGender		= request.getParameter("cust_gender");
		String strFirstName		= request.getParameter("cust_first_name");
		String strLastName		= request.getParameter("cust_last_name");
		String strAddress		= request.getParameter("cust_address");
		int strCode			= Integer.parseInt(request.getParameter("cust_code"));
		String strCity			= request.getParameter("cust_city");
		String strState			= request.getParameter("cust_state_list");
		String strCountry		= request.getParameter("cust_country");
		String strEmail			= request.getParameter("cust_email");
		String strTelephone		= request.getParameter("cust_phone");
							
		
				int numRowsAffected = st.executeUpdate(" INSERT INTO customer(cust_user_name,cust_password,cust_gender,cust_first_name,cust_last_name,cust_address, cust_zip_code,cust_city,cust_state,cust_country,cust_email,cust_phone,cust_registration_date) VALUES ('"+strUserName+"','"+ strPassword+"','"+ strGender+"','"+ strFirstName+"','"+ strLastName+"','"+strAddress+"',"+ strCode+",'"+ strCity+"','"+ strState+"','"+ strCountry+"','"+ strEmail+"','"+ strTelephone+"',now())");
				System.out.println("Number of rows affected: " + numRowsAffected);
				if(numRowsAffected > 0)
				{
					response.sendRedirect("/property/successMsg.jsp");
				}
				else
				{
				response.sendRedirect("/property/cust_form.jsp");	
				}
			}
                catch (Exception e) 
				{
				
				  }			
			}
		}
	
	}
}
