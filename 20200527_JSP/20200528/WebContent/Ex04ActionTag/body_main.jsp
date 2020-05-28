<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>body_main</title>
</head>
<body>
	include 전 name 파라미터 값 : <%=request.getParameter("name")%>
	<hr>
	
	<jsp:include page="body_sub.jsp">
		<jsp:param value="priority" name="name"/>
	</jsp:include>
	
	<hr>
	include 전 name 파라미터 값 : <%=request.getParameter("name")%>
</body>
</html>