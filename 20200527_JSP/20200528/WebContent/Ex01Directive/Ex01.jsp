<%--
	jsp는 이렇게 annotation
	
	<%@ 는 디렉티브라고 하며 jsp 페이지 설정 관련 정보를 담을 수 있다.
	
	현재 page에 관련된 정보이며 language는 생략 가능하다
	contentType 은 문서의 종류를 설정
		현재는 text 또는 html 파일을 사용한다
		
	contentType 내부의 charset은 html의 인코딩을 의미하며
	pageEncoding은 jsp의 인코딩을 의미한다.
 --%>
<%@
	page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="java.util.Calendar, java.util.Date"%>


<%
	//java code
Date now = new Date();
//out.print("현재 시각 : " + now);

Calendar cal = Calendar.getInstance();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>쿠팡!</title>
</head>
<body>

	<h1>
		현재 시각 :
		<%=now%></h1>
	<h2>
		현재 시각 :
		<%=cal.get(Calendar.HOUR)%></h2>


	<br>
	<hr>
	<hr>
	<br>
	<h1>
		여긴 상품<br>
	</h1>
	저기도 상품1
	<br> 저기도 상품2
	<br> 저기도 상품3
	<br> 저기도 상품4
	<br> 저기도 상품5
	<br> 저기도 상품6
	<br> 저기도 상품7
	<br>
</body>
</html>