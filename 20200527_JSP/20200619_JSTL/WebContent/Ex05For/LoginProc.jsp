<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
		<td>���̵�</td>
		<td><input type=text name='id' value="${param.id}"/></td>
	</tr>
	<tr>
		<td>�н�����</td>
		<td><input type=password name='pw' value=""></td>
	</tr>
	<tr>
		<td>id�н�����</td>
		<td><input type=text name='pw' value=""></td>
	</tr>
	<tr>
		<td colspan=2 align="center">
			<input type=submit value='�α���' style="width: 100px; "/>
			<input type="reset" value='���' style="width: 100px; "/>
		</td>
	</tr>
		
</table>
<hr>
<c:choose>

	<c:when test="${param.id != 'jin'}">
		<li>id ����ġ������<br>
	</c:when>
	<c:otherwise>
		<li>�α��ε�����
	</c:otherwise>
</c:choose>

<c:if test="${param.id == 'jin' }">
success<br>
</c:if>
<c:if test="${param.pw < 20 }">
20���� ����������<br>
</c:if>

<!-- </form> -->
</body>
</html>