<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("EUC-KR");
	String data = request.getParameter("data");
	
	if("".contentEquals(data))
		data = "(���� �־�� ������ �����) �������";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
to.jsp
<hr>
�� ��� ~ <%=data %>
</body>
</html>