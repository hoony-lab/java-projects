<%--authForm.jsp --%>
<%@ page contentType="text/html; charset=UTF-8"%>
<script src="<%=request.getContextPath() %>/js/common.js" type="text/javascript"></script>
<script src="<%=request.getContextPath() %>/js/authForm.js" type="text/javascript"></script>
<center>
<form id="frm" action="<%=request.getContextPath() %>/membership/authProc.jsp" method="post">
<table>
	<tr>
		<td>E-Mail
			<input type=text id="email" name='email' placeholder='email 입력' style="width: 200px; "/>
			<input type=button onclick="sendEmail();" value='인증번호 전송' style="width: 120px; "/> 
		</td>
	</tr>
</table>
</form>
</center>
