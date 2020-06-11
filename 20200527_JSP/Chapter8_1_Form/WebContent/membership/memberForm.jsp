<%@page import="com.jin.mail.SHA"%>
<%@ page contentType="text/html; charset=EUC-KR"%>
<%
	String email = request.getParameter("email");
	String authNumAttr = (String)session.getAttribute("authNumAttr");
	String authNumAttrSHA = (String)session.getAttribute("authNumAttrSHA");
%>
<%-- <script src="<%=request.getContextPath() %>/js/common.js"></script> --%>
<script src="<%=request.getContextPath() %>/js/memberForm.js"></script>

<form id="form" action="<%=request.getContextPath() %>/membership/memberProc.jsp" method="post">
	<input type="hidden" name="authNumAttrSHA" id="authNumAttr" value="<%=authNumAttr %>">
	<div align="center">
	<table>
		<tr>
			<td align='right' height=40>아이디</td>
			<td>
				<input type=text id="id" name='id' placeholder='id 입력'/> 
			</td>
			<td align='right' width=120>성 별</td>
			<td>
				<input type=radio name="gender" value='m' checked="checked"/>남자
				<input type=radio name="gender" value='w' />여자 
			</td>
		</tr>
		<tr>
			<td align='right' height=40>패스워드</td>
			<td>
				<input type=text id="pw" name='pw' placeholder='pw 입력'/> 
			</td>
			<td align='right'>패스워드 확인</td>
			<td>
				<input type=text id="pwCheck" name='pwCheck' placeholder='pw 입력'/> 
			</td>
		</tr>
		<tr>
			<td align='right' height=40>E-Mail</td>
			<td>
				<input type=text id="email" name='email' value="<%=email %>" placeholder='E-Mail 입력' /> 
			</td>
			<td align='right'>인증번호</td>
			<td>
				<input type=text id="authNum" name='authNum' value="<%=authNumAttr %>"placeholder='인증번호 입력'/> 
			</td>
		</tr>
		<tr>
			<td align='center' height=40 colspan=4>
				<input type=button value='로그인' onclick="memberForm();" style="width: 120px; "/>
				<input type=reset value='취소' style="width: 120px; "/>	 
			</td>
		</tr>
	</table>
	</div>
</form>
</body>


