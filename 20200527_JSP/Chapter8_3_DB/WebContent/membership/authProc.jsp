<%--authProc.jsp --%>

<%@page import="com.jin.mail.SHA"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!-- JinsMail mail = new JinsMail(); -->
<jsp:useBean id="mail" class="com.jin.mail.JinsMail"/>
<!-- mail.setId(googleId), mail.setPw(googlePw) -->
<jsp:setProperty property="id" name="mail" value="googleID"/>
<jsp:setProperty property="pw" name="mail" value="googlePW"/>
<%
	String email = request.getParameter("email");
	String authNum = String.format("%04d", (int)(Math.random()*10000));
	
	/* mail.SendMail("관리자", "보내는 사람 이메일",	email, "인증번호", 
			"[인증 번호 : "+authNum+"]");
	 */
	SHA sha = new SHA();
	session.setAttribute("authNum", sha.encryptSHA512(authNum) );
	session.setAttribute("testAuthNum", authNum);
%>
<jsp:forward page="/index.jsp">
<jsp:param value="memberForm" name="frmPage"/>
</jsp:forward>





