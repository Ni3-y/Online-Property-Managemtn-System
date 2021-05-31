<html>
<head><title>Prperty Report</title></head>
<body background="Images/blue.jpg">

<FORM METHOD="POST" ACTION="home.jsp" name="frm" >
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


<tr><td colspan="11"  align="center" >&nbsp;</td></tr>


<tr><td bgcolor="orange" colspan="11"  align="center" ><font size=3 color=darkblue><b>PROPERTY   REPORT </b></font></td></tr>

<tr bgcolor="orange">
		<td ><b>Property_id</b></td>
		<td><b>Property Name</b></td>
		<td><b>Location</b></td>
		<td><b>Price </b></td>
		<td><b>Type</b></td>
		<td><b>Availabel</b></td>
		<td><b>Image</b></td>
		<td><b>Category_no</b></td>
		<td><b>Agent_id</b></td>
		<td><b>Customer_id</b></td>
		
		
</tr>

<%


			rs = st.executeQuery("SELECT * FROM property group by property_id "); 


while(rs.next()) { 

int	property_id	= rs.getInt(1); 
String property_name	= rs.getString(2); 
String property_location= rs.getString(3); 
String  property_price	= rs.getString(4); 
String property_type	= rs.getString(5); 
String is_property_active	= rs.getString(6); 
String property_Image	= rs.getString(7); 
int cat_id   = rs.getInt(8); 
int agent_id	= rs.getInt(9); 
int cust_id   = rs.getInt(10); 
%>

<tr bgcolor=pink>
		<td><%=property_id%></td>
		<td><%=property_name%></td>
		<td><%=property_location%></td>
		<td><%=property_price%></td>
		<td><%=property_type%></td>
		<td><%=is_property_active%></td>
		<td><%=property_Image%></td>
		<td><%=cat_id%></td>
		<td><%=agent_id%></td>
		<td><%=cust_id%></td>		

</tr>

<%
} 
%>	
	
</u>
	
</center>
</table>
	
</td></tr>	
</table>
<%@include file="bottom.jsp" %>  
</FORM>


</body>
</html>
