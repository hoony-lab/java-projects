<%@page import="com.jin.mail.JinsMail"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<jsp:useBean id="member" class="signUp.Member" scope="request">
	<jsp:setProperty name="member" property="*"/>
</jsp:useBean>

<%-- <jsp:useBean id="mail" class="com.jin.mail.JinsMail"></jsp:useBean>
<jsp:setProperty name="mail" property="id" value="jihun9839@gmail.com"></jsp:setProperty>
<jsp:setProperty name="mail" property="pw" value="159357qeW@"></jsp:setProperty> --%>

<%!
	String sndUsrName = "jihun9839";
	String sndUsrEmail = "jihun9839@gmail.com";
	String recvUsrEmail = "jihun9839@gmail.com";
	String title = "Test from hoony";
	String authNum = "HOHOs";

	String id = sndUsrName;
	String pw = "???????????????????????????????????";
	
	public void SendAuthNum() {
		JinsMail mail = new JinsMail();
		mail.setId(id);
		mail.setPw(pw);
		
		authNum = GenAuthNum();
		
		mail.SendMail(sndUsrName, sndUsrEmail, recvUsrEmail, title, authNum);
	}

	public String GenAuthNum() {
		return String.valueOf(new Random().nextInt(200000) + 100000);
	}
%>

<%
	SendAuthNum();
	member.setAuthNum(authNum);
	session.setAttribute("auth", authNum);
%>
	
<jsp:forward page="signUpForm.jsp">
	<jsp:param name="member" value="authNum"/>
</jsp:forward>


