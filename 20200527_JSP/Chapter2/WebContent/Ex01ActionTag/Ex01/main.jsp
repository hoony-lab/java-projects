<%--
jsp:include는 페이지를 단순하게 포함하는 것이 아닌 호출의 개념이며
flush는 메모리 초기화로 ture 시 정보를 비우게 되어
일반적으로 false로 사용된다.
 --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>main</title>
</head>
<body>
Main.jsp 내용
<hr/>
<jsp:include page="sub.jsp" flush="false"/>
<hr/>
include 이후 내용
</body>
</html>