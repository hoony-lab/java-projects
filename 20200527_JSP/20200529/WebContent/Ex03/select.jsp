<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    	out.print("���� ������Ʈ�� : "+request.getContextPath());
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="<%=request.getContextPath() %>/Ex03/view.jsp" method="post">
	�� ���� ?
	<select name="code">
		<option value="A">Page A</option>	
		<option value="B">Page B</option>	
		<option value="C">Page C</option>	
	</select>
		<input type="submit" value="����" >	
</form>
</body>
</html>	