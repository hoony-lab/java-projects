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
<head><title>��Ű����</title></head>
<body>
�α��ο� �����߽��ϴ�.<br/>
<a href="LoginCheck.jsp">LoginCheck</a>
</body>
</html>
<% }else{ %>
<script>
alert("�α��� ����");
history.go(-1);
</script>
<% } %>









