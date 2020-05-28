<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String company = "CARE Lab";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>include 디렉티브</title>
</head>
<body>
<h1>좋은 회사</h1>
<hr/>
<h3>정말<br/>좋은<br/>회사</h3>
<hr/>
<%@ include file="includee.jspf" %>
<%=copyRight %>
</body>
</html>


