<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String company = "CARE Lab";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>include ��Ƽ��</title>
</head>
<body>
<h1>���� ȸ��</h1>
<hr/>
<h3>����<br/>����<br/>ȸ��</h3>
<hr/>
<%@ include file="includee.jspf" %>
<%=copyRight %>
</body>
</html>


