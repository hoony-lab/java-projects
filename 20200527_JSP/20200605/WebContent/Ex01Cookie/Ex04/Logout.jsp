<%--Logout.jsp --%>
<%@page import="cookie.MyCookie"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	response.addCookie( MyCookie.ExpiredCookie("AUTH", "", 0));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�α׾ƿ�</title>
</head>
<body>
�α׾ƿ� �Ͽ����ϴ�.
<br/>
<a href="LoginCheck.jsp">LoginCheck</a>
</body>
</html>









