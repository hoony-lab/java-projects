<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
String usrId = request.getParameter("usrId");
String pw = request.getParameter("pw");
String msg = "";

if("admin".equals(usrId) && "0".equals(pw))
	msg = "You are Admin";
else if("park".equals(usrId) && "1".equals(pw))
	msg = "Hello Mr. and Mrs."+usrId;
else
	msg = "WTF Who the hell are you";


out.print(msg);


%>
