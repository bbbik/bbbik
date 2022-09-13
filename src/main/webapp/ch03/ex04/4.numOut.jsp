<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jstl/core' %>
<%
	String numStr = request.getParameter("num");
	
	try {
		int num = Integer.parseInt(numStr);
%> 
	<%= num * 2 %>
	<a href='4.numIn.jsp'>뒤로</a> 

<%
	} catch(NumberFormatException e) {
%>
	<%-- 과제: numIn.jsp form에 에러메세지를(영어)를 출력하라. --%>
	<c:redirect url='4.numIn.jsp?msg=Input number.'/>
<%
	}
%>