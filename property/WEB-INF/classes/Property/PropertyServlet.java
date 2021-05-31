
package property;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;
import java.util.GregorianCalendar;

import java.sql.SQLException;

import java.sql.*;
import java.io.*;
import java.util.*;

public class CartServlet extends HttpServlet 
{
			
	Connection con=null;
	Statement stmt= null; 
	ResultSet rs= null; 

			public CartServlet() throws SQLException, IOException
			{

				try { 
				Class.forName("org.postgresql.Driver").newInstance(); 
			con = DriverManager.getConnection("jdbc:postgresql://localhost/property","nitin","nitin144"); 
							stmt = con.createStatement(); 
					
					}catch(Exception ce){
						
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

				String cartStepNo= request.getParameter("step_no");

				HttpSession session = request.getSession();

				if(cartStepNo.equals("1")){
						

						if(session.getAttribute("cust_id") == null ){
						alert("Please Login In your account");

						response.sendRedirect("index.jsp");
						
						}else{

						String books[]			= request.getParameterValues("book");		
						String bookName[]	= request.getParameterValues("book_name");		
						String bookQty[]		= request.getParameterValues("qty");
						String bookPrize[]	= request.getParameterValues("book_prize");

						session.setAttribute("books", books);
						session.setAttribute("bookName", bookName);
						session.setAttribute("bookQty", bookQty);
						session.setAttribute("bookPrize", bookPrize);
						
						response.sendRedirect("step_2.jsp");
						
						}
				}
				else if(cartStepNo.equals("2")){
						response.sendRedirect("step_3.jsp");
				}
				else if(cartStepNo.equals("3")){
			
		
					String usrFName		= request.getParameter("Fname");
					String usrLName		= request.getParameter("Lname");
					String usrAdd			= request.getParameter("Address");
					int usrZcode			= Integer.parseInt(request.getParameter("Zcode"));
					String usrCity			= request.getParameter("City");
					String usrCountry	= request.getParameter("Country");
					String usrState		= request.getParameter("State");
					String usrPhone		= request.getParameter("PhNo");
					String usrMob			= request.getParameter("MNo");

					  try 
					  {
							Statement stmt = con.createStatement();

							GregorianCalendar calendar = new GregorianCalendar();
							String currDate = calendar.get(Calendar.YEAR) +"/"+calendar.get(Calendar.MONTH)+"/"+calendar.get(Calendar.DAY_OF_MONTH);  

							int cust_id =  Integer.parseInt((String)session.getAttribute("cust_id"));

							String orderSQLStmt = " INSERT INTO tbl_order(cust_id,order_date) VALUES ( "+cust_id+",'"+ currDate +"')";

							int order_id = stmt.executeUpdate(orderSQLStmt);
							
							ResultSet ordRS = stmt.getGeneratedKeys() ;

							if(ordRS.next()) { 
								order_id			= ordRS.getInt(1); 
							}
							
							String shiSQLStmt = " INSERT INTO tbl_shipping_dtls(cust_id,order_id,cust_first_name,cust_last_name,cust_address,cust_zip_code,cust_city,cust_state,cust_country,cust_phone,cust_mob) VALUES ( "+cust_id+","+ order_id+",'"+ usrFName+"','"+ usrLName+"','"+ usrAdd+"',"+ usrZcode+",'"+ usrCity+"','"+ usrCountry+"','"+ usrState+"','"+ usrPhone+"','"+ usrMob+"')";

							int numRowsAffected = stmt.executeUpdate(shiSQLStmt);
					
							String books[]			= (String[])session.getAttribute("books");		
							String bookQty[]		= (String[])session.getAttribute("bookQty");		
							String bookPrize[]	= (String[])session.getAttribute("bookPrize");		

							for(int i=0;i<books.length;i++){
									
									int bookId				= Integer.parseInt(books[i]);
									int qty					= Integer.parseInt(bookQty[i]);
									int prize					= Integer.parseInt(bookPrize[i]);

								String bookordSQLStmt = " INSERT INTO tbl_order_book(order_id,book_id,cust_id,book_qty,book_tot_price) VALUES ( "+ order_id+","+bookId+","+cust_id+","+ qty+","+prize +")";
								
								int rowsAffected = stmt.executeUpdate(bookordSQLStmt);
							} 

							stmt.close();

					  }
					catch (SQLException sqle) 
					{
								sqle.printStackTrace();
					  }

					response.sendRedirect("step_4.jsp");
				}
		}
}


