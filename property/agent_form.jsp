	<html>
	<head>
	<Script Language="JavaScript">
	var i,j,k,c,diff;
	function CheckEmpty()
	{
		if(document.agentform.agent_user_name.value=="")
		{
		alert("Please Fill Your Agent Name");
		document.agentform.agent_user_name.focus();
		return false;
		}
		if(document.agentform.agent_password.value=="")
		{
		alert("Please Fill Your Password");
		document.agentform.agent_password.focus();
		return false;
		}
		if(document.agentform.agent_gender.value=="")
		{
		alert("Please Select Your Gender");
		document.agentform.agent_gender.focus();
		return false;
		}
		if(document.agentform.agent_first_name.value.length==0)
		{
			alert("Please enter your first name!")
		document.agentform.agent_first_name.focus();
		return false;
		}
var name =document.agentform.agent_first_name.value;
		if(name.indexOf('0') >= "0" || name.indexOf('1') >= "0" || name.indexOf('2') >= "0" || name.indexOf('3') >= "0" || name.indexOf('4') >= "0" || name.indexOf('5') >= "0" 					|| name.indexOf('6') >= "0" || name.indexOf('7') >= "0" || name.indexOf('8') >= 					"0" || 			name.indexOf('9') >= "0" || name.indexOf('*') >= "0" )
		{
		alert("Name cannot have numbers or special characters!!");
		document.agentform.agent_first_name.value="";
		document.agentform.agent_first_name.focus();
		return false;
		}
		if(document.agentform.agent_last_name.value.length==0)
		{
		alert("Please enter your last name!!")
		document.agentform.agent_last_name.focus();
		return false;
		}
		var name =document.agentform.agent_last_name.value;
		if(name.indexOf('0') >= "0" || name.indexOf('1') >= "0" || name.indexOf('2') >= "0" || name.indexOf('3') >= "0" || name.indexOf('4') >= "0" || name.indexOf('5') >= "0" 					|| name.indexOf('6') >= "0" || name.indexOf('7') >= "0" || name.indexOf('8') >= 					"0" || name.indexOf('9') >= "0" || name.indexOf('*') >= "0" ) 
		{
		alert("Name cannot have numbers or special characters!!");
		document.agentform.agent_last_name.value="";
		document.agentform.agent_last_name.focus();
		return false;
		}
		if(document.agentform.agent_address.value=="")
		{
		alert("Please Fill Your Address");
		document.agentform.agent_address.focus();
		return false;
		}
		if(document.agentform.agent_code.value=="")
		{
		alert("Please Fill Your Zip Code");
		document.agentform.agent_code.focus();
		return false;
		}
		if(document.agentform.agent_city.value=="")
		{
		alert("Please Fill Your City");
		document.agentform.agent_city.focus();
		return false;
		}
		if(document.agentform.agent_state_list.value=="")
		{
		alert("Please Select Your State");
		document.agentform.agent_state_list.focus();
		return false;
		}
		if(document.agentform.agent_country.value=="")
		{
		alert("Please Select Your Country");
		document.agentform.cmd_Country.focus();
		return false;
		}
		if(document.agentform.agent_email.value.length==0)
		{
		alert("Please enter your email id !! ")
		document.agentform.agent_email.value="";
		document.agentform.agent_email.focus();
		return false;
		}
		if (document.agentform.agent_email.value.indexOf(" ")>=0)
		{
		alert("Please do not enter space in email !!");
		document.agentform.agent_email.value="";
		document.agentform.agent_email.focus();
		return false;
		} 
		if (document.agentform.agent_email.value.indexOf("@")<1)
		{
		alert("Please enter a proper email id such as 'abc@xyz.com'!!");
		document.agentform.agent_email.value="";
		document.agentform.agent_email.focus();
		return false;
		}
			if(document.agentform.agent_phone.value.length==0)
		{
		alert("Please enter your telephone number!!");
		document.agentform.agent_phone.value="";
		document.agentform.agent_phone.focus();
		return false;
		}
		if (document.agentform.agent_phone.value.indexOf(" ")>=0)
		{
		alert("Please do not enter space in telephone number!!");
		document.agentform.agent_phone.value="";
		document.agentform.agent_phone.focus();
		return false;
		}
	}
	</Script>
</head>
<body background="Images/27.jpg" text="001122">
<form name="agentform" method="POST" action="Agent" >
<INPUT TYPE="hidden" name="userAction" value="register" >
<table border=0 width=100% >
<tr><td><%@include file="top.jsp" %></td></tr>
<tr><td bgcolor=black><br><%@include file="label.jsp" %><br></td></tr>
<tr align=center bgcolor=gray><td colspan=3><font size=5 color=yellow><b>New Agent</b></font></td></tr>
<tr><td>&nbsp </td></tr>
<tr><td colspan=3><font size=4 color=yellow><b>Your Personal Details</b></font></td></tr>
<table cellSpacing=1 cellPadding=2 width="70%"   border=0>
<tr><td>
<TABLE  cellSpacing=4 cellPadding=0 width="100%" >
<tr><td width=20%><b>User Name </b> </td>
<td>:</td> 
<td><input type="text" name="agent_user_name" size=35 maxlength=30 ></td>
</tr>
<tr><td><b>Password </b></td>
<td> : </td>
<td><input type="Password" name="agent_password" size=35 maxlength=30></td>
</tr>
<tr><td><b>Gender  </b></td>
<td>: </td>
<td><input type="radio" name="agent_gender" value="M" CHECKED><b>Male </b><input type="radio" name="agent_gender" value="F" ><b>Female </b></td>
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
<td><input type="text" name="agent_first_name" size=35 maxlength=30></td>
</tr>
<tr><td><b>Last Name </b></td>
<td> : </td>
<td><input type="text" name="agent_last_name" size=35 maxlength=30></td>
</tr>
</table></tr></td></table>
<tr><td colspan=3>&nbsp</td></tr>
<br>
<tr bgcolor=8564879><td colspan=3 ><font  size=4 color=yellow><b>Your Address</b></font></td></tr>
<table cellSpacing=1 cellPadding=2 width="70%" border=0>
<tr><td>
<TABLE  cellSpacing=4 cellPadding=0 width="100%" >
<tr><td width=20%><b>Street Address  </b></td>
<td>: </td>
<td><TEXTAREA name="agent_address" rows=3 cols=40></TEXTAREA> </td></tr>
<tr><td><b>Zip Code  </b></td>
<td>: </td>
<td><input type="text" name="agent_code" size=35 maxlength=30></td></tr>
<tr><td><b>City </b> </td>
<td>: </td>
<td><input type="text" name="agent_city" size=35 maxlength=30></td></tr>
<tr><td><b>State  </b></td>
<td>: </td>
<td><SELECT   id="agent" name="agent_state_list"> 
<OPTION   value="Maharastra">Maharastra</OPTION>
<OPTION   value="Goa">Goa</OPTION>
<OPTION   value="Karnataka">Karnataka</OPTION>
<OPTION   value="Gujarat">Gujarat</OPTION>
<OPTION   value="Andhrpradesh">Andhrpradesh</OPTION>          
<tr><td><b>Country</b>  </td>
<td>: </td>
<td><SELECT id="agent_country" onchange=agent_state() name="agent_country"> 
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
<table cellSpacing=1 cellPadding=2 width="70%"   border=0>
<tr><td>
<TABLE  cellSpacing=4 cellPadding=0 width="100%" >
<tr><td width=20%><b>Email Address </b> </td>
<td>: </td>
<td><input type="text" name="agent_email" size=35 maxlength=30></td></tr>
<tr><td><b>Mobile Number </b></td>
<td>: </td>

<td><input type="text" name="agent_phone" pattern="[7-9]{1}[0-9]{9}" oninvalid="alert('please enter valid contact number');" required  size=35 maxlength=30></td></tr>
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
