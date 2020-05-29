<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
	
<%
	Calendar cal = (Calendar)request.getAttribute("time");
%>

현재 시간은 <%=cal.get(Calendar.HOUR) %>시
<%=cal.get(Calendar.MINUTE) %>분
<%=cal.get(Calendar.SECOND) %>초
