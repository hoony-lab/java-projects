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
		out.print("���̵� : " + cookie.getValue() + "����");
	else
		out.print("�α׾ƿ��� ���� !");
	%>

	<br>
	<a href="logout.jsp">Logout</a>
</body>
</html>