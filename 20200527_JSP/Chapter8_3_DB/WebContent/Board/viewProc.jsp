<%@page import="java.sql.Connection"%>
<%@page import="Care.Lab.Board"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="../common/dbConn.jspf" %>

<%!
	public Board viewBoard(List<Board> boardList, int no){
		Board board = null;
		for(Board o : boardList)
			if(o.getNo().equals(no)){
				board = o;
				Connection conn = getConn("localhost", "1521", "xe");
				
				int readNo = getReadNo(conn, no);
				Update(conn, no, readNo + 1);
				break;
			}
		return board;
	}

	public int getReadNo(Connection conn, int no){
		int res = 0;
		String sql = "SELECT readno FROM hit WHERE no = ?";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			
			if(rs.next()) res = rs.getInt(1);
			
		}catch(Exception e){e.printStackTrace();
		}finally{
			if(pstmt != null) 	try{pstmt.close();} 	catch(Exception e){e.printStackTrace();}
// 			if(conn != null) 	try{conn.close();} 		catch(Exception e){e.printStackTrace();}
		}
		return res;
	}
	
	public void Update(Connection conn, int no, int hit){
		PreparedStatement pstmt = null;
		String deleteSql = "DELETE FROM hit WHERE no = ?";
		String insertSql = "INSERT INTO hit (no, readno) VALUES (?, ?)";
		
		try{
			pstmt = conn.prepareStatement(deleteSql);
			pstmt.setInt(1, no);
			pstmt.execute();
			pstmt.close();
			
			pstmt = conn.prepareStatement(insertSql);
			pstmt.setInt(1, no);
			pstmt.setInt(2, hit);
			pstmt.execute();
			pstmt.close();
			
		}catch(Exception e){e.printStackTrace();
		}finally{
			if(pstmt != null) 	try{pstmt.close();} 	catch(Exception e){e.printStackTrace();}
			if(conn != null) 	try{conn.close();} 		catch(Exception e){e.printStackTrace();}
		}
	}
%>
<%
	List<Board> boardList = (List<Board>)session.getAttribute("boardList");
	int no = Integer.parseInt(request.getParameter("no"));
	
	Board board = viewBoard(boardList, no);
	
	request.setAttribute("board", board);
%>

<jsp:forward page="/index.jsp">
	<jsp:param name="frmPage" value="viewForm"/>
</jsp:forward>