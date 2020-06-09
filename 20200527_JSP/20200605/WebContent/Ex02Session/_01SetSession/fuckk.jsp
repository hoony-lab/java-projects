<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	Date date = new Date();
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
date : <%=date %><br>
formatter : <%=formatter.format(date)%><br>

<hr>
세션 ID : <%=session.getId() %> <br>
<% 
	date.setTime(session.getCreationTime());
	out.print("세션 생성 시간 : " + formatter.format(date));
	
	date.setTime(session.getLastAccessedTime());
	out.print("<br>최근 접속 시간 : " + formatter.format(date));
%>
</body>
</html>