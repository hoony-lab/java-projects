<%@page import="java.util.ArrayList"%>
<%@page import="Care.Lab.Board"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="../common/dbConn.jspf" %>

<%!
	public List<Board> getOptionBoard(Connection conn, String searchOption, String searchText){
		List<Board> boardList = new ArrayList<>();
		String sql = "SELECT * FROM BOARD";
		
// 		if(searchOption == all)
// 			String sql = "SELECT * FROM BOARD WHERE title like searchText OR id like searchText";
// 		else
// 			String sql = "SELECT * FROM BOARD WHERE searchOption like searchText";
		
		if("all".contentEquals(searchOption))
			sql += " WHERE title like '%" + searchText + "%' OR id like '%" + searchText + "%'";
		else
			sql += " WHERE " + searchOption + " like '%" + searchText + "%'";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try{
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				Board o = new Board();
				o.setNo(rs.getInt(1));
				o.setId(rs.getString(2));
				o.setTitle(rs.getString(3));
				o.setContents(rs.getString(4));
				o.setWritedate(rs.getString(5));
				
				boardList.add(o);
			}
		}catch(Exception e){e.printStackTrace();
		}finally{
			try{
			pstmt.close();
			rs.close();
			conn.close();}
			catch(Exception e){e.printStackTrace();}
		}
		
		return boardList;
	}	
%>
<%
	String searchOption = (String)request.getParameter("searchOption");
	String searchText = (String)request.getParameter("searchText");
	
	Connection conn = getConn("localhost", "1521", "xe");
	List<Board> boardList = getOptionBoard(conn, searchOption, searchText);
	
	request.setAttribute("boardList", boardList);
%>

<jsp:forward page="/index.jsp">
	<jsp:param value="boardForm" name="frmPage"/>
	<jsp:param value="boardForm" name="curPage" />
</jsp:forward>

