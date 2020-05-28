<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>body_sub</title>
</head>
<body>
	body_sub 후후 스팸방지는 후후 name 파라미터 값 :
	<%=request.getParameter("name") %>
	<br>

	<%
		String [] names = request.getParameterValues("name");
		for (String n : names)
			out.print("<li>" + n + "</li>");
	%>
</body>
</html>