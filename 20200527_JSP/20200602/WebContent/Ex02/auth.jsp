<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<jsp:useBean id="mail" class="javaBean.test.GmailSend" scope="application"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Gmail Send Test</title>
</head>
<body>

<!-- GmailSet(user, title, content) -->
<%=mail.GmailSet("jihun9838@gmail.com",
		"mailing test from acorn admin",
		"hi there, this is mailing test !") %>
</body>
</html>