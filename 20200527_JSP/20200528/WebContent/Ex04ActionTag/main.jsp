<%--
	jsp:include 는 페이지를 단순하게 포함하는 것이 호출의 개념이며
	flush는 메모리 초기화를 하는것이고 true 면 정보를 비움
		일반적으로 false로  사용
 --%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!-- <link rel="./CSS/style.css"> -->
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>메인</title>
</head>
<body>

	<p>
	<table border='2' width="400" height="200" cellpadding="0"
		cellspacing="0" text-align="center">
		<tr>
			<td colspan="2"><jsp:include page="./module/top.jsp"
					flush="false" /></td>
		</tr>
		<tr>
			<td><jsp:include page="./module/left.jsp" flush="false" /></td>
			<td><input type="text" name="something" value="type please"></td>
		</tr>
		<tr>
			<td colspan="2"><jsp:include page="./module/bottom.jsp"
					flush="false" /></td>
		</tr>

	</table>
	</p>


	<%-- <jsp:include page="body_main.jsp" flush="false"> --%>
	<form action="body_main.jsp" method="post">
		<input type="text" name="name" /> <input type="submit" name="전송" />
	</form>

	<hr>
	Ex05Directive /
	<a href="/20200528/Ex05Directive/includer.jsp">includer.jsp</a>


</body>
</html>