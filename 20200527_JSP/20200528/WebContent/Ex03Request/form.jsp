<%--

	form 태그는 내부의 input 태그정보를 서버로 전송
	전송 주소는 action에 작성하며 "/프로젝트명/폴더명/파일명"으로 작성
	
--%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="/20200528/Ex03Request/view.jsp" method="post">
		이름 : <input type="text" name="name" size="10"><br> 주소 : <input
			type="text" name="address" size="30"><br> 좋아하는 동물 : <input
			type="checkbox" name="pet" value="dog">강아지 <input
			type="checkbox" name="pet" value="cat">고양이 <input
			type="checkbox" name="pet" value="pig">돼지 <br> <input
			type="submit" value="전송">

	</form>
</body>
</html>