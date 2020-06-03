<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<jsp:useBean id="mails" class="com.jin.mail.JinsMail"></jsp:useBean>
<jsp:setProperty name="mails" property="id" value="jihun9839@gmail.com"></jsp:setProperty>
<jsp:setProperty name="mails" property="pw" value="159357qeW@"></jsp:setProperty>

<%
	String sndUsrName = "jihun9839";
	String sndUsrEmail = "jihun9839@gmail.com";
	String recvUsrEmail = "jihun9839@gmail.com";
	String title = "Test from hoony";
	String contents = "HOHOs";
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Gmail Send Test</title>
</head>
<body>
<p>FUCK</p><hr>
	<%=mails.SendMail(sndUsrName, sndUsrEmail, recvUsrEmail, title, contents) %>
	
</body>
</html>
