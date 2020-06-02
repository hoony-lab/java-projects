<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%!
	public String getGroup(String id){
		String group = "";
		if("".contentEquals(id))			group = "r";
		else if("jin".contentEquals(id))	group = "rw";
		else if("admin".contentEquals(id))	group = "rwx";
		return group;
	}
%>

<%
	String id = request.getParameter("id");
	String newPage = "loginInfo.jsp";
	
	if("".contentEquals(id))
		newPage = "loginForm.jsp";
	
/* 	if ("admin".contentEquals(id))
		newPage = "loginInfo/lvl3.jsp";
	else if ("jin".contentEquals(id))
		newPage = "loginInfo/lvl2.jsp";
	else if("".contentEquals(id))
		newPage = "loginForm.jsp";
	else
		newPage = "loginInfo/lvl1.jsp"; */
%>

<jsp:forward page="<%=newPage %>"></jsp:forward>