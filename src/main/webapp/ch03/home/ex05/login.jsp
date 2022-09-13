<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<form action='loginProc.jsp' method='post'>
	아이디: <input type='text' name='id'/> <br>
	암호: <input type='password' name='pwd'/> <br>
	<input type='submit'/>
</form>
<%
	String msg = request.getParameter("msg");
%>

<%= msg != null ? msg : "" %>
