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
			<td align='right' height=40>���̵�</td>
			<td>
				<input type=text id="id" name='id' placeholder='id �Է�'/> 
			</td>
			<td align='right' width=120>�� ��</td>
			<td>
				<input type=radio name="gender" value='m' checked="checked"/>����
				<input type=radio name="gender" value='w' />���� 
			</td>
		</tr>
		<tr>
			<td align='right' height=40>�н�����</td>
			<td>
				<input type=text id="pw" name='pw' placeholder='pw �Է�'/> 
			</td>
			<td align='right'>�н����� Ȯ��</td>
			<td>
				<input type=text id="pwCheck" name='pwCheck' placeholder='pw �Է�'/> 
			</td>
		</tr>
		<tr>
			<td align='right' height=40>E-Mail</td>
			<td>
				<input type=text id="email" name='email' value="<%=email %>" placeholder='E-Mail �Է�' /> 
			</td>
			<td align='right'>������ȣ</td>
			<td>
				<input type=text id="authNum" name='authNum' value="<%=authNumAttr %>"placeholder='������ȣ �Է�'/> 
			</td>
		</tr>
		<tr>
			<td align='center' height=40 colspan=4>
				<input type=button value='�α���' onclick="memberForm();" style="width: 120px; "/>
				<input type=reset value='���' style="width: 120px; "/>	 
			</td>
		</tr>
	</table>
	</div>
</form>
</body>


