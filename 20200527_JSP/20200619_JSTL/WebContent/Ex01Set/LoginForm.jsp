<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="LoginProc.jsp" method="post">
<table>
	<tr>
		<td>아이디</td>
		<td><input type=text name='id'/></td>
	</tr>
	<tr>
		<td>패스워드</td>
		<td><input type=password name='pw'/></td>
	</tr>
	<tr>
		<td colspan=2 align="center">
			<input type=submit value='로그인' style="width: 100px; "/>
			<input type="reset" value='취소' style="width: 100px; "/>
		</td>
	</tr>
</table>
</form>
</body>
</html>