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
				<td>이름</td>
				<td colspan="2"><input type="text" name="name" value="<%=name %>"></td>
			</tr>
			<tr>
				<td>아이디</td>
				<td colspan="2"><input type="text" name="id" value="<%=id %>"></td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td colspan="2"><input type="password" name="pw"></td>
			</tr>
			<tr>
				<td>패스워드 확인</td>
				<td colspan="2"><input type="password" name="pwCheck"></td>
			</tr>
			<tr>
				<td><input type="submit" value="회원가입" /></td>
				<td><input type="reset" value="취소" /></td>
				<td><button formaction="loginForm.jsp">로그인</button></td>
			</tr>
		</table>
	</form>
</body>
</html>