<html>
<body background="Images/blue.jpg">
<center>
<font size=5 face="verdhana" color=orange>	
<h><u><b>
Categeory</h><br><br>
</font>
<center>

<b><u>

<table valign="top" bgcolor=pink  border=0>

<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%! Connection con=null; %> 
<%! Statement st= null; %> 
<%! ResultSet rs= null; %> 

<% 

try { 
	Class.forName("org.postgresql.Driver").newInstance();
}catch(ClassNotFoundException ce){out.println(ce);} 

try{ 
 
     con = DriverManager.getConnection("jdbc:postgresql://localhost/property","nitin","nitin144");

	st = con.createStatement(); 
	rs = st.executeQuery("select cat_id ,cat_name from category"); 

int cat_id = 0; 
String cat_name = ""; 

while(rs.next()) { 

cat_id = rs.getInt(1); 
cat_name = rs.getString(2); 

%>

<tr>
		<td bgcolor=pink><br><a href="?cat_id=<%=cat_id%>" target=main><B><li><%=cat_name%></B></a>
		</td>

</tr>

<%
} 

}catch(SQLException exception){ 

} 

%> 

</table>

</font>
</center>
</body>
</html>
