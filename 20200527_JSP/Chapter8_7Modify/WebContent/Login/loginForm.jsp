<%@page import="java.net.URLDecoder"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<script src="<%=request.getContextPath() %>/js/common.js" type="text/javascript"></script>
<script src="<%=request.getContextPath() %>/js/loginForm.js" type="text/javascript"></script>

<%
String errorLog = request.getParameter("errorLog");
errorLog = (errorLog==null)?"":URLDecoder.decode(errorLog, "UTF-8");
%>
<center>

<form id="frm" action="<%=request.getContextPath() %>/Login/loginProc.jsp" method="post">
<input type="hidden" name="curPage" value="loginForm"/>
<table>
	<tr>
		<td>아이디</td>
		<td><input type=text id="id" name='id' placeholder='ID 입력'/></td>
	</tr>
	<tr>
		<td>패스워드</td>
		<td><input type=password id="pw" name='pw' placeholder='PW 입력'/></td>
	</tr>
	<tr>
		<td colspan=2 align='center'>
			<input type=button onclick="loginProc();" value='로그인' style="width: 86px; "/>
			<input type=reset value='취소' style="width: 86px; "/> 
		</td>
	</tr>
</table>
</form>
<%=errorLog %>
</center>
