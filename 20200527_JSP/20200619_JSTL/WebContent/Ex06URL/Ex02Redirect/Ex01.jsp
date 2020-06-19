<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url value="LoginProc.jsp" context="/20200619_JSTL/Ex06URL/Ex02Redirect/">
	<c:param name="id" value="jin"/>
	<c:param name="pw" value="1234"/>
</c:url>

<c:redirect url="${loginProc }"/>