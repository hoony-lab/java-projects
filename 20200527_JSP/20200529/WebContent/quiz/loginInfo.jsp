<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%
	String id = request.getParameter("id");
	 session.setAttribute("id", id);

String newPage = "";
if ("admin".contentEquals(id))
	newPage = "loginInfo/lvl3.jspf";
else if ("jin".contentEquals(id))
	newPage = "loginInfo/lvl2.jspf";
else
	newPage = "loginInfo/lvl1.jspf";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>쿠팡!!</title>
</head>
<body>
	<div>
		<%-- <%@ include file="loginInfo/lvl1.jspf"%> --%>
		<%-- <jsp:include page="<%=newPage %>"/> --%>
		
		<jsp:include page="loginInfo/lvl.jsp"/>
			<%-- <jsp:param value="<%id %>" name="id"/> --%>
	</div>

	<div>

		<button action="loginForm.jsp">로그인 페이지</button>
		<a type="button" class="btn" href="loginForm.jsp">Link</a>
		<button class="btn" type="submit" formaction="loginForm.jsp">Button</button>
		<input class="btn" type="button" value="Input"
			formaction="loginForm.jsp">
		<form action="loginForm.jsp">
			<input type="submit" value="Submit" action="loginForm.jsp">
		</form>
	</div>
</html>