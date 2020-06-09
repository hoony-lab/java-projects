<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>haha image page</h1>


	<%
		Cookie[] cookies = request.getCookies();
		out.print("length : " + cookies.length + "<br>");
	if (cookies != null && cookies.length > 0) {
		for (int i = 0; i < cookies.length; ++i) {
			out.print("===========앙 쿠키 띠========<br>");
			out.print(cookies[i].getName() + " = " + cookies[i].getValue() + " <br>");

			out.print("===================================<br>");
			out.print(URLDecoder.decode(cookies[i].getName(), "EUC-KR") + " = " +
					URLDecoder.decode(cookies[i].getValue(), "EUC-KR") + " <br><br>");
			
		}
	}
	%>
</body>
</html>