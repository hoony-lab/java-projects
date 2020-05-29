<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("EUC-KR");
	String data = request.getParameter("data");
	
	if("".contentEquals(data))
		data = "(값좀 넣어라 개발자 힘들다) 비어있음";
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
앙 모띠 ~ <%=data %>
</body>
</html>