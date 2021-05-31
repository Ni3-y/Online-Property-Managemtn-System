<html>
<head><title>Cust Acount</title></head>
<body background="Images/blue.jpg">

<FORM METHOD="POST" ACTION="" name="frm" >

 <table  width=100% colspan=0>
<tr><td><%@include file="top.jsp" %></td></tr>

<tr><td> 
<TABLE border=0  cellSpacing=0 cellPadding=0 width=100%>
<tr><td colspan="11"  align="center" >&nbsp;</td></tr>

<tr bgcolor="lightgreen" align=center><td width=50%>&nbsp</td>

	</font></td>
	<td><font color="001122"><b>|<a href="index.jsp" > Logout </a> </font>&nbsp|</b></td>
	
</tr>
</TABLE ><br>


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

	int cust_Id= 0;
	
			
		if(session.getAttribute("cust_id")!= null)
		{
		
			cust_Id	= Integer.parseInt(""+session.getAttribute("cust_id"));
		}

	
rs = st.executeQuery("SELECT cust_id, cust_first_name,cust_last_name,cust_address FROM customer where cust_id="+cust_Id); 
	String cfname,clname,address;
int cid;
	
	while(rs.next())
	{
        cid=rs.getInt(1);
	cfname=rs.getString(2);
	clname=rs.getString(3);
	address=rs.getString(4);
	%>
<br><font size=5 face="Times new roman"color=yellow ><center>
        &nbsp; <%=cid%>
	&nbsp; <%=cfname%>
	&nbsp; <%=clname%>
	&nbsp;&nbsp;&nbsp;( <%=address%>)&nbsp;</center></font><br>
<%	
 }
 
 
%>

<center>
<table frame="below" cellSpacing=3 cellPadding=3 width=100% border="1" >

<tr bgcolor=pink>
		
</tr>

<tr><td bgcolor="orange" colspan="11"  align="center" ><font size=3 color=darkblue><b>Customer Account  REPORT </b></font></td></tr>
<tr bgcolor="orange">
		<td ><b>Property Id</b></td>
		<td><b>Property Name</b></td>
		<td><b>Location</b></td>
		<td><b>Price </b></td>
		<td><b>Type</b></td>
		<td><b>Contact No.</b></td>
		
</tr>

<%
		
		

		rs = st.executeQuery("SELECT * FROM property where property.cust_id="+cust_Id); 


while(rs.next()) { 

int	property_id	= rs.getInt(1); 
String property_name	= rs.getString(2); 
String property_location= rs.getString(3); 
int  property_price	= rs.getInt(4); 
String property_type	= rs.getString(5); 
String property_contact= rs.getString(11); 
%>

<tr bgcolor=pink>
		<td><%=property_id%></td>
		<td><%=property_name%></td>
		<td><%=property_location%></td>
		<td><%=property_price%></td>
		<td><%=property_type%></td>

		<td><%=property_contact%></td>
		

</tr>

<%
} 
%>	
	
</u>
</table>
	
<center>
	
</tr></td>
</table>
<%@include file="bottom.jsp" %> 
</FORM>


</body>
</html>
