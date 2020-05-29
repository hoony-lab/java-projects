<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String newPage = "signUpForm.jsp";

	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String pwCheck = request.getParameter("pwCheck");
	
	if ("".contentEquals(id) || "".contentEquals(name) || "".contentEquals(pw) || "".contentEquals(pwCheck)) {
		out.print("alert('please type all info !!!')");
		newPage = "signUpForm.jsp";
	} else
		newPage = "signUpOk.jsp";
%>

<jsp:forward page="<%=newPage %>"></jsp:forward>