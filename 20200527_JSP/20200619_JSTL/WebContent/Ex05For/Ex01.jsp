<%@page import="java.util.HashMap"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	Map<String, Object> map = new HashMap<>();
	map.put("id","infi");
	map.put("today", new Date());
	map.put("pig", "eat");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<ul>
<h4>구구단 : 4단</h4>


<c:forEach var="i" begin="1" end="9" step="1">
	<li>4 * ${i} = ${4*i}
</c:forEach>
<hr><hr>

<c:set var="intArr">2,4,6,8,10</c:set>

<c:forEach var="i" items="${intArr }" varStatus="status">
	${i}<br>
	indx : ${status.index }<br>
	cnt: ${status.count }<br>
</c:forEach>
<hr><hr>
<c:forEach var="i" items="${intArr }" begin="2" end="4" >
	${i}  ,
</c:forEach>



<hr><hr>	
<c:set var="strArr">hello,world, jin</c:set>
<c:forEach var="i" items="${strArr }" varStatus="status">
	data = [${i }] <br>
	indx : ${status.index }<br>
	cnt: ${status.count }<br>
</c:forEach>


<hr><hr>
<%-- <c:set var="mapData"><%=map %></c:set> --%>
<%-- <c:forEach var="i" items="${mapData }"> --%>
<%-- 	${i.key()} = ${i.value() }<br> --%>
<%-- </c:forEach> --%>

</ul>
</body>
</html>