<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String [] hobby = request.getParameterValues("hobby");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<fieldset>
<legend>haha</legend>
id : <%=id%><br>
name : <%=name%><br>
gen : <%=gender%><br>
<%for(int i = 0 ; i < hobby.length; ++i){ %>
hobby : <%=hobby[i] %><br>
<% } %>
</fieldset>
</body>
</html>