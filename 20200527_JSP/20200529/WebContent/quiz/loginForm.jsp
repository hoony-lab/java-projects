<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>����!</title>
</head>

<body>
	<h1 align="center">Login</h1>
	<hr>

	<form action="loginProc.jsp" method="post">
		<table align="center">
			<tr>
				<td>���̵�</td>
				<td colspan="2"><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>�н�����</td>
				<td colspan="2"><input type="password" name="pw"></td>
			</tr>
			<tr>
				<td><button formaction="signUpForm.jsp">ȸ������</button></td>
				<td><input type="submit" value="�α���" /></td>
				<td><input type="reset" value="���" /></td>
			</tr>
		</table>
	</form>
</body>
</html>