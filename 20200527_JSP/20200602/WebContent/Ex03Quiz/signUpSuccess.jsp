<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="member" class="signUp.Member" scope="request"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
div {
	margin: 50px 10% auto 10%;
	border: 1px thick black;
	background-color: lightblue;
}
</style>
</head>
<body>
<div>
<h1 align="center">Sign Up Info</h1>
<hr>
	id : <jsp:getProperty name="member" property="id"/><br>
	pw : <jsp:getProperty name="member" property="pw"/><br>
	pwCheck : <jsp:getProperty name="member" property="pwCheck"/><br>
	name : <jsp:getProperty name="member" property="name"/><br>
	sex : <jsp:getProperty name="member" property="sex"/><br>
	year : <jsp:getProperty name="member" property="year"/><br>
	month : <jsp:getProperty name="member" property="month"/><br>
	day : <jsp:getProperty name="member" property="day"/><br>
	authEmail : <jsp:getProperty name="member" property="authMail"/><br>
	authCheck : <jsp:getProperty name="member" property="authCheck"/><br>
</div>
</body>
</html>