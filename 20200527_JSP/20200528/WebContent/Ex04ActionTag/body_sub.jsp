<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>body_sub</title>
</head>
<body>
	body_sub ���� ���Թ����� ���� name �Ķ���� �� :
	<%=request.getParameter("name") %>
	<br>

	<%
		String [] names = request.getParameterValues("name");
		for (String n : names)
			out.print("<li>" + n + "</li>");
	%>
</body>
</html>