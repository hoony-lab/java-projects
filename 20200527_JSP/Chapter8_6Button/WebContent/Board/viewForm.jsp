<!-- viewForm.jsp -->
<%@page import="Care.Lab.Board"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<% 
Board board = (Board)request.getAttribute("board");
String path = request.getContextPath()+"/index.jsp";
String boardProcPath = request.getContextPath()+"/Board/boardProc.jsp";
%>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/boardForm.js"></script>

<script type="text/javascript">
<!--
function deletePost(no) {
	let frm = document.getElementById('frm');
	frm.innerHTML += '<input type="hidden" name="checkBoxTitle" value="'+no+'"/>';
	formSubmit('<%=boardProcPath %>', 'viewForm');
}

function modifyPost(path, no, title, contents){
	let frm = document.getElementById('frm');
	frm.innerHTML += '<input type="hidden" name="no" value="'+no+'"/>';
	frm.innerHTML += '<input type="hidden" name="title" value="'+title+'"/>';
	frm.innerHTML += '<input type="hidden" name="contents" value="'+contents+'"/>';
	formSubmit('<%=path %>', 'writeForm');
}
//-->
</script>
<center>
<form id="frm" action="<%=path%>" method="post">
<input type="hidden" id="frmPage" name="frmPage" value="writeForm"/>
<!-- 목록 이동을 위한 정보 -->
<input type="hidden" id="curPage" name="curPage" value="viewForm"/>
<input type="hidden" id="pageNum" name="pageNum" value="1"/>

<table style="width: 650px; ">
	<tr>
		<td style="width: 300px; height:40px;" valign="middle"><h2><%=board.getTitle() %></h2></td>
		<td style="width: 350px; height:40px;" align="right" valign="bottom"><%=board.getWritedate() %></td>
	</tr>
	<tr>
		<td colspan=2><hr/></td>
	</tr>
	<tr>
		<td  style="width: 300px; height:40px;" valign="top"><%=board.getId() %></td>
		<td style="width: 3560px; height:40px;" align="right" valign="top">첨부파일</td>
	</tr>
	<tr>
		<td colspan=2 style="width: 650px; height: 300px" valign="top">
		<pre>
<%=board.getContents() %>
		</pre>
		</td>
	</tr>
	<tr>
		<td colspan=2><hr/></td>
	</tr>
	<tr>
		<td colspan=2 align="right">
			<input type=submit style="width: 60px; " value='글쓰기'/> 
			<input type=button style="width: 60px; " value='답글'/>
			<input type=button onclick="modifyPost('<%=path %>', '<%=board.getNo() %>', '<%=board.getTitle() %>', '<%=board.getContents() %>')" style="width: 60px; " value='수정'/>
			<input type=button onclick="deletePost('<%=board.getNo() %>')" style="width: 60px; " value='삭제'/>
			<input type=button onclick="formSubmit('<%=boardProcPath %>', 'viewForm')" style="width: 60px; " value='목록'/>
		</td>
	</tr>
</table>
</form>
</center>









