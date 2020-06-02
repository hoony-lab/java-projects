<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<form action="loginProc.jsp" method="post">
		<table>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td><input type="text" name="pw"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
				<td><input type="submit" value="로그인"></td>
				<td><input type="reset" value="취소"></td>
			</tr>
		</table>

	</form>
</body>
</html>