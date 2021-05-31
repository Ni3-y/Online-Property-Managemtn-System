<html>
<head>
<Script Language="JavaScript">
var i,j,k,c,diff;
function CheckEmpty()
{
if(document.custform.cust_user_name.value=="")
{
alert("Please Fill Your User ID");
document.custform.cust_user_name.focus();
return false;
}
if(document.custform.cust_password.value=="")
{
alert("Please Fill Your Password");
document.custform.cust_password.focus();
return false;
}
if(document.custform.cust_gender.value=="")
{
alert("Please Select Your Gender");
document.custform.cust_gender.focus();
return false;
}
if(document.custform.cust_first_name.value.length==0)
{
alert("Please enter your first name!!")
document.custform.cust_first_name.focus();
return false;
}
var name =document.custform.cust_first_name.value;
if(name.indexOf('0') >= "0" || name.indexOf('1') >= "0" || name.indexOf('2') >= "0" || name.indexOf('3') >= "0" || name.indexOf('4') >= "0" || name.indexOf('5') >= "0" 					|| name.indexOf('6') >= "0" || name.indexOf('7') >= "0" || name.indexOf('8') >= 					"0" || name.indexOf('9') >= "0" || name.indexOf('*') >= "0" ) {
alert("Name cannot have numbers or special characters!!");
document.custform.cust_first_name.value="";
document.custform.cust_first_name.focus();
return false;
}
if(document.custform.cust_last_name.value.length==0)
{
alert("Please enter your last name!!")
document.custform.cust_last_name.focus();
return false;
}
var name =document.custform.cust_last_name.value;
if(name.indexOf('0') >= "0" || name.indexOf('1') >= "0" || name.indexOf('2') >= "0" || name.indexOf('3') >= "0" || name.indexOf('4') >= "0" || name.indexOf('5') >= "0" 					|| name.indexOf('6') >= "0" || name.indexOf('7') >= "0" || name.indexOf('8') >= 					"0" || name.indexOf('9') >= "0" || name.indexOf('*') >= "0" ) {
alert("Name cannot have numbers or special characters!!");
document.custform.cust_last_name.value="";
document.custform.cust_last_name.focus();
return false;
}
if(document.custform.cust_address.value=="")
{
alert("Please Fill Your Address");
document.custform.cust_address.focus();
return false;
}
if(document.custform.cust_code.value=="")
{
alert("Please Fill Your Zip Code");
document.custform.cust_code.focus();
return false;
}
if(document.custform.cust_city.value=="")
{
alert("Please Fill Your City");
document.custform.cust_city.focus();
return false;
}
if(document.custform.cust_state_list.value=="")
{
alert("Please Select Your State");
document.custform.cust_state_list.focus();
return false;
}
if(document.custform.cust_country.value=="")
{
alert("Please Select Your Country");
document.custform.cust_country.focus();
return false;
}
//validation for proper email format 
if(document.custform.cust_email.value.length==0)
{
alert("Please enter your email id !! ")
document.custform.cust_email.value="";
document.custform.cust_email.focus();
return false;
}
if (document.custform.cust_email.value.indexOf(" ")>=0)
{
alert("Please do not enter space in email !!");
document.custform.cust_email.value="";
document.custform.cust_email.focus();
return false;
} 
if (document.custform.cust_email.value.indexOf("@")<1)
{
alert("Please enter a proper email id such as 'abc@xyz.com'!!");
document.custform.cust_email.value="";
document.custform.cust_email.focus();
return false;
}
if(document.custform.cust_phone.value.length==0)
{
alert("Please enter your telephone number!!");
document.custform.cust_phone.value="";
document.custform.cust_phone.focus();
return false;
}
if (document.custform.cust_phone.value.indexOf(" ")>=0)
{
alert("Please do not enter space in telephone number!!");
document.custform.cust_phone.value="";
document.custform.cust_phone.focus();
return false;
}
}
</Script>
</head>
<body background="Images/27.jpg" text="001122">
<form name="custform" method="POST" action="Customer" >
<INPUT TYPE="hidden" name="userAction" value="register" >
<table border=0 width=100% >
<tr><td><%@include file="top.jsp" %></td></tr>
<tr><td bgcolor=black><br><%@include file="label.jsp" %><br></td></tr>
<tr align=center bgcolor=gray><td colspan=3><font size=5 color=yellow><b>New Customer</b></font></td></tr>
<tr><td>&nbsp </td></tr>
<tr><td colspan=3><font size=4 color=yellow><b>Your Personal Details</b></font></td></tr>
<table cellSpacing=1 cellPadding=2 width="100%"    border=0>
<tr><td>
<TABLE  cellSpacing=4 cellPadding=0 width="100%">
<tr><td width=20%><b>User Name </b> </td>
<td>:</td> 
<td><input type="text" name="cust_user_name" size=35 maxlength=30 ></td>
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
<table cellSpacing=1 cellPadding=2 width="100%"   border=0>
<tr><td>
<TABLE  cellSpacing=4 cellPadding=0 width="100%" >
<tr><td width=20%><b>Street Address  </b></td>
<td>: </td>
<td><TEXTAREA name="cust_address" rows=3 cols=40></TEXTAREA> </td></tr>
<tr><td><b>Zip Code  </b></td>
<td>: </td>
<td><input type="text" name="cust_code" size=35 maxlength=30></td></tr>
<tr><td><b>City </b> </td>
<td>: </td>
<td><input type="text" name="cust_city" size=35 maxlength=30></td></tr>
<tr><td><b>State  </b></td>
<td>: </td>
<td><SELECT id="cust_state_list" name="cust_state_list"> 
<OPTION value=""   selected>Select State</OPTION>
<OPTION value=Maharashtra>Maharashtra</OPTION>
<OPTION value="Tamil Nadu">Tamil Nadu</OPTION>
<OPTION value=Karnataka>Karnataka</OPTION> 
<OPTION value=Gujarat>Gujarat</OPTION>
<OPTION value="West Bengal">West Bengal</OPTION>
<OPTION value=Rajasthan>Rajasthan</OPTION>
<OPTION value="Andhra Pradesh">Andhra Pradesh</OPTION>
<OPTION value=Jharkhand>Jharkhand</OPTION> 
<OPTION value=Haryana>Haryana</OPTION>
<OPTION value=Tripura>Tripura</OPTION>
<OPTION value=Kerala>Kerala</OPTION>
<OPTION value="Uttar Pradesh">Uttar Pradesh</OPTION>
<OPTION value="Madhya Pradesh">Madhya Pradesh</OPTION>
<OPTION value=Chhatisgad>Chhatisgad</OPTION>
<OPTION value=Punjab>Punjab</OPTION>
<OPTION value=Delhi>Delhi</OPTION>
<OPTION value=Goa>Goa</OPTION>
<OPTION value=Uttarachal>Uttarachal</OPTION>
<OPTION value=Orisa>Orisa</OPTION>
<OPTION value=Assam>Assam</OPTION>
<OPTION value="Himachal Pradesh">Himachal Pradesh</OPTION>
<OPTION value=Bihar>Bihar</OPTION>
<OPTION value=Manipur>Manipur</OPTION>
<OPTION value="Andaman &amp; Nicobar">Andaman &amp; Nicobar</OPTION>
<OPTION value=Meghalaya>Meghalaya</OPTION>
<OPTION value=Nagaland>Nagaland</OPTION>
<OPTION value=Mizoram>Mizoram</OPTION>
<OPTION value="Arunachal Pradesh">Arunachal Pradesh</OPTION>
<OPTION value="Daman &amp; Div">Daman &amp; Div</OPTION>
<OPTION value=Lakshadweep>Lakshadweep</OPTION>
<OPTION value=Sikkim>Sikkim</OPTION>
<OPTION value=Paducheri>Paducheri</OPTION>

<tr><td><b>Country</b>  </td>
<td>: </td>
<td><SELECT id="cust_country" onchange=cust_state() name="cust_country"> 
<OPTION value=India>India</OPTION>
<OPTION value=America>America</OPTION>
<OPTION value=Japan>Japan</OPTION>
<OPTION value=Bangladesh>Bangladesh</OPTION>
<OPTION value=Pakistan>Pakistan</OPTION>
<OPTION value=China>China</OPTION>
<OPTION value=Australia>Australia</OPTION>
<OPTION value=Brazil>Brazil</OPTION>
<OPTION value=Afghanistan>Afghanistan</OPTION>
<OPTION value=Colombia>Colombia</OPTION>
<OPTION value=Iceland>Iceland</OPTION>
<OPTION value=Iran>Iran</OPTION>
<OPTION value=Nepal>Nepal</OPTION>
<OPTION value=Turkey>Turkey</OPTION>
<OPTION value=Tonga>Tonga</OPTION>

<OPTION value=Srilanka>Srilanka</OPTION>
</table></tr></td></table>
<tr><td colspan=3>&nbsp</td></tr>
<br>
<tr bgcolor=8564879><td colspan=3 ><font  size=4 color=yellow><b>Your Contact Information</b></font></td></tr>
<table cellSpacing=1 cellPadding=2 width="70%"   border=0>
<tr><td>
<TABLE  cellSpacing=4 cellPadding=0 width="100%">
<tr><td width=20%><b>Email Address </b> </td>
<td>: </td>
<td><input type="text" name="cust_email" size=35 maxlength=30></td></tr>
<tr><td><b>Mobile Number  </b></td>
<td>: </td>

<td><input type="text" name="cust_phone" pattern="[7-9]{1}[0-9]{9}" oninvalid="alert('please enter valid contact number');" required  size=35 maxlength=30></td></tr>
<tr><td colspan=3>&nbsp</td></tr>
<tr><td colspan=3 align=center>
<input type="submit" name="Submit" value="Submit" onClick="JavaScript:return CheckEmpty();">
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<input type="reset" name="Reset" value="Reset"></td></tr>
</table>
</table>
<%@include file="bottom.jsp" %> 
</form>
</body>
</html>
