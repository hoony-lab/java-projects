<%@ page contentType="text/html; charset=UTF-8"%>
<%
	String usrId = (String)session.getAttribute("usrId");
	request.setAttribute("curPage", "writeForm");
%>
<script src="<%=request.getContextPath() %>/js/common.js" type="text/javascript"></script>
<script src="<%=request.getContextPath() %>/js/writeForm.js" type="text/javascript"></script>

<center>
<form id="frm" action="<%=request.getContextPath() %>/Board/writeProc.jsp?curPage=writeForm" method="post" enctype="multipart/form-data">
<input type="hidden" name="curPage" value="writeForm"/>
<table style="width: 650px; ">
	<tr>
		<td style="width: 80px; height:40px;" align="right">작성자</td>
		<td style="width: 570px; height:40px;">
			<input type=text name='writer' value="<%=usrId%>"/> 
		</td>
	</tr>
	<tr>
		<td  style="width: 80px; height:40px;" align="right">제 목</td>
		<td style="width: 570px; height:40px;">
			<input type=text id="title" name='title' style="width: 500px; "/> 
		</td>
	</tr>
	<tr>
		<td colspan=2 align="right"><textarea id="contents" name="contents" style="width: 650px; height: 300px"></textarea></td>
	</tr>
	<tr>
		<td align='right' height=40 colspan=2>
			<input type=file name="uploadFile" style="width: 300px; "/> 
		</td>
	</tr>
	<tr>
		<td align='center' height=40 colspan=2>
			<input type=button onclick="writeProc();" value='글쓰기' style="width: 120px; "/>
			<input type=reset value='취소' style="width: 120px; "/>	 
		</td>
	</tr>
</table>
</form>
</center>