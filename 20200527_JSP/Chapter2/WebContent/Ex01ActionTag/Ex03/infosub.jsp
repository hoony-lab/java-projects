<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String type = request.getParameter("type");
%>
<table width="60%" border="1">
<tr>
	<td>Ÿ��</td>
	<td><b><%=type %></b></td>
</tr>
<tr>
	<td>Ư¡</td>
	<td>
<%
	if("A".contentEquals(type))			out.print("���� ������.");
	else if("B".contentEquals(type))	out.print("�پ ��ó �ɷ�.");
%>	

	</td>
</tr>
</table>















