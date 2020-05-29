<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String newPage = "signUpForm.jsp";

	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String pwCheck = request.getParameter("pwCheck");
	
	if ("".contentEquals(id) || "".contentEquals(name) || "".contentEquals(pw) || "".contentEquals(pwCheck)) {
		out.print("alert('please type all info !!!')");
		newPage = "signUpForm.jsp";
	} else
		newPage = "signUpOk.jsp";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>회원가입 ㅊㅋ</h1>
	<form action="signUpForm.jsp" method="post">
		<input type="hidden" name="name" value="<%=name %>"/>
		<input type="hidden" name="id" value="<%=id %>"/>
		<input type="submit" value="수정" />
	</form>
</body>
</html>