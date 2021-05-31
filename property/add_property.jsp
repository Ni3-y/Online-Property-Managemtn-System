<html>
<head>

<script language="javascript">

function frmCheck(){

	
	if(document.addProperty.property_name.value=="")
	{
		alert("Please Fill Property Name");
		document.addProperty.property_name.focus();
		return false;
	}
	
	if(document.addProperty.property_location.value=="")
	{
		alert("Please Fill Property Location");
		document.addProperty.property_location.focus();
		return false;
	}
	if(document.addProperty.property_category.value=="")
	{
		alert("Please Select Property Category");
		document.addProperty.property_category.focus();
		return false;
	}
	if(document.addProperty.property_type.value=="")
	{
		alert("Please Select Property Type");
		document.addProperty.property_type.focus();
		return false;
	}

	if(document.addProperty.is_property_active.value=="")
	{
		alert("Please Select  Property Active or Not");
		document.addProperty.is_property_active.focus();
		return false;
	}

	if(document.addProperty.property_price.value=="")
	{
		alert("Please Fill Property Price");
		document.addProperty.property_price.focus();
		return false;
	}

	if(document.addProperty.property_image.value=="")
	{
		alert("Please Fill Property Image");
		document.addProperty.property_image.focus();
		return false;
	}
      if(document.addProperty.property_contact.value=="")
	{
		alert("Please Fill your contact number");
		document.addProperty.property_contact.focus();
		return false;
	}
 if(document.addProperty.Customer_id.value=="")
	{
		alert("Please Fill customer id");
		document.addProperty.Customer_id.focus();
		return false;
	}

}

</script>
</head>
<body background="Images/27.jpg" text="001122">

<form name="addProperty" method="POST" action="Agent"  >
<INPUT TYPE="hidden" name="userAction" value="addProperty" >


<table  width=100% colspan=0>

<tr><td><%@include file="top.jsp" %></td></tr>

<tr><td> 
	<TABLE border=0  cellSpacing=0 cellPadding=0 width=100%>
	<tr><td colspan="11"  align="center" >&nbsp</td></tr>
	<tr bgcolor="lightgreen" align=center><td width=20%>&nbsp</td>
	
	<td><font color="001122"><b>| <a href="agent_account.jsp" > Property &nbsp |</a></b></font></td>
	<td><font color="111122"><b>|  &nbsp<a href="add_property.jsp"> Add Property &nbsp |</a></b></font></td>
	<td><font color="111122"><b>| &nbsp<a href="delete_property.jsp"> Delete Property &nbsp |</a></b></font></td>
	<td><font color="001122"><b>|<a href="index.jsp" > Logout </a> </b></font></td>
	</tr>
	</TABLE >
<tr><td>
	<table border=0 width=100% >
	<tr align=center bgcolor=yellow><td colspan=3><font size=5 ><b>New Property</b></font></td></tr>
	<tr><td>&nbsp </td></tr>
	<tr align=center><td width=50% ><font face="Luxi mono" size=4 color=><b>Property Details</b></font></td></tr>
	</table>
	
	<table cellSpacing=1 cellPadding=2 width="70%"   border=0>
       <tr><td><b><br>Property Name </b></td>
	<td> : </td>
	<td><input type="text" name="property_name" size=35 maxlength=30></td>
	</tr>
	<tr><td><b><br>Location </b></td>
	<td> : </td>
	<td><input type="text" name="property_location" size=35 maxlength=30></td>
	</tr>


<tr><td><b>Property Category  </b></td>
<td>: </td>
<td>
<SELECT id="property_category" name="property_category"> 
<OPTION value=""   selected>Select</OPTION>
<OPTION value="Appartments">Appartments</OPTION>
<OPTION value=Flat>Flat</OPTION>
<OPTION value=Land>Land</OPTION> 
<OPTION value=Shops>Shops</OPTION> 
<OPTION value="Commercial offices">Commercial Offices</OPTION> 
<OPTION value="Row Houses">Row Houses</OPTION> 
<OPTION value=Bungalo>Bungalo</OPTION> 

<tr><td><b><br>Property Type </b></td>
	<td>: </td>
	<td><SELECT name="property_type"> 
	
	<OPTION value=""   selected>Select</OPTION>
	<option value="sell">sell</option>
	<option value="rent">rent</option>
	</td></tr>

<tr><td><b><br>Is Property Active (yes/no) </b></td>
	<td>: </td>
	
	<td><SELECT name="is_property_active"> 
	<OPTION value=""   selected>Select</OPTION>
	<option value="y">yes</option>
	<option value="n">no</option>
	</td></tr>
<tr><td><b><br>Property Price </b> </td>
	<td>: </td>
	<td><input type="text" name="property_price" size=35 maxlength=30></td></tr>
	
<tr><td><b><br>Property Image</b></td>
	<td>: </td>
	<td><input type="file" name="property_image" size=35 maxlength=30></td></tr>

	</td></tr>


<tr><td><b><br>Property Contact no.</b></td>
	<td>: </td>
	<td><input type="text" name="property_contact" pattern="[7-9]{1}[0-9]{9}" oninvalid="alert('invalid Contact number');" required size=35 maxlength=30></td></tr>

	</td></tr>

<tr><td><b><br>Customer id</b></td>
	<td>: </td>
	<td><input type="text" name="Customer_id"  required size=35 maxlength=30></td></tr>

	</td></tr>	



	<tr><td colspan=3>&nbsp</td></tr>
<br>
<tr><td colspan=3>&nbsp</td></tr>
<tr><td  align=center>
	&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	<input type="submit" name="Submit" value="Submit" onClick="JavaScript:return frmCheck();">
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<input type="reset" name="Reset" value="Reset"></td></tr>

</table>

<%@include file="bottom.jsp" %> 

</form>
</body>
</html>
