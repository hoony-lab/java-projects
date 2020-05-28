<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%! 
	String company = "원호 지훈 상현 WSJ";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>includer</title>
</head>
<body>
<center><h1>나쁜 회사</h1></center>
<hr>
<h1>홈페이지 개요</h1>
<h3>정말<br>나쁜<br>회사<br></h3><hr>
<h5><li>사장님만 배불러요</h5>
<h4>정말<br>내용<br>대충<br></h4>
<h4>정말<br>대충<br>내용<br></h4>
<h4>정말<br>내용<br>대충<br></h4>
<h4>정말<br>대충<br>내용<br></h4>
<h4>정말<br>내용<br>대충<br></h4>
</li>
<hr>
<%@ include file="includee.jspf" %>
<center><%=copyRight %></center>


</body>
</html>