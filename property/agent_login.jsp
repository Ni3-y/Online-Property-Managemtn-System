<html>
<head><title> Agent Login Form
</title></head>
<body background="Images/blue.jpg"  text="001122">

<form name="login" method="POST" action="Agent" >
<INPUT TYPE="hidden" name="userAction" value="login" >


<table  width=100% colspan=0>
<tr><td><%@include file="top.jsp" %></td></tr>

<tr bgcolor=black>
<td><br>
<%@include file="label.jsp" %><br>
</td></tr>
</table>

<table  width=100% colspan=0>
<tr><td>

<table width=100%  rowpan=2 colspan=0 >
<tr bgcolor=yellow><td align=center> <font  size=5   ><b>Agent Login</b></font></tr></td></center>

<table cellSpacing=0 cellPadding=0 width="100%" bgcolor=pink>
<tr><td>
<font size=3 face="verdhana"><b><br>&nbsp&nbsp Username</td>
	 <td>:</td>
 <td><br><input type="text" name="agent_user_name" size=35 maxlength=15>
</td>
</tr>

<tr><td><font size=3 face="verdhana"><b><br>&nbsp&nbsp Password</td></font>	
 <td>:</td>
<td><br><input type="password" name="agent_password" size=35 maxlength=8>
</td>
</tr>

<tr><td>&nbsp</tr></td>

<tr><td>&nbsp</tr></td>

<tr><td colspan=3><center>
	  <input type="submit" name="Sign In" value="&nbsp&nbsp&nbsp&nbsp Login &nbsp&nbsp&nbsp&nbsp" >
	  <input type="reset" name="Sign In" value="&nbsp&nbsp&nbsp&nbsp reset &nbsp&nbsp&nbsp&nbsp" >			
<tr><td>&nbsp</tr></td>
</table>

<td width=40%><img src="Images/2.jpg"width=100% height=100%></td>

</table>
</tr></td>
</table>
<%@include file="bottom.jsp" %> 
</form>
</body>
</html>
