<html>
<script language="javascript">

function frmCheck()
{
	
	
	if(document.updateCustProperty.property_id.value=="")
	{
		alert("Please Fill Property Id");
		document.updateCustProperty.property_id.focus();
		return false;
	}
	
	
	if(document.updateCustProperty.property_cust_id.value=="")
	{
		alert("Please Select Property related Customer");
		document.updateCustProperty.property_cust_id.focus();
		return false;
	}
	

}

</script>

<body background="Images/27.jpg" text="001122">

<form name="updateCustProperty" method="POST" action="Admin" onSubmit="return frmCheck();" >
<INPUT TYPE="hidden" name="userAction" value="updateCustProperty" >


 <table  width=100% colspan=0>
<tr ><td> 
<%@ include file="property_label.jsp" %>
</td></tr>
<tr><td>
<br>
<table border=0 width=100% >
<tr align=center bgcolor=yellow><td colspan=3><font size=5 ><b>Update  Property Ordered By Customer</b></font></td></tr>
<tr><td>&nbsp </td></tr>
<tr align=center><td width=50% ><font face="Luxi mono" size=4 color=><b>Property Details</b></font></td></tr>

<table cellSpacing=1 cellPadding=2 width="70%"   border=0>

       <tr><td><b><br>Property (ID) For Updating It's Records :</b></td>
	<td> : </td>
	<td><input type="text" name="property_id" size=35 maxlength=30></td>
	</tr>

      

	<tr><td><b><br>Customer (ID) for that Property</b></td>
	<td>: </td>
	<td><input type="text" name="property_cust_id" size=35 maxlength=30></td></tr>

	<tr><td colspan=3>&nbsp</td></tr>
<br>
<tr><td colspan=3>&nbsp</td></tr>
<tr><td  align=center>

</table>
	&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	
	<input type="submit" name="Submit" value="Submit" onClick="JavaScript:return CheckEmpty();">

	
	&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	
	
	<input type="reset" name="Reset" value="Reset">
</tr></td></table>
<%@include file="bottom.jsp" %> 
</body>

</html>
