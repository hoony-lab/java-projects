<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String state = request.getParameter("state");
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	
	String title = "회원가입";
	String btnName = "회원가입";
	
	//state.isBlank()
	if(state == null) 	state ="sign Up";
	if(name == null) 	name = "";
	if(id == null) 		id = "";
	
	if("modify".contentEquals(state)){
		title = "정보수정";
		btnName = "수정";
	}
	
	/* 브라우저 꺼질 때 까지 게속 ~*/
	/* session.setAttribute("name", name);
	session.setAttribute("id", id); */
%>
	<h1 align="center"><%=title %></h1>
	<hr>
	<form action="signUpOk.jsp" method="post">
		<table align="center">
			<tr>
				<td align="right">이름</td>
				<td colspan="2"><input type="text" name="name" value="<%=name %>" readonly="readonly"></td>
			</tr>
			<tr>
				<td align="right">아이디</td>
				<td colspan="2"><input type="text" name="id" value="<%=id %>" readonly="readonly"></td>
			</tr>
			<tr>
				<td align="right">패스워드</td>
				<td colspan="2"><input type="password" name="pw"></td>
			</tr>
			<tr>
				<td align="right">패스워드 확인</td>
				<td colspan="2"><input type="password" name="pwCheck"></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="<%=btnName %>" /></td>
				<td><input type="reset" value="취소" /></td>
			</tr>
		</table>
	</form>