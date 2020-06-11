<%@page import="com.jin.mail.SHA"%>
<%@page import="java.util.Random"%>
<%@page import="com.jin.mail.JinsMail"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%!
	String sndUsrName = "jihun9839";
	String sndUsrEmail = "jihun9839@gmail.com";
	String recvUsrEmail = "jihun9839@gmail.com";
	String title = "Test from hoony";
	String authNum = "HOHOs";
	
	String id = sndUsrName;
	String pw = "159357qeW@";
	
	public void SendAuthNum(String recvUserEmail) {
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

	// SendAuthNum(request.getParameter("email"));
 	session.setAttribute("authNumAttrSHA", new SHA().encryptSHA512(authNum));
 	session.setAttribute("authNumAttr", authNum);
%>

<jsp:forward page="/index.jsp">
	<jsp:param value="memberForm" name="frmPage"/>
</jsp:forward>