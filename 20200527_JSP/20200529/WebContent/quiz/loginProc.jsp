<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String id = request.getParameter("id");
	String newPage = "";
	
	if ("admin".contentEquals(id))
		newPage = "loginInfo/lvl3.jsp";
	else if ("jin".contentEquals(id))
		newPage = "loginInfo/lvl2.jsp";
	else if("".contentEquals(id)){
		out.print("alert('Please type your ID !!!')");
		newPage = "loginForm.jsp";
	}
		
	else
		newPage = "loginInfo/lvl1.jsp";
%>
<jsp:forward page="<%=newPage %>"></jsp:forward>