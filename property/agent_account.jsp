<html>
<head><title>Agent Acount</title></head>
<body background="Images/blue.jpg">

<FORM METHOD="POST" ACTION="" name="frm" >

 <table  width=100% colspan=0>
<tr><td><%@include file="top.jsp" %></td></tr>

<tr><td> 
<TABLE border=0  cellSpacing=0 cellPadding=0 width=100%>
<tr><td colspan="11"  align="center" >&nbsp;</td></tr>

<tr bgcolor="lightgreen" align=center><td width=20%>&nbsp</td>
	
	<td><font color="001122"><b>| <a href="" > Property</a></b></font></td>
	<td><font color="111122"><b>| &nbsp<a href="add_property.jsp"> Add Property &nbsp |</a></b></font></td>
	<td><font color="111122"><b>| &nbsp<a href="delete_property.jsp"> Delete Property &nbsp |</a></b></font></td>
	<td><font color="001122"><b>|<a href="index.jsp" > Logout </a> </b></font></td>
	
</tr>
</TABLE >


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
	
	
	int agent_Id= 0;
	String useract=""+session.getAttribute("userAction");
	
	if(useract.equals("register")){
%>	
<Script Language="JavaScript">
		alert("Account Created  Succesfully. Please Sign IN Again");
</Script>
<% }
	if(useract.equals("login"))
		{	
		if(session.getAttribute("agent_id")!= null)
		{
		
			agent_Id	= Integer.parseInt(""+session.getAttribute("agent_id"));
		}

	
rs = st.executeQuery("SELECT agent_first_name,agent_last_name,agent_address FROM agent where agent_id="+agent_Id); 
	String cfname,clname,address;
	
	while(rs.next())
	{
	cfname=rs.getString(1);
	clname=rs.getString(2);
	address=rs.getString(3);
	%>
<br><font size=5 face="Times new roman"color=yellow ><center>
	&nbsp <%=cfname%>
	&nbsp <%=clname%>
	&nbsp&nbsp&nbsp( <%=address%>&nbsp)</center></font><br>
<%	
 }
 }
 
%>

<center>
<table frame="below" cellSpacing=3 cellPadding=3 width=100% border="1" >

<tr><td bgcolor="orange" colspan="11"  align="center" ><font size=3 color=darkblue><b>Agent Account  REPORT </b></font></td></tr>

<tr bgcolor="orange">
		<td ><b>Property Id</b></td>
		<td><b>Property Name</b></td>
		<td><b>Location</b></td>
		<td><b>Price </b></td>
		<td><b>Type</b></td>
		<td><b>Active (Yes/No)</b></td>
		<td><b>Image</b></td>
		<td><b>Contact</b></td>
		<td><b>Category_id</b></td>	
</tr>

<%

		rs = st.executeQuery("SELECT * FROM property where agent_id="+agent_Id+" order by property_id"); 

 int cat_id,property_id;
String property_name, property_location,property_type,property_status, property_price, property_image,property_contact;


while(rs.next()) { 

		property_id=rs.getInt(1);
		property_name	= rs.getString(2); 
		property_location= rs.getString(3); 
		property_price= rs.getString(4); 
		property_type	= rs.getString(5); 
		property_status	= rs.getString(6); 
		property_image	= rs.getString(7); 
                property_contact = rs.getString(11);
		cat_id		=rs.getInt(8);
%>

<tr bgcolor=pink>

		<td><%=property_id%></td>
		<td><%=property_name%></td>
		<td><%=property_location%></td>
		<td><%=property_price%></td>
		<td><%=property_type%></td>
		<td><%=property_status%></td>
		<td><%=property_image%></td>
                <td><%=property_contact%></td>
		<td><%=cat_id%></td>

</tr>

<%
} 
%>	
	
</u>
</table>
	
<center>
	
</tr></td>

<tr><td>
<%@include file="bottom.jsp" %> 
</td></tr>

</table>
</FORM>


</body>
</html>
