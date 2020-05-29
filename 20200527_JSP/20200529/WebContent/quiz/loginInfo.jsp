<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%
	String id = request.getParameter("id");	
	if("admin".contentEquals(id)) 		page = "loginInfo/lvl3.jsp";
	else if("jin".contentEquals(id)) 	page = "loginInfo/lvl2.jsp";
	else								page = "loginInfo/lvl1.jsp";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>쿠팡!!</title>
</head>
<body>
	
</body>
</html>