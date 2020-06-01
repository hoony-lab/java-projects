<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	/* String name = request.getParameter("name"); */
	request.setAttribute("name", request.getParameter("name"));
	String id = request.getParameter("id");
%>

<%-- <jsp:forward page = "<%=newPage %>"></jsp:forward> --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>OK</title>
</head>
<body align="center">
	<h1>회원가입 ㅊㅋ</h1>
	<!-- <form action="changeInfo.jsp" method="get"> -->
	<form action="signUpForm.jsp" method="get">
<%-- 		<input type="hidden" name="name" value="<%=name %>"/> --%>
		<input type="hidden" name="state" value="modify"/>
		<input type="hidden" name="name" value="<%=request.getAttribute("name")%>"/>
		<input type="hidden" name="id" value="<%=id %>"/>
		<input type="submit" value="수정" />
	</form>
</body>
</html>