<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>쿠팡!</title>
</head>

<body>
	<h1 align="center">Login</h1>
	<hr>

	<form action="loginProc.jsp" method="post">
		<table align="center">
			<tr>
				<td>아이디</td>
				<td colspan="2"><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td colspan="2"><input type="password" name="pw"></td>
			</tr>
			<tr>
				<td><button formaction="signUpForm.jsp">회원가입</button></td>
				<td><input type="submit" value="로그인" /></td>
				<td><input type="reset" value="취소" /></td>
			</tr>
		</table>
	</form>
</body>
</html>