<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String id = (String)session.getAttribute("id");
	String lvl = "";
	String auth = "";
	
	if ("admin".contentEquals(id)){
		lvl = "3";
		auth = "<li>�б�</li><li>����</li><li>����</li>";
	}
	else if ("jin".contentEquals(id)){
		lvl = "2";
		auth = "<li>�б�</li><li>����</li>";
	}
	else{
		lvl = "1";
		auth = "<li>�б�</li>";
	}
	
%>
<p align="center">
	<h1 align="center">Level <%=lvl %> Authorization</h1>
	<hr>
	<%=auth %>
</p>
