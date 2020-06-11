<%@ page contentType="text/html; charset=UTF-8"%>

<style type="text/css">
<!--

a:link{color:black;font-family:sans-serif;text-decoration:none;}
a:visited{color:black;font-family:sans-serif;text-decoration:none;}
a:hover{color:#cc3300; font-weight:bold; }
a:active{color:#ff00cc; text-decoration:underline; }
-->
</style>

<%
	String auth = (String)session.getAttribute("auth");
	String logout = "";
	if(auth == null) 	auth = "";
	else{
		auth += "님 반갑습니다 !";
		logout = "로그아웃";
	}
%>

<table style="width:800">
	<tr><td align="center" colspan=5><h1>CARE Lab</h1></td></tr>
	<tr align="right">
		<td></td>
		<td colspan=3><%=auth %></td>
		<td><span><a href="<%=request.getContextPath() %>/login/logoutProc.jsp"><i><%=logout %></i></a></span></td>
	</tr>
	<tr align="right" >
		<td width=500></td>
	      <td><a href="<%=request.getContextPath() %>/index.jsp?frmPage=home">홈</a></td>
	      <td><a href="<%=request.getContextPath() %>/index.jsp?frmPage=loginForm">로그인</a></td>
	      <td><a href="<%=request.getContextPath() %>/index.jsp?frmPage=authForm">회원가입</a></td>
	      <% if(!"".contentEquals(auth)) { %>
	      <td><a href="<%=request.getContextPath() %>/index.jsp?frmPage=boardForm">게시판</a></td>
	      <% } %>
	</tr>
	<tr><td align="center" colspan=5><hr/></td></tr>
</table>

