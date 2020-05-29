<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    	out.print("현재 프로젝트명 : "+request.getContextPath());
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="<%=request.getContextPath() %>/Ex03/view.jsp" method="post">
	뭐 볼래 ?
	<select name="code">
		<option value="A">Page A</option>	
		<option value="B">Page B</option>	
		<option value="C">Page C</option>	
	</select>
		<input type="submit" value="전송" >	
</form>
</body>
</html>	