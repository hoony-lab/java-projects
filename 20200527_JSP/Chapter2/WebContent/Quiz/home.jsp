<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String centerPage = request.getParameter("centerPage");
	
	if(centerPage==null || "home".contentEquals(centerPage))
		centerPage = "module/Center_home.jsp";
	else if("write".contentEquals(centerPage))
		centerPage = "module/Center_write.jsp";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>home</title>
<style type="text/css">
.home{
	width: 800;
	border: 1px solid blue;
}
.home{
	border: 1px solid black;
	padding: 10px;
}
</style>
</head>
<body>
<table class="home">
<tr>
	<td>
		<jsp:include page="module/top.jsp" flush="false"/>
	</td>
</tr>
<tr>
	<td>
		<jsp:include page="<%=centerPage %>" flush="false"/>
	</td>
</tr>
<tr>
	<td>
		<jsp:include page="module/bottom.jsp" flush="false"/>
	</td>
</tr>
</table>
</body>
</html>









