<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String type = request.getParameter("type");
%>
<table border="2">
	<tr>
		<td>Ÿ��</td>
		<td><b><%=type%></b></td>
	</tr>
	<tr>
		<td>Ư¡</td>
		<td>
			<%
				if ("A".contentEquals(type))		out.print("���� ������");
				else if("B".contentEquals(type))	out.print("�پ ��ó �ɷ�");
				else	out.print("FUCK YOU");
			%>
		</td>
	</tr>
</table>