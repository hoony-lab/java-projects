<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url value="LoginProc.jsp" var="LoginProc">
	<c:param name="id" value="jin"/>
	<c:param name="pw" value="1234"/>
</c:url>

<c:redirect url="${loginProc }"/>