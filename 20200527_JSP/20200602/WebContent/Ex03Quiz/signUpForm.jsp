<%@page import="javax.swing.text.Document"%>
<%@page import="com.jin.mail.JinsMail"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<jsp:useBean id="member" class="signUp.Member" scope="request"></jsp:useBean>
<%-- <jsp:useBean id="mail" class="com.jin.mail.JinsMail"></jsp:useBean>
<jsp:setProperty name="mail" property="id" value="jihun9839@gmail.com"></jsp:setProperty>
<jsp:setProperty name="mail" property="pw" value="159357qeW@"></jsp:setProperty> --%>

<!--
	// use recvUserEmail.value; to send email to C
	1. S : GenAuthNum
	2. S : send authNum to C's mail
	
	// 
	3. S : check sent Gen-edAuthNum and C's input authNum
-->

<!DOCTYPE html>
<html>
<head>
<script src="auth.js" type="text/javascript"></script> 
<meta charset="EUC-KR">
<title>쿠팡 ㅎ</title>

<style>
body {
	margin: 50px auto auto auto;
	background-color: #cfcfcf;
	width: 400px;
	hieght: 400px;
	border-color: black;43
}

div {
	border: 1px solid black;
	border-radius: 5px;
	padding: 3px;
}

div.main {
	padding: 10px;
	background-color: #d9ffd9;
	border-radius: 5px;
}

span, input {
	border: hidden;
	background-color: #d9ffd9;
	width: 100px;
}

.space-between{
	display: flex;
	justify-content: space-between;
}

input[type="button"]:hover, input[type="submit"]:hover {
  border: 1px #000 solid;
  -webkit-transition: border 0.3s ease-out;
  -webkit-transition: transform 250ms cubic-bezier(0.680, -0.550, 0.265, 1.550);
}


</style>

</head>
<body>
<h1>member.getAuthNum() : <%=member.getAuthNum()%></h1>
<h1>authNum : <%=(String)session.getAttribute("auth") %></h1> 


	<form action="signUpProc.jsp" method="post">
		<div class="main">
			<div class="space-between">
				<span><input type="text" name="id" placeholder="아이디" value="<%=member.getId()%>"></span>
				<span class="r">@naver.com</span>
			</div>
			<div>
				<span><input type="text" name="pw" placeholder="비밀번호" value="<%=member.getPw() %>"></span>
			</div>
			<div>
				<span><input type="text" name="pwCheck" value="<%=member.getPwCheck() %>"
					placeholder="비밀번호 재확인"></span>
			</div>

			<br>

			<div class="space-between">
				<span><input type="text" name="name" placeholder="이름" value="<%=member.getName() %>"></span>
				<select name="sex">
					<option value="male">남자</option>
					<option value="female">여자</option>
				</select>
			</div>
			<div>
				<span><input type="text" name="year" placeholder="연도" value="<%=member.getYear() %>"></span>
				<span><input type="text" name="month" placeholder="월" value="<%=member.getMonth() %>"></span>
				<span><input type="text" name="day" placeholder="일" value="<%=member.getDay() %>"></span>
			</div>

			<br>

			<div class="space-between">
				<span><input type="text" name="authMail" id="recvUsrEmail" placeholder="본인 확인 이메일" value="<%=member.getAuthMail() %>"></span> 
				<span><input type="button" value="인증번호 전송" style="background-color: #3bcc62; border-radius: 20px;"
						onclick="sendAuth()"> </span>
					 
				<button onclick="window.open('sendAuth.jsp')">button</button>
				<button formaction="sendAuth.jsp" onclick="location.href='sendAuth.jsp'">button</button>
			</div>
			<div class="space-between">
				<span><input type="text" name="authCheck" id="authCheckNum" placeholder="인증번호" value="<%=member.getAuthCheck() %>">
				</span> 
				<span><input type="button" value="확인" style="background-color: #3bcc62; border-radius: 20px;"
						onclick="checkAuth()"></span>
			</div>

			<br>

			<div align="center" style="background-color: #42eb6f;">
				<input id="submit" type="submit" value="가입하기" style="background-color: #3bcc62; border-radius: 20px;">
			</div>
		</div>
	</form>
</body>
</html>