<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
Welcome Sub.jsp
<hr>
<table border="2">
	<tr>
		<td>타입</td>
		<td></td>
	</tr>
	<tr>
		<td>가격</td>
		<td>
			<jsp:include page="infosub.jsp" flush="false">
			<jsp:param value="B" name="type" />
			</jsp:include>
		</td>
	</tr>
</table>