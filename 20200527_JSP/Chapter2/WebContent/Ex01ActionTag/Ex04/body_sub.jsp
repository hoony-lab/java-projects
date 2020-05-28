<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

body_sub에서 name 파라미터 값 : <%=request.getParameter("name") %>
<br/>
<ul>
<%
	String [] names = request.getParameterValues("name");

	for(String name : names)
		out.print("<li>"+name+"</li>");
%>
</ul>