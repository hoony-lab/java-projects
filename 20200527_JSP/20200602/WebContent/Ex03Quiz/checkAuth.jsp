<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<jsp:useBean id="member" class="signUp.Member" scope="request">
	<jsp:setProperty name="member" property="*" />
</jsp:useBean>

<%
	String authNum = (String)session.getAttribute("auth");

	if (authNum.contentEquals(member.getAuthCheck())) 
		session.setAttribute("authChecked", "true");
	else
		session.setAttribute("authChecked", "false");
%>


<h1>member.getAuthNum() : <%=member.getAuthNum()%></h1>
<h1>authNum : <%=authNum %></h1> 

<jsp:forward page="signUpForm.jsp">
	<jsp:param name="member" value="authNum" />
</jsp:forward>
