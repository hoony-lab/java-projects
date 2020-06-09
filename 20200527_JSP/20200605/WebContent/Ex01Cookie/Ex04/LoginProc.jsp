<%--LoginProc.jsp --%>
<%@page import="cookie.MyCookie"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	if(id.contentEquals(pw)){
		response.addCookie(MyCookie.CreateCookie("AUTH", id));
%>
<html>
<head><title>쿠키생성</title></head>
<body>
로그인에 성공했습니다.<br/>
<a href="LoginCheck.jsp">LoginCheck</a>
</body>
</html>
<% }else{ %>
<script>
alert("로그인 실패");
history.go(-1);
</script>
<% } %>









