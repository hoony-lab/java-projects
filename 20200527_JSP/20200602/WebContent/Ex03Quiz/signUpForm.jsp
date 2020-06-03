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
				<span><input type="text" name="id" placeholder="���̵�"></span>
				<span class="r">@naver.com</span>
			</div>
			<div>
				<span><input type="text" name="pw" placeholder="��й�ȣ"></span>
			</div>
			<div>
				<span><input type="text" name="pwCheck"
					placeholder="��й�ȣ ��Ȯ��"></span>
			</div>

			<br>

			<div class="space-between">
				<span><input type="text" name="name" placeholder="�̸�"></span>
				<select name="sex">
					<option value="male">����</option>
					<option value="female">����</option>
				</select>
			</div>
			<div>
				<span><input type="text" name="year" placeholder="����"></span>
				<span><input type="text" name="month" placeholder="��"></span>
				<span><input type="text" name="day" placeholder="��"></span>
			</div>

			<br>

			<div class="space-between">
				<span><input type="text" name="authMail"
					placeholder="���� Ȯ�� �̸���"></span> <span><input type="button"
					value="������ȣ ����" style="background-color: #3bcc62; border-radius: 20px;"> </span>
			</div>
			<div class="space-between">
				<span><input type="text" name="authCheck" placeholder="������ȣ">
				</span> <span><input type="button" value="Ȯ��" style="background-color: #3bcc62; border-radius: 20px;"></span>
			</div>

			<br>

			<div align="center" style="background-color: #42eb6f;">
				<input type="submit" value="�����ϱ�" style="background-color: #3bcc62; border-radius: 20px;">
			</div>
		</div>
	</form>
</body>
</html>