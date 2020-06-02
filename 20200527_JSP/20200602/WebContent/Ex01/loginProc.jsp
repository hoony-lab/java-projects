<%-- <%@ page import="javaBean.test.Member"%> --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<jsp:useBean id="member" class="javaBean.test.Member" scope="application"></jsp:useBean>
<jsp:setProperty property="id" name="member" value='<%=request.getParameter("id") %>'></jsp:setProperty>
<%-- <jsp:setProperty property="pw" name="member" value='<%=request.getParameter("pw") %>'></jsp:setProperty> --%>
<jsp:setProperty property="pw" name="member" param="pw"></jsp:setProperty>

<%
	// Member member = new Member();
	
	//	String id = request.getParameter("id");
	//	String pw = request.getParameter("pw");
	//	member.setId(id);
	//	member.setPw(pw);
	
	request.setAttribute("member", member);
%>
<jsp:forward page="loginSuccess.jsp" />