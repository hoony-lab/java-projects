<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<jsp:useBean id="myCookie" class="cookie.MyCookie" />

<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");

	if(id.contentEquals(pw))
		response.addCookie(myCookie.CreateCookie("auth", id));
	
	String name = "HOHO's";
	String value = "BLM";

// 	myCookie.CreateCookie(name, value);
// 	myCookie.CreateCookie(name, value, expiry);
// 	myCookie.CreateCookie(name, value, domain, uri, expiry, encode);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	id :
	<%=id%>
	<br> pw :
	<%=pw%>
	<br>
</body>
</html>