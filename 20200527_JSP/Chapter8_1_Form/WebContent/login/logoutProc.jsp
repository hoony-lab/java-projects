<%
	session.removeAttribute("auth");
%>

<jsp:forward page="/index.jsp">
	<jsp:param value="home" name="frmPage" />
</jsp:forward>