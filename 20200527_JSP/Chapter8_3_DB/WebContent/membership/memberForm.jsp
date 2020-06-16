<%--memberForm.jsp --%>
<%@page import="java.net.URLDecoder"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	String email = request.getParameter("email");
	String authNum = (String)session.getAttribute("testAuthNum");
	
	//완료시 삭제
	out.print(authNum);
	
	String errorLog = request.getParameter("errorLog");
	errorLog = (errorLog==null)?"":URLDecoder.decode(errorLog, "UTF-8");
	/* 
	if(errorLog==null)	errorLog="";
	else				errorLog = URLDecoder.decode(errorLog, "UTF-8");
	 */
%>
<script src="<%=request.getContextPath() %>/js/common.js" type="text/javascript"></script>
<script src="<%=request.getContextPath() %>/js/memberForm.js" type="text/javascript"></script>
<center>
<form id="frm" action="<%=request.getContextPath() %>/membership/memberProc.jsp" method="post">
<input type="hidden" name="curPage" value="memberForm">
<table>
	<tr>
		<td align='right' height=40>아이디</td>
		<td>
			<input type=text id="id" name='id' placeholder='id 입력'/> 
		</td>
		<td align='right' width=120>성 별</td>
		<td>
			<input type=radio name='gender' value='m' checked="checked"/>남자
			<input type=radio name='gender' value='w' />여자 
		</td>
	</tr>
	<tr>
		<td align='right' height=40>패스워드</td>
		<td>
			<input type=text id="pw" name='pw' placeholder='pw 입력'/> 
		</td>
		<td align='right'>패스워드 확인</td>
		<td>
			<input type=text id="pwOk" name='pwOk' placeholder='pw 입력'/> 
		</td>
	</tr>
	<tr>
		<td align='right' height=40>E-Mail</td>
		<td>
			<input type=text name='email' value="<%=email %>"/> 
		</td>
		<td align='right'>인증번호</td>
		<td>
			<input type=text id="authNum" name='authNum' placeholder='인증번호 입력'/> 
		</td>
	</tr>
	<tr>
		<td align='center' height=40 colspan=4>
			<input type=button onclick="sendMember();" value='로그인' style="width: 120px; "/>
			<input type=reset value='취소' style="width: 120px; "/>	 
		</td>
	</tr>
</table>
</form>
<%=errorLog %>
</center>














