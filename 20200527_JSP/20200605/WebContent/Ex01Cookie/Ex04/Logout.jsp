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
<title>로그아웃</title>
</head>
<body>
로그아웃 하였습니다.
<br/>
<a href="LoginCheck.jsp">LoginCheck</a>
</body>
</html>









