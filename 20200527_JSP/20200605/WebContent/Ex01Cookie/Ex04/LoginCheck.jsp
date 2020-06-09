<%--LoginCheck.jsp --%>
<%@page import="cookie.MyCookie"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	Cookie cookie = MyCookie.getCookie(request, "AUTH");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인 여부 검사</title>
</head>
<body>
<%
	if(cookie != null){
		out.print("아이디 : "+cookie.getValue()+"로 로그인한 상태");
	}else{
		out.print("로그아웃 상태입니다.");
	}
%>
<br/>
<a href="Logout.jsp">Logout</a>
</body>
</html>









