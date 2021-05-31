<html>
<head><title>Customer Report</title></head>
<body background="Images/blue.jpg">

<FORM METHOD="POST" ACTION="" name="frm" >

<table  width=100%>
<tr align=center><td bgcolor="orange" colspan="15"  align="center" ><font size=3 color=darkblue><b>REPORT </b></font></td></tr>
<tr><td><%@ include file="property_label.jsp" %></td></tr>
 
 

<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%! Connection con=null; %> 
<%! Statement st= null; %> 
<%! ResultSet rs= null; %> 

<% 
	try { 
 Class.forName("org.postgresql.Driver");
   con = DriverManager.getConnection("jdbc:postgresql://localhost/property","nitin","nitin144"); 
		st = con.createStatement(); 

	}catch(ClassNotFoundException ce){out.println(ce);} 
%>

<center>
<table frame="below" cellSpacing=3 cellPadding=3 width=100% border="1" >


<tr><td colspan="15"  align="center" >&nbsp;</td></tr>

<tr><td bgcolor="yellow" colspan="15"  align="center" ><font size=3 color=darkblue><b>CUSTOMER   REPORT </b></font></td></tr>

<tr bgcolor="orange">
		<td><b>Customer Id</b></td>
		<td><b>User Name</b></td>
		<td><b>Password</b></td>
		<td><b>Gender</b></td>
		<td><b>First Name</b></td>
		<td><b>Last Name</b></td>
		<td><b>Cust Address </b></td>
		<td><b>Zip Code</b></td>
		<td><b>City</b></td>
		<td><b>State</b></td>
		<td><b>Country</b></td>
		<td><b>Email</b></td>
		<td><b>Mobile No.</b></td>
		<td><b>Reg. Date</b></td>
	
</tr>

<%


			rs = st.executeQuery("SELECT * FROM customer"); 


while(rs.next()) { 

int  cust_id	= rs.getInt(1); 
String cust_user_name	= rs.getString(2);
String cust_password	= rs.getString(3);
String cust_gender	= rs.getString(4); 
String cust_first_name	= rs.getString(5); 
String cust_last_name	= rs.getString(6); 
String cust_address	= rs.getString(7); 
String cust_zip_code	= rs.getString(8); 
String cust_city	= rs.getString(9); 
String cust_state	= rs.getString(10); 
String cust_country	= rs.getString(11); 
String cust_email	= rs.getString(12); 
String cust_mob		= rs.getString(13); 
String cust_regDate	= rs.getString(14); 

%>

<tr bgcolor=pink>	
		<td><%=cust_id%></td>
		<td><%=cust_user_name%></td>
		<td><%=cust_password%></td>
		<td><%=cust_gender%></td>
		<td><%=cust_first_name%></td>
		<td><%=cust_last_name%></td>
		<td><%=cust_address%></td>
		<td><%=cust_zip_code%></td>
		<td><%=cust_city%></td>
		<td><%=cust_state%></td>
		<td><%=cust_country%></td>
		<td><%=cust_email%></td>
		<td><%=cust_mob%></td>
		<td><%=cust_regDate%></td>


</tr>

<%
} 
%>	
	
</u>
</table>
	
<center>
	
</td></tr>	
</table>
<%@include file="bottom.jsp" %> 
</FORM>


</body>
</html>
