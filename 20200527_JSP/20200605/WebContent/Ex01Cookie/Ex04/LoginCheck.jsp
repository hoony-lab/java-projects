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
<title>�α��� ���� �˻�</title>
</head>
<body>
<%
	if(cookie != null){
		out.print("���̵� : "+cookie.getValue()+"�� �α����� ����");
	}else{
		out.print("�α׾ƿ� �����Դϴ�.");
	}
%>
<br/>
<a href="Logout.jsp">Logout</a>
</body>
</html>









