<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String state = request.getParameter("state");
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	
	String title = "ȸ������";
	String btnName = "ȸ������";
	
	//state.isBlank()
	if(state == null) 	state ="sign Up";
	if(name == null) 	name = "";
	if(id == null) 		id = "";
	
	if("modify".contentEquals(state)){
		title = "��������";
		btnName = "����";
	}
	
	/* ������ ���� �� ���� �Լ� ~*/
	/* session.setAttribute("name", name);
	session.setAttribute("id", id); */
%>
	<h1 align="center"><%=title %></h1>
	<hr>
	<form action="signUpOk.jsp" method="post">
		<table align="center">
			<tr>
				<td align="right">�̸�</td>
				<td colspan="2"><input type="text" name="name" value="<%=name %>" readonly="readonly"></td>
			</tr>
			<tr>
				<td align="right">���̵�</td>
				<td colspan="2"><input type="text" name="id" value="<%=id %>" readonly="readonly"></td>
			</tr>
			<tr>
				<td align="right">�н�����</td>
				<td colspan="2"><input type="password" name="pw"></td>
			</tr>
			<tr>
				<td align="right">�н����� Ȯ��</td>
				<td colspan="2"><input type="password" name="pwCheck"></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="<%=btnName %>" /></td>
				<td><input type="reset" value="���" /></td>
			</tr>
		</table>
	</form>