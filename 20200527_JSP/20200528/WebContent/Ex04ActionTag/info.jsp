<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
Welcome Sub.jsp
<hr>
<table border="2">
	<tr>
		<td>Ÿ��</td>
		<td></td>
	</tr>
	<tr>
		<td>����</td>
		<td>
			<jsp:include page="infosub.jsp" flush="false">
			<jsp:param value="B" name="type" />
			</jsp:include>
		</td>
	</tr>
</table>