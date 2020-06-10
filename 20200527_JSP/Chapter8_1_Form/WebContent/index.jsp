<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/common/header.jspf" %>
<%
	
String frmPage = request.getParameter("frmPage");
String frmPath = request.getContextPath();
if(frmPage == null) frmPath = "/form/home";
else if("authForm".contentEquals(frmPage) || 
		"memberForm".contentEquals(frmPage))
	frmPath = "/membership/" + frmPage;
else if(frmPage != null) frmPath = "/form/" + frmPage;
frmPath += ".jsp";
%>
<head>
<!-- 	<link rel="stylesheet" type="text/css" href="../assets/dist/css/bootstrap.css/"> -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/4.5.0/cerulean/bootstrap.min.css">
</head>
<html>
<body>
<div align="center">
<table style="width:800px;">
<tr>
	<td style="height:100px;"><%@ include file="/common/top.jsp" %></td>
</tr>
<tr>
	<td style="height:400px;"><jsp:include page="<%=frmPath%>"/></td>
</tr>
<tr>
	<td style="height:50px;"><%@ include file="/common/footer.jspf" %></td>
</tr>
</table>
</div>
</body>
</html>