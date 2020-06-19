<%@page import="java.net.URLEncoder"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Care.Common.BoardTools"%>
<%@page import="Care.Lab.Board"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%!
	public String getEncoderStr(HttpServletRequest req, String str, String encode){
		String encodeStr = "";
		try{
			encodeStr = req.getParameter(str);
			//한글을 URL로 전송하기 위해 URLEncoder 사용
			return encodeStr==null?"":URLEncoder.encode(encodeStr, encode);
		}catch(Exception e){e.printStackTrace();}
		return encodeStr;
	}
%>
<%
	String searchSelect = getEncoderStr(request, "searchSelect", "UTF-8");
	String search = getEncoderStr(request, "search", "UTF-8");
	String naviStr = "searchSelect="+searchSelect+"&search="+search+"&";
	
	List<Board> boardLst = (List<Board>)session.getAttribute("boardLst");
	String url = request.getContextPath()+"/Board/boardProc.jsp?"+naviStr+"curPage=boardForm&pageNum=";
	String path = request.getContextPath()+"/Board/boardProc.jsp?curPage=boardForm&pageNum="+1;
	
	String scriptFuncName = "formSubmit('"+path+"','boardForm')";
	
	int totalPage = (int)request.getAttribute("totalPage");
	int blockSize = (int)request.getAttribute("blockSize");
	int pageNum = (int)request.getAttribute("pageNum");
	
	int pageCnt = totalPage / blockSize;
	if(	totalPage % blockSize>0 )	pageCnt++;
%>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/boardForm.js"></script>
<center>
<form id="frm" action="<%=request.getContextPath()%>/index.jsp" method="post">
<input type="hidden" name="curPage">
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
		for(Board board : boardLst){
	%>
	<tr>
		<td style="width: 40px; height:40px;" align="center"><input type="checkbox" name="checkBoxTitle" value="<%=board.getNo()%>"/></td>
		<td style="width: 330px; height:40px;" align="center">
		<a href="<%=request.getContextPath() %>/Board/viewProc.jsp?curPage='boardForm'&no=<%=board.getNo() %>"> <%=board.getTitle()%></a></td>
		<td style="width: 80px; height:40px;" align="center"><%=board.getId()%></td>
		<td style="width: 120px; height:40px;" align="center"><%=board.getWritedate()%></td>
		<td style="width: 80px; height:40px;" align="center"><%=board.getHit()%></td>
	</tr>
	<%
		}
	%>
	<tr><td colspan=5><hr/></td></tr>
	<tr>
		<td colspan=2><input type="checkbox" name="checkBoxTitleAll" onclick="checkAll('checkBoxTitle', 'checkBoxTitleAll')"/>전체선택</td>
		<td colspan=3 align="right">
			<input type="button" onclick="<%=scriptFuncName %>" value='삭제' style="width: 100px; "/>
			<input type="submit" value='글쓰기' style="width: 100px; "/>
		</td>
	</tr>
	<tr><td colspan=5><hr/></td></tr>
</table>

<%=BoardTools.getNavi(pageNum, blockSize, totalPage, url)%>
 

<table>
<tr>
<td>
	<%
		List<String> lst = new ArrayList<String>();
	
		lst.add("전체");
		lst.add("제목");
		lst.add("작성자");
		
		out.print(BoardTools.getSearchWord(lst, scriptFuncName));
	%>
</td>
</tr>
</table>
</form>
</center>


















