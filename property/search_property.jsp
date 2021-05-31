<html>
<body>
<form method=post action="index.jsp">
<input type=hidden value=searchProperty name=userAction>
<table bgcolor=pink width=100% >

<tr ><td  colspan=5>
<font color=black size=3 face=verdhana><h><b><br> 
I WANT TO 

<select name="property_type">
 <option value=sell>Buy</option>
 <option value=rent>On Rent</option>
 </select>
 A 
 <select name="property_cat">
  <option value=>Select Category</option>
 <option value=Appartment>Appartment</option>
 <option value=flat>Flat</option>
  <option value=land>Land</option>
  <option value=plots>Plots</option>
 <option value=shops>Shops</option>
 <option value=commercial>Commercial office</option>
  <option value=bungalo>Bungalo</option>
  <option value=rowhouse>Row House</option>
 </select>
 
 IN
 <select name="property_location">
  <option value="">Location</option>
 <option value=Dhankawadi>Dhankawadi</option>
 <option value=Varje>Varje</option>
  <option value=Katraj>Katraj</option>
  <option value=Kothrud>Kothrud</option>
 <option value=Hadapsar>Hadapsar</option>
 <option value=Deccan>Deccan</option>
  <option value=Pimpari>Pimpari</option>
  <option value=Ambegaon>Ambegaon</option>
 </select>
</td></tr></font>
<tr ><td><font size=4><br>
Please, Select one or more criteria and click to Button <h>"Refine Search"</h> 
To <br>Filter Reasult  and See the result below. 
</td></tr>
<tr><td><font size=4><br>
Budget From Rs. 
<input type=text name=lower size=4> TO
<input type=text name=upper size=4> 
</td></tr>

<tr ><td>&nbsp</td></tr>
<tr ><td align=center><br>
<input type=submit value="Refine Search"><br><br></td></tr>
</table>
</form>
</body>
</html>
