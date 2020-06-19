<%@ page contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<%
	String frmPage = request.getParameter("frmPage");
	String frmPath = "";
	
	if(frmPage==null)	frmPath = "/form/home";
	else if("authForm".contentEquals(frmPage) || 
	   "memberForm".contentEquals(frmPage))
		frmPath = "/membership/"+frmPage;
	else if("loginForm".contentEquals(frmPage) ||
			"logout".contentEquals(frmPage))
		frmPath = "/Login/"+frmPage;
	else if("boardForm".contentEquals(frmPage) ||
			"writeForm".contentEquals(frmPage) ||
			"viewForm".contentEquals(frmPage))
		frmPath = "/Board/"+frmPage;
	else if(frmPage != null)	frmPath = "/form/"+frmPage;
	
	frmPath += ".jsp";
%>
<html>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/4.5.0/cerulean/bootstrap.min.css">
<body>
<div class="container" align="center">
<table style="width:800px;">
<tr>
	<td style="height:100px;"><%@ include file="/common/top.jsp" %></td>
</tr>
<tr>
	<td style="height:400px;">
		<jsp:include page="<%=frmPath %>">
			<jsp:param value="index" name="curPage"/>
		</jsp:include>
	</td>
</tr>
<tr>
	<td style="height:50px;"><%@ include file="/common/footer.jspf" %></td>
</tr>
</table>
</div>
</body>
</html>







