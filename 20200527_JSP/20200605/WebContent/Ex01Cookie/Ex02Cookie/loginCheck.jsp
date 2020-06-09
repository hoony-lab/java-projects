<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<jsp:useBean id="myCookie" class="cookie.MyCookie" />
<%
	Cookie cookie = myCookie.getCookie(request, "auth");
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%
		if (cookie != null)
		out.print("아이디 : " + cookie.getValue() + "하위");
	else
		out.print("로그아웃한 상태 !");
	%>

	<br>
	<a href="logout.jsp">Logout</a>
</body>
</html>