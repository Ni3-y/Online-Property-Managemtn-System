try{ 
	
	int default_cat_id =12;

	if(request.getParameter("cat_id")!=null && request.getParameter("cat_id")!=""){
			
			default_cat_id = Integer.parseInt(request.getParameter("cat_id"));


			ResultSet  catRs = st.executeQuery("SELECT cat_name FROM tbl_category where  cat_id="+default_cat_id); 

		if(catRs.next()){
				
					String cat_name	= catRs.getString(1); 
				%>
					<tr><td colspan=4>
					<table bgcolor="orange" width="100%" border=1>
					<tr><td  bgcolor="lightblue" align="center"><font size="5"><b><%=cat_name%></b></font></td></tr>
					</tr></table>
					</td></tr>
					<tr><td colspan=4 >&nbsp;</td>
					
				<%
		}
	
	}else{
%>
	
<tr><td colspan=2 width=50%>&nbsp;&nbsp;<img src="" width="310" height=150></td>
	    <td colspan=2 width=50%><img src="" width=310 height=150></td>	
	</tr>
	<tr><td colspan=4 >&nbsp;</td></tr>
	
<%	
	}

	rs = st.executeQuery("SELECT * FROM tbl_property where is_property_active='y' And cat_id="+default_cat_id); 

}catch(SQLException exception){ 

} 

%>



<%
int cnt = 0;
while(rs.next()) { 
			
			if(cnt == 0){
				%><tr>	<%
			}

			cnt++;

			int property_id= rs.getInt(1); 
			String property_name= rs.getString(2); 
			String owner_name= rs.getString(4); 
			int property_prize	= rs.getInt(6); 
			String imageName= rs.getString(7); 

%>

		<td width=10%>&nbsp;&nbsp;<img src="Images/<%=imageName%>"width=90 height=120></td>
	        <td width=35%><font size=4 color=yellow><b>&nbsp&nbsp <%=property_name%></b></font><br>
		<font color=orange><b>&nbsp&nbsp Publisher : </b></font><font color=white>Rupa & Co.<br>
		 <font color=orange><b>&nbsp&nbsp Author : </b></font><font color=white><%=owner_name%><br>
		<font color=orange><b>&nbsp&nbsp Price : </b></font><font color=white>Rs. - <%=property_prize%> :00</font><br>
		&nbsp&nbsp
	
			<input type=checkbox name="property" value="<%=property_id%>"> &nbsp&nbsp
			<INPUT TYPE="hidden" name="property_name" value="<%=property_name%>" >
			<INPUT TYPE="hidden" name="property_prize" value="<%=property_prize%>" >
			Qty : 	<INPUT TYPE="text" NAME="qty" value="" size="4">

</td> 
			
			
			 <%
					   if(cnt ==2){
						cnt = 0;
				%>
					</tr>
					<tr><td colspan=2>&nbsp;<hr width="80%" align="center"></td>
							<td colspan=2>&nbsp;<hr width="80%" align="center"></td>
							
					</tr>
				<%
			}

}

%>

