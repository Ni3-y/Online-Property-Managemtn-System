<html>
<body background="Images/blue.jpg">

<TABLE  border=0 cellSpacing=0 cellPadding=0  width=100%>

<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %>
<!--%! ResultSet rs1=null; %-->

<% 
try { 
	 Class.forName("org.postgresql.Driver");
    Connection con = DriverManager.getConnection("jdbc:postgresql://localhost/property","nitin","nitin144"); 
	Statement st = con.createStatement(); 

	
	int default_cat_id =1;

	if(request.getParameter("cat_id")!=null && request.getParameter("cat_id")!="")
	{
			
		default_cat_id= Integer.parseInt(request.getParameter("cat_id"));

	}
        	ResultSet catRs=st.executeQuery("SELECT cat_name FROM category where  cat_id="+default_cat_id);

		if(catRs.next())
                {
				
					String cat_name	= catRs.getString(1); 
				%>
					<tr><td colspan=5>
			<table  width="100%" border=0>
			<tr><td  bgcolor="lightblue" align="center"><font size="5"><b><%=cat_name%></b></font></td></tr>
<!--		<tr><td><br><%@include file="search_property.jsp"%></td></tr>  -->

			</table>
					</td></tr>
					<tr><td colspan=4 >&nbsp;</td>
					
				<%
		}
	

ResultSet rs = st.executeQuery("SELECT property.property_name,property.property_location,property.property_price,property.property_type,property.is_property_active,property.property_image,property.agent_id,agent.agent_phone FROM property inner join agent on (property.agent_id=agent.agent_id)     where  property.cat_id="+default_cat_id ); int cnt = 0;
while(rs.next()) { 
		
			if(cnt == 0)
			{
%>                           
<tr>	
<%
			}
			cnt++;


			String property_name= rs.getString(1); 
			String property_location=rs.getString(2);
			String property_price=rs.getString(3);
			String property_type=rs.getString(4);
			String is_property_active=rs.getString(5);
			String imageName= rs.getString(6);
                        String property_contact=rs.getString(8);
 

%>

<td width=10%>&nbsp&nbsp<img src="Images/<%=imageName%>"width=150 height=150></td>
<td width=30%  align=left>
<font size=3 color=yellow><b><br>&nbsp&nbsp  Name : <font color=white><%=property_name%></font><br>
<font size=3 color=yellow><b>&nbsp&nbsp Location : </font><font color=white><%=property_location%><br>
<font size=3 color=yellow><b>&nbsp&nbsp Price : </font><font color=white>Rs.<%=property_price%><br>
<font size=3 color=yellow><b>&nbsp&nbsp Type : </font><font color=white><%=property_type%><br>
<font size=3 color=yellow><b>&nbsp&nbsp Active :</font><font color=white></font><%=is_property_active%><br>
<font size=3 color=yellow><b>&nbsp&nbsp Contact No.:</font><font color=white></font><%=property_contact%><br>
<!--&nbsp&nbsp<input type=checkbox name=select_property value="property" size=10> -->
&nbsp&nbsp
		
			
		</td> 
			
		<%
		   if(cnt ==2){
			cnt = 0;
		%>
		</tr>
		<tr><td colspan=2>&nbsp<hr width="80%" align="center"></td>
			<td colspan=2>&nbsp<hr width="80%" align="center"></td>
		</tr>
				<%
		}
}
con.close();
st.close();
rs.close();


}catch(SQLException ex)
{ 
}
%>


<!-- <tr><td> </td><td><br><br>&nbsp&nbsp &nbsp <input type=submit value="Add property"></td></tr> -->
</TABLE>	

</body>
</html>
