
package Agent;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;
import javax.servlet.RequestDispatcher;

import java.io.IOException;
import java.io.PrintWriter;

import java.sql.SQLException;

import java.sql.*;
import java.io.*;
import java.util.*;

public class AgentServlet extends HttpServlet 
{

Connection con=null;
Statement st= null; 
ResultSet rs= null; 

public AgentServlet() throws SQLException, IOException
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

	HttpSession session = request.getSession(true);
	
	String userAction = request.getParameter("userAction");
	System.out.println(" userAction"+userAction);		

	if(userAction != null && !userAction.equals(""))
	{
		String userName= request.getParameter("agent_user_name");
		String userPass= request.getParameter("agent_password");

			if(userAction.equals("login"))//agent login
			{
			

			try
			{ 
		rs = st.executeQuery("SELECT * FROM agent where agent_user_name='"+userName+"' and agent_password='"+userPass+"'"); 
									
				if(rs.next()) 
				{							
					int agent_id= rs.getInt(1); 
					session.setAttribute("userAction",userAction);	
					session.setAttribute("agent_id", agent_id);
					response.sendRedirect("/property/agent_account.jsp");
				}
				else
				{
				response.sendRedirect("/property/errorMsg.jsp");
				}
	
			}	
				catch(SQLException exception){ 	} 


			}
		}

	
	
		if(userAction.equals("register")) //agent registration
	{
			
			session.setAttribute("userAction",userAction);	
						
		String strUserName		= request.getParameter("agent_user_name");
		String strPassword		= request.getParameter("agent_password");
		String strGender		= request.getParameter("agent_gender");
		String strFirstName		= request.getParameter("agent_first_name");
		String strLastName		= request.getParameter("agent_last_name");
		String strAddress		= request.getParameter("agent_address");
		int strCode			= Integer.parseInt(request.getParameter("agent_code"));
		String strCity			= request.getParameter("agent_city");
		String strState			= request.getParameter("agent_state_list");
		String strCountry		= request.getParameter("agent_country");
		String strEmail			= request.getParameter("agent_email");
		String strTelephone		= request.getParameter("agent_phone");


							  try 
							{
	
int numRowsAffected = st.executeUpdate(" INSERT INTO agent(agent_user_name,agent_password,agent_gender,agent_first_name,agent_last_name,agent_address, agent_zip_code,agent_city,agent_state,agent_country,agent_email,agent_phone,agent_registration_date) VALUES ('"+strUserName+"','"+ strPassword+"','"+ strGender+"','"+ strFirstName+"','"+ strLastName+"','"+strAddress+"',"+ strCode+",'"+ strCity+"','"+ strState+"','"+ strCountry+"','"+ strEmail+"',"+ strTelephone+",now())");
				System.out.println("Number of rows affected: " + numRowsAffected);
		
				if(numRowsAffected > 0)
				{
					response.sendRedirect("/property/successMsg.jsp");
				}
				else
				{
				response.sendRedirect("/property/agent_form.jsp");
				}
			}
				catch (SQLException sqle) 
				{
				sqle.printStackTrace();
				  }
			
		}

	try{
		if(userAction.equals("addProperty")) //Adding Property
	{			
		
//response.sendRedirect("/property/agent_account.jsp");	
		String name	        = request.getParameter("property_name");
		int cid                 =Integer.parseInt(request.getParameter("Customer_id"));
		String location		= request.getParameter("property_location");
		String type		= request.getParameter("property_type");
		String status		= request.getParameter("is_property_active");
		String 	catname		= request.getParameter("property_category");
		int price		= Integer.parseInt(request.getParameter("property_price"));
		String image		= request.getParameter("property_image");
		String contact            = request.getParameter("property_contact");
		
		System.out.println("\ncat="+catname);
		int agent_Id	= 0;
			  try 
		{
		
		
		rs=st.executeQuery("select cat_id from category where cat_name='"+catname+"'");
		int catid=0;
		System.out.println("\nHello");
		while(rs.next())
		{
			catid=rs.getInt(1);
		}
		
		if(session.getAttribute("agent_id") != null && catid!=0)
		{
		
			agent_Id= Integer.parseInt(""+session.getAttribute("agent_id"));
		}
else
response.sendRedirect("/property/add_property.jsp");
		
		
int numRowsAffected = st.executeUpdate("INSERT INTO property(property_name,property_location,property_type,is_property_active,property_price,property_image,property_contact,agent_id,cat_id,cust_id) VALUES ('"+name+"','"+ location+"','"+type+"','"+ status+"',"+price+",'"+image+"','"+contact+"',"+agent_Id+","+catid+","+cid+")");
				System.out.println("Number of rows affected: " + numRowsAffected);
				if(numRowsAffected > 0)
				{
					response.sendRedirect("/property/agent_account.jsp");
				}
				else
				{
				response.sendRedirect("/property/add_property.jsp");
				}
			}
				catch (SQLException sqle) 
				{
				sqle.printStackTrace();
				  }
			

}
		}
		catch (Exception e) 
				{
				e.printStackTrace();
				  }
		

		
	if(userAction.equals("deleteProperty")) //Delete Property
	{
		int propertyid	=Integer.parseInt(request.getParameter("property_id"));
	try 
	{
	System.out.println("\nhello");

				  
String anSQLStmt = "delete from property where property_id="+propertyid;

				int numRowsAffected = st.executeUpdate(anSQLStmt);

				System.out.println("Number of rows affected: " + numRowsAffected);
				if(numRowsAffected > 0)
				{
					response.sendRedirect("/property/agent_account.jsp");
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

