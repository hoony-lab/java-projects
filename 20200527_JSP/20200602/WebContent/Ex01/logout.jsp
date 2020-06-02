<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<jsp:useBean id="member" class="javaBean.test.Member" scope="application"></jsp:useBean>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div>
<%-- 	id : <%=member.getId()%><br> 
		pw : <%=member.getPw()%><br> --%>
		
		ID : <jsp:getProperty property="id" name="member"/><br>	
		PW : <jsp:getProperty property="pw" name="member"/><br>	
		<form action="loginForm.jsp" method="get">
			<input type="submit" value="logout"/>
		</form>
	</div>
</body>
</html>