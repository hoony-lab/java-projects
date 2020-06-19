<%@ page contentType="text/html; charset=UTF-8"%>
<%
	String usrId = (String)session.getAttribute("usrId");
%>
<style type="text/css">
<!--

a:link{color:black;font-family:sans-serif;text-decoration:none;}
a:visited{color:black;font-family:sans-serif;text-decoration:none;}
a:hover{color:#cc3300; font-weight:bold; }
a:active{color:#ff00cc; text-decoration:underline; }
-->
</style>

<table style="width:800">
	<tr><td align="center" colspan=5><h1>CARE Lab</h1></td></tr>
	<tr align="right">
		<td width=600></td>
		<td><a href="<%=request.getContextPath() %>/index.jsp?frmPage=home">홈</a></td>
<%if(usrId!=null) {%>
		<td><a href="<%=request.getContextPath() %>/index.jsp?frmPage=logout">로그아웃(<%=usrId %>)</a></td>
		<td><a href="<%=request.getContextPath() %>/Board/boardProc.jsp?curPage=boardForm&pageNum=1">게시판</a></td>
<%}else{ %>
		<td><a href="<%=request.getContextPath() %>/index.jsp?frmPage=loginForm">로그인</a></td>
		<td><a href="<%=request.getContextPath() %>/index.jsp?frmPage=authForm">회원가입</a></td>
<%} %>
	</tr>
	<tr><td align="center" colspan=5><hr/></td></tr>
</table>







