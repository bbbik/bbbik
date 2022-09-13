<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jstl/core' %>

<%
	pageContext.setAttribute("one", "페이지"); //페이지가 최초로 실행될때?
	request.setAttribute("two", "리퀘스트"); //클라이언트가 최초로 리퀘스트를 보낼떄 서버에 생긴다.리스펀스를 보내기전에는 리퀘스트는 살아있고, 페이지는 죽는다.
	session.setAttribute("three", "세션"); //클라이언트와 서버 사이를 연결해준다? 논리적인 연결, 세션객체
	application.setAttribute("four", "애플리케이션"); //내 앱을 나타내는 객체
%>
<c:redirect url='1.scopeB.jsp'/>