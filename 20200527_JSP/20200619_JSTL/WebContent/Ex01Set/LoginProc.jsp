<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="login" class="com.care.Login"/>
<jsp:setProperty property="*" name="login"/>
<c:set var="id" value="${login.getId() }"/>
<c:set var="pw">${login.getPw() }</c:set>
<c:set var="idpw">${login.getId() } ab ${login.getPw() }</c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- <form action="LoginProc.jsp" method="post"> -->
<table>
	<tr>
		<td>아이디</td>
		<td><input type=text name='id' value="${id}"/></td>
	</tr>
	
	<tr>
		<td>패스워드</td>
		<td><input type=password name='pw' value="${pw}"></td>
	</tr>
	<tr>
		<td>id패스워드</td>
		<td><input type=text name='pw' value="${idpw}"></td>
	</tr>
	<tr>
		<td colspan=2 align="center">
			<input type=submit value='로그인' style="width: 100px; "/>
			<input type="reset" value='취소' style="width: 100px; "/>
		</td>
	</tr>
		
</table>
<hr>
	<c:set target="${login }" property="id" value="jin"/>
	<div>
		<span>아이디 : </span>
		<span>${login.getId() }</span>
	</div>
<!-- </form> -->
</body>
</html>