<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<c:set var="num" value="5"/>
${num + 10}

<c:set var="num" value="50"/>
${num + 10}

<c:set var="num2" value="${num + 10}"/>
${num2}

</body>
</html>