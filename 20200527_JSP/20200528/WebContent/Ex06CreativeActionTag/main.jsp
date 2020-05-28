<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%
	String center = request.getParameter("center");
if (center == null || "home".contentEquals(center))
	center = "module/center_home.jsp";
else if ("write".contentEquals(center))
	center = "module/center_write.jsp";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Nike</title>

</head>
<body>
	<br>
	<hr>

	<h1 align="center" color="red">Nike Korea</h1>
	<hr>
	<table align="center" border="3" width="80%" cellspacing="5"
		cellpadding="5">
		<tr>
			<td colspan='2'><jsp:include page="module/top.jsp" flush="false" /></td>
		</tr>
		<tr>
			<td height="300"><jsp:include page="<%=center%>" flush="false" />
			</td>
			<%-- 			<td width="50%"><jsp:include page="module/left.jsp" flush="false" /></td>
			<td><jsp:include page="module/right.jsp" flush="false" /></td> --%>
		</tr>
		<tr height="50">
			<td colspan='2'><jsp:include page="module/bottom.jsp"
					flush="false" /></td>
		</tr>
	</table>
	<hr>
	<h6 align="center">Copyright @ WSJ. All rights reserved</h6>
</body>
</html>