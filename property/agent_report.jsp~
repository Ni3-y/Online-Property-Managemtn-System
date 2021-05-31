<html>
<head><title>Agent Report</title></head>
<body background="Images/blue.jpg">

<FORM METHOD="POST" ACTION="" name="frm" >

<table  width=100%>
 
 <tr><td>
 
<TABLE border=0  cellSpacing=0 cellPadding=0 width=100% colspan=1>
<tr align=center><td bgcolor="orange" colspan="15"  align="center" ><font size=3 color=darkblue><b>REPORT </b></font></td></tr>
<tr><td><%@ include file="property_label.jsp" %></td></tr>

<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%! Connection con=null; %> 
<%! Statement st= null; %> 
<%! ResultSet rs= null; %> 

<% 
	try { 
		Class.forName("org.postgresql.Driver").newInstance();
     con = DriverManager.getConnection("jdbc:postgresql://localhost/property","nitin","nitin144");
		st = con.createStatement(); 

	}catch(ClassNotFoundException ce){out.println(ce);} 
%>

<center>
<table frame="below" cellSpacing=3 cellPadding=3 width=100% border="1" >

<tr><td colspan="15"  align="center" >&nbsp;</td></tr>

<tr><td bgcolor="orange" colspan="15"  align="center" ><font size=3 color=darkblue><b>Agent   REPORT </b></font></td></tr>

<tr bgcolor="orange">
		<td><b>Agent Id</b></td>
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


			rs = st.executeQuery("SELECT * FROM agent"); 


while(rs.next()) { 

int  agent_id	= rs.getInt(1); 
String agent_user_name	= rs.getString(2);
String agent_password	= rs.getString(3);
String agent_gender	= rs.getString(4); 
String agent_first_name	= rs.getString(5); 
String agent_last_name	= rs.getString(6); 
String agent_address	= rs.getString(7); 
String agent_zip_code	= rs.getString(8); 
String agent_city	= rs.getString(9); 
String agent_state	= rs.getString(10); 
String agent_country	= rs.getString(11); 
String agent_email	= rs.getString(12); 
String agent_mob	= rs.getString(13); 
String agent_regDate	= rs.getString(14); 

%>

<tr bgcolor=pink>
		<td><%=agent_id%></td>
		<td><%=agent_user_name%></td>
		<td><%=agent_password%></td>
		<td><%=agent_gender%></td>
		<td><%=agent_first_name%></td>
		<td><%=agent_last_name%></td>
		<td><%=agent_address%></td>
		<td><%=agent_zip_code%></td>
		<td><%=agent_city%></td>
		<td><%=agent_state%></td>
		<td><%=agent_country%></td>
		<td><%=agent_email%></td>
		<td><%=agent_mob%></td>
		<td><%=agent_regDate%></td>


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
