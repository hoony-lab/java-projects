<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
	
<%
	Calendar cal = (Calendar)request.getAttribute("time");
%>

���� �ð��� <%=cal.get(Calendar.HOUR) %>��
<%=cal.get(Calendar.MINUTE) %>��
<%=cal.get(Calendar.SECOND) %>��
