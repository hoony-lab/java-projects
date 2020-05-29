<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
	request.setCharacterEncoding("EUC-KR");
	String code = request.getParameter("code");
	String forwardPage = "viewModule/a.jsp";
	
	if("A".contentEquals(code)) forwardPage = "viewModule/a.jsp";
	else if("B".contentEquals(code)) forwardPage = "viewModule/b.jsp";
	else if("C".contentEquals(code)) forwardPage = "viewModule/c.jsp";
%>

<jsp:forward page="<%=forwardPage %>"/>