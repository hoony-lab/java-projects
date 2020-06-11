<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	session.removeAttribute("auth");
%>

<jsp:forward page="/index.jsp">
	<jsp:param value="home" name="frmPage" />
</jsp:forward>