<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
// �������� �ؼ����ϰ� Ŭ����Ʈ���� throw
	for(int i = 0 ; i < 10 ; ++i){
		out.print(i);
%><br><%
	}
%>
<hr>
<%
	for(int i = 10 ; i < 20 ; ++i)	out.print(i+"<br>");
%>
</body>
</html>