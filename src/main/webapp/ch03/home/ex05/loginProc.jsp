<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jstl/core' %>
<%	
	String userId = "java", userPwd= "java";
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
%>

<% 
	if(id.equals(userId) && pwd.equals(userPwd)) {
%>
	<c:redirect url='logout.jsp'/>
<%
	} else { 
%>
	<c:redirect url='login.jsp?msg=login fail'/>
<%
	}
%>