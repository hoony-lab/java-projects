<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

body_sub���� name �Ķ���� �� : <%=request.getParameter("name") %>
<br/>
<ul>
<%
	String [] names = request.getParameterValues("name");

	for(String name : names)
		out.print("<li>"+name+"</li>");
%>
</ul>