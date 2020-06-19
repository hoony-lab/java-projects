<!-- searchProc.jsp -->
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	String searchSelect = request.getParameter("searchSelect");
	String search = request.getParameter("search");
	
	out.print(searchSelect);
	out.print(search);
	out.print(request.getParameter("curPage"));
%>
















