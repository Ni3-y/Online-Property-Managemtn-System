<html>
<head>
<title>New Customer</title>

<Script Language="JavaScript">
 var i,j,k,c,diff;
function CheckEmpty()
{
	if(document.frm_Acc.txt_UserName.value=="")
	{
		alert("Please Fill Your User ID");
		document.frm_Acc.txt_UserName.focus();
		return false;
	}
	 if(document.frm_Acc.txt_Password.value=="")
	{
		alert("Please Fill Your Password");
		document.frm_Acc.txt_Password.focus();
		return false;
	}
	 if(document.frm_Acc.rad_Gender.value=="")
	{
		alert("Please Select Your Gender");
		document.frm_Acc.rad_Gender.focus();
		return false;
	}
	  if(document.frm_Acc.txt_FName.value.length==0)
  	{
   		alert("Please enter your first name!!")
	  	document.frm_Acc.txt_FName.focus();
		return false;
   	}
	
 	
 	var name =document.frm_Acc.txt_FName.value;
	
	/*if (name.indexOf(" ")>=0){
		alert("Please do not enter space in name !!");
		document.frm_Acc.FName.value="";
		document.frm_Acc.FName.focus();
		return false;
} */
	
	 if(name.indexOf('0') >= "0" || name.indexOf('1') >= "0" || name.indexOf('2') >= "0" || name.indexOf('3') >= "0" || name.indexOf('4') >= "0" || name.indexOf('5') >= "0" 					|| name.indexOf('6') >= "0" || name.indexOf('7') >= "0" || name.indexOf('8') >= 					"0" || name.indexOf('9') >= "0" || name.indexOf('*') >= "0" ) {
			alert("Name cannot have numbers or special characters!!");
			document.frm_Acc.txt_FName.value="";
			document.frm_Acc.txt_FName.focus();
			return false;
	}
	  if(document.frm_Acc.txt_LName.value.length==0)
  	{
   		alert("Please enter your last name!!")
	  	document.frm_Acc.txt_LName.focus();
		return false;
   	}
	
 	
 	var name =document.frm_Acc.txt_LName.value;
	
	 if(name.indexOf('0') >= "0" || name.indexOf('1') >= "0" || name.indexOf('2') >= "0" || name.indexOf('3') >= "0" || name.indexOf('4') >= "0" || name.indexOf('5') >= "0" 					|| name.indexOf('6') >= "0" || name.indexOf('7') >= "0" || name.indexOf('8') >= 					"0" || name.indexOf('9') >= "0" || name.indexOf('*') >= "0" ) {
			alert("Name cannot have numbers or special characters!!");
			document.frm_Acc.txt_LName.value="";
			document.frm_Acc.txt_LName.focus();
			return false;
	}
	 if(document.frm_Acc.txt_Address.value=="")
	{
		alert("Please Fill Your Address");
		document.frm_Acc.txt_Address.focus();
		return false;
	}
	 if(document.frm_Acc.txt_Code.value=="")
	{
		alert("Please Fill Your Zip Code");
		document.frm_Acc.txt_Code.focus();
		return false;
	}
	if(document.frm_Acc.txt_City.value=="")
	{
		alert("Please Fill Your City");
		document.frm_Acc.txt_City.focus();
		return false;
	}
	 if(document.frm_Acc.cmd_state_list.value=="")
	{
		alert("Please Select Your State");
		document.frm_Acc.cmd_state_list.focus();
		return false;
	}
	 if(document.frm_Acc.cmd_Country.value=="")
	{
		alert("Please Select Your Country");
		document.frm_Acc.cmd_Country.focus();
		return false;
	}
	//validation for proper email format 
	  if(document.frm_Acc.txt_Email.value.length==0){
	     	alert("Please enter your email id !! ")
		document.frm_Acc.txt_Email.value="";
		document.frm_Acc.txt_Email.focus();
		return false;
   	}
   	
   	 if (document.frm_Acc.txt_Email.value.indexOf(" ")>=0){
		alert("Please do not enter space in email !!");
		document.frm_Acc.txt_Email.value="";
		document.frm_Acc.txt_Email.focus();
		return false;
	} 
	
  		 if (document.frm_Acc.txt_Email.value.indexOf("@")<1){
     			alert("Please enter a proper email id such as 'abc@xyz.com'!!");
			document.frm_Acc.txt_Email.value="";
			document.frm_Acc.txt_Email.focus();
			return false;
		 }
		/*if(document.f1.email.value.indexOf("@")>document.frm_Acc.email.value.indexOf(".")){
		alert("Please enter a proper email Id such as 'abc@xyz.com'!!");
		document.frm_Acc.email.value="";
		document.frm_Acc.email.focus();
		return false;
	}*/
	if(document.frm_Acc.txt_TelNo.value.length==0){
	     	alert("Please enter your telephone number!!");
		document.frm_Acc.txt_TelNo.value="";
	  	document.frm_Acc.txt_TelNo.focus();
		return false;
   	}
   	


   	if (document.frm_Acc.txt_TelNo.value.indexOf(" ")>=0){
			alert("Please do not enter space in telephone number!!");
			document.frm_Acc.txt_TelNo.value="";
			document.frm_Acc.txt_TelNo.focus();
			return false;
}
	 if(document.frm_Acc.txt_FxNo.value=="")
	{
		alert("Please Enter Your Fax Number");
		document.frm_Acc.txt_FxNo.focus();
		return false;
	}
	 if(document.frm_Acc.txt_Mobile.value=="")
	{
		alert("Please Enter Your Mobile No.");
		document.frm_Acc.txt_Mobile.focus();
		return false;
	}
}


</script>
</head>

<body background="Images/Background.jpg" text="001122">

<form name="frm_Acc" method="POST" action="/pathfinder/User" >
<table border=0 width=100% >
<tr align=center bgcolor=lightblue><td colspan=3><font size=5 color=brown><b>New Customer</b></font></td></tr>
<tr><td>&nbsp </td></tr>
<tr><td colspan=3><font size=4 color=yellow><b>Your Personal Details</b></font></td></tr>

<table cellSpacing=1 cellPadding=2 width="100%" bgColor=orange  border=0>
       <tr><td>
         <TABLE  cellSpacing=4 cellPadding=0 width="100%" bgcolor=#eeeeff>
	<tr><td width=20%><b>User ID </b> </td>
	<td>:</td> 
		<td><input type="text" name="txt_UserName" size=35 maxlength=30 ></td>
	</tr>

	<tr><td><b>Password </b></td>
		<td> : </td>
		<td><input type="Password" name="txt_Password" size=35 maxlength=30></td>
	</tr>
	<tr><td><b>Gender  </b></td>
		<td>: </td>
		<td><input type="radio" name="rad_Gender" value="M" CHECKED><b>Male </b><input type="radio" name="rad_Gender" value="F" ><b>Female </b></td>
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
	<td><input type="text" name="txt_FName" size=35 maxlength=30></td>
	</tr>
	<tr><td><b>Last Name </b></td>
	<td> : </td>
	<td><input type="text" name="txt_LName" size=35 maxlength=30></td>
	</tr>
</table></tr></td></table>

<tr><td colspan=3>&nbsp</td></tr>

<br>
<tr bgcolor=8564879><td colspan=3 ><font  size=4 color=yellow><b>Your Address</b></font></td></tr>


<table cellSpacing=1 cellPadding=2 width="100%" bgColor=orange  border=0>
       <tr><td>
         <TABLE  cellSpacing=4 cellPadding=0 width="100%" bgColor=#eeeeff>
<tr><td width=20%><b>Street Address  </b></td>
	<td>: </td>
	<td><TEXTAREA name="txt_Address" rows=3 cols=40></TEXTAREA> </td></tr>

<tr><td><b>Zip Code  </b></td>
	<td>: </td>
	<td><input type="text" name="txt_Code" size=35 maxlength=30></td></tr>
<tr><td><b>City </b> </td>
	<td>: </td>
	<td><input type="text" name="txt_City" size=35 maxlength=30></td></tr>
<tr><td><b>State  </b></td>
	<td>: </td>
	<td><SELECT 
                  id="cmd_state_list" name="cmd_state_list"> <OPTION value="" 
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
                    value=Chhattisgarh>Chhattisgarh</OPTION> <OPTION 
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
	<td><SELECT id="cmd_country" onchange=chg_state() name="cmd_Country"> 
                    <OPTION value=India>India</OPTION> <OPTION 
                    value=Afghanistan>Afghanistan</OPTION> <OPTION 
                    value=""></OPTION> <OPTION value=Albania>Albania</OPTION> 
                    <OPTION value=Algeria>Algeria</OPTION> <OPTION 
                    value="American Samoa">American Samoa</OPTION> <OPTION 
                    value=Andorra>Andorra</OPTION> <OPTION 
                    value=Angola>Angola</OPTION> <OPTION 
                    value=Anguilla>Anguilla</OPTION> <OPTION 
                    value="Antigua and Barbuda">Antigua and Barbuda</OPTION> 
                    <OPTION value=Argentina>Argentina</OPTION> <OPTION 
                    value=Armenia>Armenia</OPTION> <OPTION 
                    value=Aruba>Aruba</OPTION> <OPTION 
                    value=Australia>Australia</OPTION> <OPTION 
                    value=Austria>Austria</OPTION> <OPTION 
                    value=Azerbaijan>Azerbaijan</OPTION> <OPTION 
                    value=Bahamas>Bahamas</OPTION> <OPTION 
                    value=Bahrain>Bahrain</OPTION> <OPTION 
                    value=Bangladesh>Bangladesh</OPTION> <OPTION 
                    value=Barbados>Barbados</OPTION> <OPTION 
                    value=Belarus>Belarus</OPTION> <OPTION 
                    value=Belgium>Belgium</OPTION> <OPTION 
                    value=Belize>Belize</OPTION> <OPTION 
                    value=Benin>Benin</OPTION> <OPTION 
                    value=Bermuda>Bermuda</OPTION> <OPTION 
                    value=Bhutan>Bhutan</OPTION> <OPTION 
                    value=Bolivia>Bolivia</OPTION> <OPTION 
                    value="Bosnia and Herzegovina">Bosnia and 
                    Herzegovina</OPTION> <OPTION 
                    value=Botswana>Botswana</OPTION> <OPTION 
                    value=Brazil>Brazil</OPTION> <OPTION 
                    value="British Virgin Islands">British Virgin 
                    Islands</OPTION> <OPTION value="Brunei Darussalam">Brunei 
                    Darussalam</OPTION> <OPTION value=Bulgaria>Bulgaria</OPTION> 
                    <OPTION value="Burkina Faso">Burkina Faso</OPTION> <OPTION 
                    value=Burundi>Burundi</OPTION> <OPTION 
                    value=Cambodia>Cambodia</OPTION> <OPTION 
                    value=Cameroon>Cameroon</OPTION> <OPTION 
                    value=Canada>Canada</OPTION> <OPTION value="Cape Verde">Cape 
                    Verde</OPTION> <OPTION value="Cayman Islands">Cayman 
                    Islands</OPTION> <OPTION 
                    value="Central African Republic">Central African 
                    Republic</OPTION> <OPTION value=Chad>Chad</OPTION> <OPTION 
                    value="Channel Islands">Channel Islands</OPTION> <OPTION 
                    value=Chile>Chile</OPTION> <OPTION 
                    value=China>China</OPTION> <OPTION 
                    value=Colombia>Colombia</OPTION> <OPTION 
                    value=Comoros>Comoros</OPTION> <OPTION 
                    value=Congo>Congo</OPTION> <OPTION value="Cook Islands">Cook 
                    Islands</OPTION> <OPTION value="Costa Rica">Costa 
                    Rica</OPTION> <OPTION value=C>C</OPTION> <OPTION 
                    value=Croatia>Croatia</OPTION> <OPTION 
                    value=Cuba>Cuba</OPTION> <OPTION 
                    value=Cyprus>Cyprus</OPTION> <OPTION 
                    value="Czech Republic">Czech Republic</OPTION> <OPTION 
                    value="Democratic Republic of the Congo">Democratic Republic 
                    of the Congo</OPTION> <OPTION value=Denmark>Denmark</OPTION> 
                    <OPTION value=Djibouti>Djibouti</OPTION> <OPTION 
                    value=Dominica>Dominica</OPTION> <OPTION 
                    value="Dominican Republic">Dominican Republic</OPTION> 
                    <OPTION value=Ecuador>Ecuador</OPTION> <OPTION 
                    value=Egypt>Egypt</OPTION> <OPTION value="El Salvador">El 
                    Salvador</OPTION> <OPTION 
                    value="Equatorial Guinea">Equatorial Guinea</OPTION> <OPTION 
                    value=Eritrea>Eritrea</OPTION> <OPTION 
                    value=Estonia>Estonia</OPTION> <OPTION 
                    value=Ethiopia>Ethiopia</OPTION> <OPTION 
                    value="Faeroe Islands">Faeroe Islands</OPTION> <OPTION 
                    value="Falkland Islands (Malvinas)">Falkland Islands 
                    (Malvinas)</OPTION> <OPTION value=Fiji>Fiji</OPTION> <OPTION 
                    value=Finland>Finland</OPTION> <OPTION 
                    value=France>France</OPTION> <OPTION 
                    value="French Guiana">French Guiana</OPTION> <OPTION 
                    value="French Polynesia">French Polynesia</OPTION> <OPTION 
                    value=Gabon>Gabon</OPTION> <OPTION 
                    value=Gambia>Gambia</OPTION> <OPTION 
                    value=Georgia>Georgia</OPTION> <OPTION 
                    value=Germany>Germany</OPTION> <OPTION 
                    value=Ghana>Ghana</OPTION> <OPTION 
                    value=Gibraltar>Gibraltar</OPTION> <OPTION 
                    value=Greece>Greece</OPTION> <OPTION 
                    value=Greenland>Greenland</OPTION> <OPTION 
                    value=Grenada>Grenada</OPTION> <OPTION 
                    value=Guadeloupe>Guadeloupe</OPTION> <OPTION 
                    value=Guam>Guam</OPTION> <OPTION 
                    value=Guatemala>Guatemala</OPTION> <OPTION 
                    value=Guernsey>Guernsey</OPTION> <OPTION 
                    value=Guinea>Guinea</OPTION> <OPTION 
                    value=Guinea-Bissau>Guinea-Bissau</OPTION> <OPTION 
                    value=Guyana>Guyana</OPTION> <OPTION 
                    value=Haiti>Haiti</OPTION> <OPTION value="Holy See">Holy 
                    See</OPTION> <OPTION value=Honduras>Honduras</OPTION> 
                    <OPTION value="Hong Kong">Hong Kong</OPTION> <OPTION 
                    value=Hungary>Hungary</OPTION> <OPTION 
                    value=Iceland>Iceland</OPTION> <OPTION value=India 
                    selected>India</OPTION> <OPTION 
                    value=Indonesia>Indonesia</OPTION> <OPTION 
                    value=Iran>Iran</OPTION> <OPTION value=Iraq>Iraq</OPTION> 
                    <OPTION value=Ireland>Ireland</OPTION> <OPTION 
                    value="Isle of Man">Isle of Man</OPTION> <OPTION 
                    value=Israel>Israel</OPTION> <OPTION 
                    value=Italy>Italy</OPTION> <OPTION 
                    value=Jamaica>Jamaica</OPTION> <OPTION 
                    value=Japan>Japan</OPTION> <OPTION 
                    value=Jersey>Jersey</OPTION> <OPTION 
                    value=Jordan>Jordan</OPTION> <OPTION 
                    value=Kazakhstan>Kazakhstan</OPTION> <OPTION 
                    value=Kenya>Kenya</OPTION> <OPTION 
                    value=Kiribati>Kiribati</OPTION> <OPTION 
                    value=Kuwait>Kuwait</OPTION> <OPTION 
                    value=Kyrgyzstan>Kyrgyzstan</OPTION> <OPTION 
                    value=Laos>Laos</OPTION> <OPTION 
                    value=Latvia>Latvia</OPTION> <OPTION 
                    value=Lebanon>Lebanon</OPTION> <OPTION 
                    value=Lesotho>Lesotho</OPTION> <OPTION 
                    value=Liberia>Liberia</OPTION> <OPTION 
                    value="Libyan Arab Jamahiriya">Libyan Arab 
                    Jamahiriya</OPTION> <OPTION 
                    value=Liechtenstein>Liechtenstein</OPTION> <OPTION 
                    value=Lithuania>Lithuania</OPTION> <OPTION 
                    value=Luxembourg>Luxembourg</OPTION> <OPTION 
                    value=Macao>Macao</OPTION> <OPTION 
                    value=Madagascar>Madagascar</OPTION> <OPTION 
                    value=Malawi>Malawi</OPTION> <OPTION 
                    value=Malaysia>Malaysia</OPTION> <OPTION 
                    value=Maldives>Maldives</OPTION> <OPTION 
                    value=Mali>Mali</OPTION> <OPTION value=Malta>Malta</OPTION> 
                    <OPTION value="Marshall Islands">Marshall Islands</OPTION> 
                    <OPTION value=Martinique>Martinique</OPTION> <OPTION 
                    value=Mauritania>Mauritania</OPTION> <OPTION 
                    value=Mauritius>Mauritius</OPTION> <OPTION 
                    value=Mayotte>Mayotte</OPTION> <OPTION 
                    value=Mexico>Mexico</OPTION> <OPTION 
                    value="Micronesia, Federated States of">Micronesia, 
                    Federated States of</OPTION> <OPTION 
                    value=Monaco>Monaco</OPTION> <OPTION 
                    value=Mongolia>Mongolia</OPTION> <OPTION 
                    value=Montenegro>Montenegro</OPTION> <OPTION 
                    value=Montserrat>Montserrat</OPTION> <OPTION 
                    value=Morocco>Morocco</OPTION> <OPTION 
                    value=Mozambique>Mozambique</OPTION> <OPTION 
                    value=Myanmar>Myanmar</OPTION> <OPTION 
                    value=Namibia>Namibia</OPTION> <OPTION 
                    value=Nauru>Nauru</OPTION> <OPTION 
                    value=Nepal>Nepal</OPTION> <OPTION 
                    value=Netherlands>Netherlands</OPTION> <OPTION 
                    value="Netherlands Antilles">Netherlands Antilles</OPTION> 
                    <OPTION value="New Caledonia">New Caledonia</OPTION> <OPTION 
                    value="New Zealand">New Zealand</OPTION> <OPTION 
                    value=Nicaragua>Nicaragua</OPTION> <OPTION 
                    value=Niger>Niger</OPTION> <OPTION 
                    value=Nigeria>Nigeria</OPTION> <OPTION 
                    value=Niue>Niue</OPTION> <OPTION 
                    value="Norfolk Island">Norfolk Island</OPTION> <OPTION 
                    value="North Korea">North Korea</OPTION> <OPTION 
                    value="Northern Mariana Islands">Northern Mariana 
                    Islands</OPTION> <OPTION value=Norway>Norway</OPTION> 
                    <OPTION value="Occupied Palestinian Territory">Occupied 
                    Palestinian Territory</OPTION> <OPTION 
                    value=Oman>Oman</OPTION> <OPTION 
                    value=Pakistan>Pakistan</OPTION> <OPTION 
                    value=Palau>Palau</OPTION> <OPTION 
                    value=Panama>Panama</OPTION> <OPTION 
                    value="Papua New Guinea">Papua New Guinea</OPTION> <OPTION 
                    value=Paraguay>Paraguay</OPTION> <OPTION 
                    value=Peru>Peru</OPTION> <OPTION 
                    value=Philippines>Philippines</OPTION> <OPTION 
                    value=Pitcairn>Pitcairn</OPTION> <OPTION 
                    value=Poland>Poland</OPTION> <OPTION 
                    value=Portugal>Portugal</OPTION> <OPTION 
                    value="Puerto Rico">Puerto Rico</OPTION> <OPTION 
                    value=Qatar>Qatar</OPTION> <OPTION 
                    value="Republic of Moldova">Republic of Moldova</OPTION> 
                    <OPTION value=R>R</OPTION> <OPTION 
                    value=Romania>Romania</OPTION> <OPTION 
                    value="Russian Federation">Russian Federation</OPTION> 
                    <OPTION value=Rwanda>Rwanda</OPTION> <OPTION 
                    value="Saint Helena">Saint Helena</OPTION> <OPTION 
                    value="Saint Kitts and Nevis">Saint Kitts and Nevis</OPTION> 
                    <OPTION value="Saint Lucia">Saint Lucia</OPTION> <OPTION 
                    value="Saint Pierre and Miquelon">Saint Pierre and 
                    Miquelon</OPTION> <OPTION 
                    value="Saint Vincent and the Grenadines">Saint Vincent and 
                    the Grenadines</OPTION> <OPTION value=Samoa>Samoa</OPTION> 
                    <OPTION value="San Marino">San Marino</OPTION> <OPTION 
                    value="Sao Tome and Principe">Sao Tome and Principe</OPTION> 
                    <OPTION value="Saudi Arabia">Saudi Arabia</OPTION> <OPTION 
                    value=Senegal>Senegal</OPTION> <OPTION 
                    value=Serbia>Serbia</OPTION> <OPTION 
                    value=Seychelles>Seychelles</OPTION> <OPTION 
                    value="Sierra Leone">Sierra Leone</OPTION> <OPTION 
                    value=Singapore>Singapore</OPTION> <OPTION 
                    value=Slovakia>Slovakia</OPTION> <OPTION 
                    value=Slovenia>Slovenia</OPTION> <OPTION 
                    value="Solomon Islands">Solomon Islands</OPTION> <OPTION 
                    value=Somalia>Somalia</OPTION> <OPTION 
                    value="South Africa">South Africa</OPTION> <OPTION 
                    value="South Korea">South Korea</OPTION> <OPTION 
                    value=Spain>Spain</OPTION> <OPTION value="Sri Lanka">Sri 
                    Lanka</OPTION> <OPTION value=Sudan>Sudan</OPTION> <OPTION 
                    value=Suriname>Suriname</OPTION> <OPTION 
                    value="Svalbard and Jan Mayen Islands">Svalbard and Jan 
                    Mayen Islands</OPTION> <OPTION 
                    value=Swaziland>Swaziland</OPTION> <OPTION 
                    value=Sweden>Sweden</OPTION> <OPTION 
                    value=Switzerland>Switzerland</OPTION> <OPTION 
                    value=Syrian>Syrian</OPTION> <OPTION 
                    value=Tajikistan>Tajikistan</OPTION> <OPTION 
                    value=Thailand>Thailand</OPTION> <OPTION 
                    value=Timor-Leste>Timor-Leste</OPTION> <OPTION 
                    value=Togo>Togo</OPTION> <OPTION 
                    value=Tokelau>Tokelau</OPTION> <OPTION 
                    value=Tonga>Tonga</OPTION> <OPTION 
                    value="Trinidad and Tobago">Trinidad and Tobago</OPTION> 
                    <OPTION value=Tunisia>Tunisia</OPTION> <OPTION 
                    value=Turkey>Turkey</OPTION> <OPTION 
                    value=Turkmenistan>Turkmenistan</OPTION> <OPTION 
                    value="Turks and Caicos Islands">Turks and Caicos 
                    Islands</OPTION> <OPTION value=Tuvalu>Tuvalu</OPTION> 
                    <OPTION value=Uganda>Uganda</OPTION> <OPTION 
                    value=Ukraine>Ukraine</OPTION> <OPTION 
                    value="United Arab Emirates">United Arab Emirates</OPTION> 
                    <OPTION value="United Kingdom">United Kingdom</OPTION> 
                    <OPTION value="United Republic of Tanzania">United Republic 
                    of Tanzania</OPTION> <OPTION 
                    value="United States of America">United States of 
                    America</OPTION> <OPTION 
                    value="United States Virgin Islands">United States Virgin 
                    Islands</OPTION> <OPTION value=Uruguay>Uruguay</OPTION> 
                    <OPTION value=Uzbekistan>Uzbekistan</OPTION> <OPTION 
                    value=Vanuatu>Vanuatu</OPTION> <OPTION 
                    value=Venezuela>Venezuela</OPTION> <OPTION 
                    value="Viet Nam">Viet Nam</OPTION> <OPTION 
                    value="Wallis and Futuna Islands">Wallis and Futuna 
                    Islands</OPTION> <OPTION value="Western Sahara">Western 
                    Sahara</OPTION> <OPTION value=Yemen>Yemen</OPTION> <OPTION 
                    value=Zambia>Zambia</OPTION> <OPTION 
                    value=Zimbabwe>Zimbabwe</OPTION></SELECT> </td></tr>


</table></tr></td></table>
<tr><td colspan=3>&nbsp</td></tr>
<br>
<tr bgcolor=8564879><td colspan=3 ><font  size=4 color=yellow><b>Your Contact Information</b></font></td></tr>

<table cellSpacing=1 cellPadding=2 width="100%" bgColor=orange  border=0>
       <tr><td>
         <TABLE  cellSpacing=4 cellPadding=0 width="100%" bgColor=#eeeeff>
<tr><td width=20%><b>Email Address </b> </td>
	<td>: </td>
	<td><input type="text" name="txt_Email" size=35 maxlength=30></td></tr>
<tr><td><b>Telephone Number  </b></td>
	<td>: </td>
	<td><input type="text" name="txt_TelNo" size=35 maxlength=30></td></tr>
<tr><td><b>Fax Number  </b></td>
	<td>: </td>
	<td><input type="text" name="txt_FxNo" size=35 maxlength=30></td></tr>
<tr><td><b>Mobile Number  </b></td>
	<td>: </td>
	<td><input type="text" name="txt_Mobile" size=35 maxlength=30></td></tr>

<tr><td colspan=3>&nbsp</td></tr>
<tr><td colspan=3 align=center>


	<input type="submit" name="Submit" value="Submit" onClick="JavaScript:return CheckEmpty();">

	
	&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	
	
	<input type="reset" name="Reset" value="Reset">


</td></tr>
<tr><td colspan=3>&nbsp</td></tr>
</table></tr></td></table>
</table>
<hr>
<center><img src="D:/PATHFINDER/Images/Advertise.gif" width="600" height="50"  >
	<br><br><font color=white><b>© 2010 All rights reserved. </b></font></center>
</center>

</body>
</html>

