<%@page import="java.util.Collections"%>
<%@page import="java.util.Comparator"%>
<%@page import="hoony.lab.Board"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8"%>

<%
	String auth = (String)session.getAttribute("auth");
	if(auth == null) { %>
	<script>history.go(-1)</script>
	<% } %>
	

<%@ include file="../common/dbConn.jspf" %>

<%!
	public List<Board> SelectBoard(){
		List<Board> boardList = new ArrayList<>();
		
		Connection conn = getConn("localhost", "1521", "ex");
		String sql = "SELECT * FROM Board";
		
		Statement stmt = null;
		ResultSet rs = null;
		try{
			rs = stmt.executeQuery(sql);
			
			// id, title, date, content
			while(rs.next()){
				Board o = new Board();
				
				o.setId(rs.getString("id"));
				o.setTitle(rs.getString("title"));
				o.setDate(rs.getString("date"));
				o.setViewcnt(rs.getInt("viewcnt"));
				o.setContent(rs.getString("content"));
				o.setNum(rs.getInt("num"));
				
				boardList.add(o);
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return boardList;
	}

	public String MakeBoard(List<Board> boardList){
// 		boardList.sort(Comparator<Board> (Board b1, Board b2) -> b2.getDate() - b1.getDate());
		
		Comparator<Board> cmp = Comparator.comparing(Board::getDate);
		
		Collections.sort(boardList, cmp);
		
		Collections.sort(boardList, Comparator.comparing(Board::getDate));
		
		LocalDate date = LocalDate.now();
		
		String res = "";
		res += "<tr>";
// 		res += "<td style='width: 40px; height:40px;' align='center'><input type='checkbox'/></td>";
// 		res += "<td style='width: 330px; height:40px;' align='center'>" + title + "</td>";
// 		res += "<td style='width: 80px; height:40px;' align='center'>" + id + "</td>";
// 		res += "<td style='width: 120px; height:40px;' align='center'>" + date + "</td>";
// 		res += "<td style='width: 80px; height:40px;' align='center'>" + viewCnt + "</td>";
		res += "</tr>";
		
		return res;
	}
	
%>

<%
	//String ip = request.getRemoteAddr();
%>
<form id="form" action="index.jsp" method="post">
	<input type="hidden" name="curPage" value="boardForm">
	<input type="hidden" name="frmPage" value="writeForm">
	<div align="center">
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
		<tr>
			<td style="width: 40px; height:40px;" align="center"><input type="checkbox"/></td>
			<td style="width: 330px; height:40px;" align="center">자주 이용해 주세요</td>
			<td style="width: 80px; height:40px;" align="center">관리자</td>
			<td style="width: 120px; height:40px;" align="center">20xx.xx.xx</td>
			<td style="width: 80px; height:40px;" align="center">1</td>
		</tr>
		<tr>
			<td style="width: 40px; height:40px;" align="center"><input type="checkbox"/></td>
			<td style="width: 330px; height:40px;" align="center">게시판 확인</td>
			<td style="width: 80px; height:40px;" align="center">관리자</td>
			<td style="width: 120px; height:40px;" align="center">20xx.xx.xx</td>
			<td style="width: 80px; height:40px;" align="center">10</td>
		</tr>
		<tr><td colspan=5><hr/></td></tr>
		<tr>
			<td colspan=2><input type="checkbox"/>전체선택</td>
			<td colspan=3 align="right">
				<input type="button" value='삭제' style="width: 100px; "/>
				<input type="submit" value='글쓰기' style="width: 100px; "/>
			</td>
		</tr>
		<tr><td colspan=5><hr/></td></tr>
	</table>
	이전 1 2 3 4 다음
	<table>
	<tr>
	<td>
		<select>
			<option>전체</option>
			<option>제목</option>
			<option>작성자</option>
		</select>
		<input type=text name='search'/>
		<input type=button name='searchBtn' value='검색' style="width: 80px; "/>
	</td>
	</tr>
	</table>
	</div>
</form>

