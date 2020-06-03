<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<style>
body {
	margin: 50px auto auto auto;
	background-color: #cfcfcf;
	width: 400px;
	hieght: 400px;
	border-color: black;
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

</style>

</head>
<body>
	<form action="signUpProc.jsp" method="post">
		<div class="main">
			<div class="space-between">
				<span><input type="text" name="id" placeholder="아이디"></span>
				<span class="r">@naver.com</span>
			</div>
			<div>
				<span><input type="text" name="pw" placeholder="비밀번호"></span>
			</div>
			<div>
				<span><input type="text" name="pwCheck"
					placeholder="비밀번호 재확인"></span>
			</div>

			<br>

			<div class="space-between">
				<span><input type="text" name="name" placeholder="이름"></span>
				<select name="sex">
					<option value="male">남자</option>
					<option value="female">여자</option>
				</select>
			</div>
			<div>
				<span><input type="text" name="year" placeholder="연도"></span>
				<span><input type="text" name="month" placeholder="월"></span>
				<span><input type="text" name="day" placeholder="일"></span>
			</div>

			<br>

			<div class="space-between">
				<span><input type="text" name="authMail"
					placeholder="본인 확인 이메일"></span> <span><input type="button"
					value="인증번호 전송" style="background-color: #3bcc62; border-radius: 20px;"> </span>
			</div>
			<div class="space-between">
				<span><input type="text" name="authCheck" placeholder="인증번호">
				</span> <span><input type="button" value="확인" style="background-color: #3bcc62; border-radius: 20px;"></span>
			</div>

			<br>

			<div align="center" style="background-color: #42eb6f;">
				<input type="submit" value="가입하기" style="background-color: #3bcc62; border-radius: 20px;">
			</div>
		</div>
	</form>
</body>
</html>