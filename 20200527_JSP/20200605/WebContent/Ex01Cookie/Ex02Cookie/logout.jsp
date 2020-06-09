<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="myCookie" class="cookie.MyCookie"/>
    <%
    	response.addCookie(myCookie.ExpiredCookie("auth", "", 0));
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
로그아웃했습메;
<br>
<a href="loginCheck.jsp">LoginCheck</a>
</body>
</html>