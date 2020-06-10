<%@ page contentType="text/html; charset=UTF-8"%>

<form action="<%=request.getContextPath() %>/membership/authProc.jsp" method="post">
	<div align="center">
	<table>
		<tr>
			<td>E-Mail
				<input type=email name='email' placeholder='email 입력' style="width: 200px; "/>
				<input type=submit value='인증번호 전송' style="width: 120px; "/> 
			</td>
		</tr>
	</table>
	</div>
</form>