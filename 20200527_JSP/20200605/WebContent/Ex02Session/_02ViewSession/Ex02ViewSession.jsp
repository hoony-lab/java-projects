<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String id = (String)session.getAttribute("ID");
	String pw = (String)session.getAttribute("PW");
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1> 
ID = <%=id %><br>
PW = <%=pw %><br>
 </h1>
</body>
</html>