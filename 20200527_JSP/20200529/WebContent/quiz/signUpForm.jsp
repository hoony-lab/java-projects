<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String name = request.getParameter("name");
	String id = request.getParameter("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Sign Up</title>
</head>
<body>

	<h1 align="center">SignUp</h1>
	<hr>
	<form action="signUpProc.jsp" method="post">
		<table align="center">
			<tr>
				<td>�̸�</td>
				<td colspan="2"><input type="text" name="name" value="<%=name %>"></td>
			</tr>
			<tr>
				<td>���̵�</td>
				<td colspan="2"><input type="text" name="id" value="<%=id %>"></td>
			</tr>
			<tr>
				<td>�н�����</td>
				<td colspan="2"><input type="password" name="pw"></td>
			</tr>
			<tr>
				<td>�н����� Ȯ��</td>
				<td colspan="2"><input type="password" name="pwCheck"></td>
			</tr>
			<tr>
				<td><input type="submit" value="ȸ������" /></td>
				<td><input type="reset" value="���" /></td>
				<td><button formaction="loginForm.jsp">�α���</button></td>
			</tr>
		</table>
	</form>
</body>
</html>