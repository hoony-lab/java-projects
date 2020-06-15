<%@page import="Care.Lab.Board"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8"%>

<script src="../js/boardForm.js"></script>

<%
	String url = request.getContextPath() + "/Board/boardProc.jsp?curPage=boardForm&pageNum=";
	List<Board> boardList = (List<Board>)request.getAttribute("boardList");
	
	int totalPage = (int)request.getAttribute("totalPage");
	int blockSize = (int)request.getAttribute("blockSize");
	int pageNum = (int)request.getAttribute("pageNum");
	
	int pageCnt = totalPage / blockSize;
	if(totalPage % blockSize > 0) pageCnt++;
%>
<center>
<form action="<%=request.getContextPath() %>/index.jsp" method="post">
<input type="hidden" name="frmPage" value="writeForm">
<table style="width: 650px; ">
	<thead>
	<tr>
		<th style="width: 40px; height:20px;" align="center">선택</th>
		<th style="width: 330px; height:20px;" align="center">제 목</th>
		<th style="width: 80px; height:20px;" align="center">작성자</th>
		<th style="width: 120px; height:20px;" align="center">작성일</th>
		<th style="width: 80px; height:20px;" align="center">조회수</th>
	</tr>
	</thead>
	<tr>
		<td style="width: 40px; height:20px;" align="center"><hr/></td>
		<td style="width: 330px; height:20px;" align="center"><hr/></td>
		<td style="width: 80px; height:20px;" align="center"><hr/></td>
		<td style="width: 120px; height:20px;" align="center"><hr/></td>
		<td style="width: 80px; height:20px;" align="center"><hr/></td>
	</tr>
	
<%
	int idx = Integer.parseInt(request.getParameter("pageNum"));
	for(Board o : boardList){
%>
	<tr>
		<td class="chkBox" style="width: 40px; height:40px;" align="center"><input type="checkbox" value="<%=o.getNo() %>"/></td>
		<td style="width: 330px; height:40px;" align="center"><%=o.getTitle() %></td>
		<td style="width: 80px; height:40px;" align="center"><%=o.getId() %></td>
		<td style="width: 120px; height:40px;" align="center"><%=o.getWritedate() %></td>
		<td style="width: 80px; height:40px;" align="center">1</td>
	</tr>
<%
	}
%>

	<tr><td colspan=5><hr/></td></tr>
	<tr>
		<td colspan=2><input type="checkbox" onclick="checkAll()"/>전체선택</td>
		<td colspan=3 align="right">
			<input type="button" value='삭제' style="width: 100px; "/>
			<input type="submit" value='글쓰기' style="width: 100px; "/>
		</td>
	</tr>
	<tr><td colspan=5><hr/></td></tr>
</table>
</form>


총 게시글 수 : <%=totalPage %><br>
<jsp:useBean id="menuNavi" class="Care.Common.MenuNavi" />
	<%=menuNavi.getNavi(pageNum, blockSize, totalPage, url)%>
	
<%
// 	if(pageNum > 1) 	out.print("<a href=" + url+ (pageNum - 1) + "> <이전 </a>");
// 	for(int i = 1 ; i <= pageCnt ; i++){
// 		if(i == pageNum) out.print("<b>");
// 		if(i <= pageCnt){
// 		out.print("<a href=" + url+ (i) + "> " + (i) + "</a>");
// 		}
// 		if(i == pageNum) out.print("</b>");
// 	}
// 	if(pageNum < pageCnt) out.print("<a href=" + url+ (pageNum + 1) + "> 다음> </a>");
%> 

<%-- <a href="<%=url+ idx %>">	 <%=idx %></a> --%>
<%-- <a href="<%=url+ (idx+1) %>"><%=(idx+1) %></a> --%>
<%-- <a href="<%=url+ (idx+2) %>"><%=(idx+2) %></a> --%>
<%-- <a href="<%=url+ (idx+3) %>"><%=(idx+3) %></a> --%>

<!-- <a onclick="location.href='boardProc.jsp?curPage=boardForm&pageNum=3'">4</a> -->
<!-- <a onclick="location.href='boardProc.jsp?curPage=boardForm&pageNum=3'">다음</a> -->

<form id="searchForm" action="<%=request.getContextPath() %>/Board/boardProc.jsp?pageNum=1" method="post">
	<input type="hidden" name="curPage" value="boardForm">
	<input type="hidden" name="frmPage" value="boardProc">
<!-- 	<input type="hidden" name="pageNum" value="1"> -->
	<table>
		<tr> 
		<td>
			<select name="searchOption">
				<option value="all">전체</option>
				<option value="title">제목</option>
				<option value="id">작성자</option>
			</select>
			<input id="searchText" type=text name='searchText'/>
			<input type=button id="searchBtn" name='searchBtn' onclick="searchBoard()" value='검색' style="width: 80px; "/>
		</td>
		</tr>
	</table>
</form>
</center>