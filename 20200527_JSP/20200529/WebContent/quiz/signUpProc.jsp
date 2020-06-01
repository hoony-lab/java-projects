<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String newPage = "signUpForm.jsp";

	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String pwCheck = request.getParameter("pwCheck");
	
	if (id.isEmpty() || name.isEmpty() || pw.isEmpty() || pwCheck.isEmpty()) {
		//out.print("<script>alert('please type all info !!!')</script>");
		newPage = "signUpForm.jsp";
	} else if (!pw.contentEquals(pwCheck)) {
		//out.print("<script>alert('wrong check pw!!!')</script>");
		newPage = "signUpForm.jsp";
	} else
		newPage = "signUpOk.jsp";
%>


<jsp:forward page="<%=newPage%>"></jsp:forward>