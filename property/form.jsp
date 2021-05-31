<html>
<body background="Images/15.jpg" text="001122">

<form name="frm_Acc" method="POST" action="/property/User" >
<table border=0 width=100% >
<tr align=center bgcolor=yellow><td colspan=3><font size=5 ><b>New Customer</b></font></td></tr>
<tr><td>&nbsp </td></tr>
<tr><td colspan=3><font size=4 color=yellow><b>Your Personal Details</b></font></td></tr>

<table cellSpacing=1 cellPadding=2 width="100%"   border=0>
       <tr><td>
         <TABLE  cellSpacing=4 cellPadding=0 width="100%" bgcolor=pink>
	<tr><td width=20%><b>User ID </b> </td>
	<td>:</td> 
		<td><input type="text" name="cust_id" size=35 maxlength=30 ></td>
	</tr>

	<tr><td><b>Password </b></td>
		<td> : </td>
		<td><input type="Password" name="cust_password" size=35 maxlength=30></td>
	</tr>
	<tr><td><b>Gender  </b></td>
		<td>: </td>
		<td><input type="radio" name="cust_gender" value="M" CHECKED><b>Male </b><input type="radio" name="cust_gender" value="F" ><b>Female </b></td>
	</tr>
	
	<tr><td><b>Title </b></td>
	<td> : </td>
	<td><select name="cmb_Title">
	      <option>Mr.</option>
	     <option>Mrs.</option>
	     <option>Miss.</option>
	</select></td>
	</tr>

	<tr><td><b>First Name </b></td>
	<td> : </td>
	<td><input type="text" name="cust_first_name" size=35 maxlength=30></td>
	</tr>
	<tr><td><b>Last Name </b></td>
	<td> : </td>
	<td><input type="text" name="cust_last_name" size=35 maxlength=30></td>
	</tr>
</table></tr></td></table>

<tr><td colspan=3>&nbsp</td></tr>

<br>
<tr bgcolor=8564879><td colspan=3 ><font  size=4 color=yellow><b>Your Address</b></font></td></tr>


<table cellSpacing=1 cellPadding=2 width="100%" bgColor=orange  border=0>
       <tr><td>
         <TABLE  cellSpacing=4 cellPadding=0 width="100%" bgcolor=pink>
<tr><td width=20%><b>Street Address  </b></td>
	<td>: </td>
	<td><TEXTAREA name="cust_ddress" rows=3 cols=40></TEXTAREA> </td></tr>

<tr><td><b>Zip Code  </b></td>
	<td>: </td>
	<td><input type="text" name="cust_code" size=35 maxlength=30></td></tr>
<tr><td><b>City </b> </td>
	<td>: </td>
	<td><input type="text" name="cust_city" size=35 maxlength=30></td></tr>
<tr><td><b>State  </b></td>
	<td>: </td>
	<td><SELECT 
                  id="cust_state_list" name="cust_state_list"> <OPTION value="" 
                    selected>Select State</OPTION> <OPTION 
                    value="Tamil Nadu">Tamil Nadu</OPTION> <OPTION 
                    value=Maharashtra>Maharashtra</OPTION> <OPTION 
                    value="West Bengal">West Bengal</OPTION> <OPTION 
                    value=Karnataka>Karnataka</OPTION> <OPTION 
                    value=Gujarat>Gujarat</OPTION> <OPTION 
                    value=Rajasthan>Rajasthan</OPTION> <OPTION 
                    value="Andhra Pradesh">Andhra Pradesh</OPTION> <OPTION 
                    value=Jharkhand>Jharkhand</OPTION> <OPTION 
                    value=Haryana>Haryana</OPTION> <OPTION F
                    value=Tripura>Tripura</OPTION> <OPTION 
                    value=Kerala>Kerala</OPTION> <OPTION 
                    value="Uttar Pradesh">Uttar Pradesh</OPTION> <OPTION 
                    value="Madhya Pradesh">Madhya Pradesh</OPTION> <OPTION 
                    value=Chhattisgad>Chhattisgarh</OPTION> <OPTION 
                    value=Punjab>Punjab</OPTION> <OPTION 
                    value=Delhi>Delhi</OPTION> <OPTION value=Goa>Goa</OPTION> 
                    <OPTION value=Uttaranchal>Uttaranchal</OPTION> <OPTION 
                    value=Orissa>Orissa</OPTION> <OPTION 
                    value=Assam>Assam</OPTION> <OPTION 
                    value="Himachal Pradesh">Himachal Pradesh</OPTION> <OPTION 
                    value=Bihar>Bihar</OPTION> <OPTION 
                    value=Manipur>Manipur</OPTION> <OPTION 
                    value="Andaman &amp; Nicobar">Andaman &amp; Nicobar</OPTION> 
                    <OPTION value=Meghalaya>Meghalaya</OPTION> <OPTION 
                    value=Nagaland>Nagaland</OPTION> <OPTION 
                    value="Jammu &amp; Kashmir">Jammu &amp; Kashmir</OPTION> 
                    <OPTION value=Mizoram>Mizoram</OPTION> <OPTION 
                    value="Arunachal Pradesh">Arunachal Pradesh</OPTION> <OPTION 
                    value=Chandigarh>Chandigarh</OPTION> <OPTION 
                    value="Dadra &amp; Nagar Haveli">Dadra &amp; Nagar 
                    Haveli</OPTION> <OPTION value="Daman &amp; Diu">Daman &amp; 
                    Diu</OPTION> <OPTION value=Lakshadweep>Lakshadweep</OPTION> 
                    <OPTION value=Pondicherry>Pondicherry</OPTION> <OPTION 
                    value=Sikkim>Sikkim</OPTION></SELECT></td></tr>


<tr><td><b>Country</b>  </td>
	<td>: </td>
	<td><SELECT id="cust_country" onchange=cust_state() name="cmd_Country"> 
   <OPTION value=India>India</OPTION>
<OPTION value=America>America</OPTION>
<OPTION value=Japan>Japan</OPTION>
<OPTION value=Bangladesh>Bangladesh</OPTION>
<OPTION value=Pakistan>Pakistan</OPTION>
<OPTION value=China>China</OPTION>
    <OPTION value=Srilanka>Srilanka</OPTION>
                    
                    
                    

</table></tr></td></table>
<tr><td colspan=3>&nbsp</td></tr>
<br>
<tr bgcolor=8564879><td colspan=3 ><font  size=4 color=yellow><b>Your Contact Information</b></font></td></tr>

<table cellSpacing=1 cellPadding=2 width="100%" bgColor=orange  border=0>
       <tr><td>
         <TABLE  cellSpacing=4 cellPadding=0 width="100%" bgcolor=pink>
<tr><td width=20%><b>Email Address </b> </td>
	<td>: </td>
	<td><input type="text" name="cust_email" size=35 maxlength=30></td></tr>
<tr><td><b>Telephone Number  </b></td>
	<td>: </td>
	<td><input type="text" name="cust_phone" size=35 maxlength=30></td></tr>

<tr><td colspan=3>&nbsp</td></tr>
<tr><td colspan=3 align=center>


	<input type="submit" name="Submit" value="Submit" onClick="JavaScript:return CheckEmpty();">

	
	&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	
	
	<input type="reset" name="Reset" value="Reset">

</html>
