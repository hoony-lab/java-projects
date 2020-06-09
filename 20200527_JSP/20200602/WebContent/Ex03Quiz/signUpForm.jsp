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
<title>���� ��</title>

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
				<span><input type="text" name="id" placeholder="���̵�" value="<%=member.getId()%>"></span>
				<span class="r">@naver.com</span>
			</div>
			<div>
				<span><input type="text" name="pw" placeholder="��й�ȣ" value="<%=member.getPw() %>"></span>
			</div>
			<div>
				<span><input type="text" name="pwCheck" value="<%=member.getPwCheck() %>"
					placeholder="��й�ȣ ��Ȯ��"></span>
			</div>

			<br>

			<div class="space-between">
				<span><input type="text" name="name" placeholder="�̸�" value="<%=member.getName() %>"></span>
				<select name="sex">
					<option value="male">����</option>
					<option value="female">����</option>
				</select>
			</div>
			<div>
				<span><input type="text" name="year" placeholder="����" value="<%=member.getYear() %>"></span>
				<span><input type="text" name="month" placeholder="��" value="<%=member.getMonth() %>"></span>
				<span><input type="text" name="day" placeholder="��" value="<%=member.getDay() %>"></span>
			</div>

			<br>

			<div class="space-between">
				<span><input type="text" name="authMail" id="recvUsrEmail" placeholder="���� Ȯ�� �̸���" value="<%=member.getAuthMail() %>"></span> 
				<span><input type="button" value="������ȣ ����" style="background-color: #3bcc62; border-radius: 20px;"
						onclick="sendAuth()"> </span>
					 
				<button onclick="window.open('sendAuth.jsp')">button</button>
				<button formaction="sendAuth.jsp" onclick="location.href='sendAuth.jsp'">button</button>
			</div>
			<div class="space-between">
				<span><input type="text" name="authCheck" id="authCheckNum" placeholder="������ȣ" value="<%=member.getAuthCheck() %>">
				</span> 
				<span><input type="button" value="Ȯ��" style="background-color: #3bcc62; border-radius: 20px;"
						onclick="checkAuth()"></span>
			</div>

			<br>

			<div align="center" style="background-color: #42eb6f;">
				<input id="submit" type="submit" value="�����ϱ�" style="background-color: #3bcc62; border-radius: 20px;">
			</div>
		</div>
	</form>
</body>
</html>