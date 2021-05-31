<%@ page language="java" contentType="text/html" %>
<%
if(session.getAttribute("logindone")!=null){
	session.removeAttribute("logindone");
	session.removeAttribute("loginname");
	session.invalidate();
}%>
<jsp:forward page="logoutpage.jsp"/>

