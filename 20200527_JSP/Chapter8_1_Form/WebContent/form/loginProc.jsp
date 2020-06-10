<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	String frmPage = "loginForm";
	if(id.contentEquals(pw)){
		frmPage = "home";
		session.setAttribute("auth", id);
	}
	
%>

<jsp:forward page="/index.jsp">
	<jsp:param value="<%=frmPage %>" name="frmPage"/>
</jsp:forward>