<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>main</title>
</head>
<body>
<table width="60%" border="1">
<tr>
	<td>제품번호</td>
	<td>xxxx</td>
</tr>
<tr>
	<td>가격</td>
	<td>10,000원</td>
</tr>
</table>
<jsp:include page="infosub.jsp" flush="false">
	<jsp:param value="A" name="type"/>
</jsp:include>
</body>
</html>














