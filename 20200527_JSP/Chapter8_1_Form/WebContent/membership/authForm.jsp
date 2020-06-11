<%@page import="java.net.URLDecoder"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%-- <script scr="<%=request.getContextPath() %>/js/common.js"></script> --%>
<%-- <script scr="<%=request.getContextPath() %>/js/authForm.js"></script> --%>
<%
	String errorLog = request.getParameter("errorLog");
	errorLog = (errorLog == null) ? "" : URLDecoder.decode(errorLog, "UTF-8");
%>
<form id="form" action="<%=request.getContextPath() %>/membership/authProc.jsp" method="post">
	<div align="center">
	<table>
		<tr>
			<td>E-Mail
				<input type=email name='email' id="email" placeholder='email 입력' style="width: 200px; "/>
				<input type=submit value='인증번호 전송' style="width: 120px; "/> 
			</td>
		</tr>
	</table>
	</div>
</form>