<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<jsp:useBean id="member" class="signUp.Member" scope="request">
	<jsp:setProperty name="member" property="*" />
</jsp:useBean>

<jsp:forward page="signUpSuccess.jsp"></jsp:forward>