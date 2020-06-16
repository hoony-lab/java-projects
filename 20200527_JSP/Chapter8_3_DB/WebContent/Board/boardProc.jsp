<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Care.Lab.Board"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="../common/dbConn.jspf" %>
<%!
	public int getTotalPage(Connection conn){
		int cnt = 0;
		String sql ="SELECT COUNT(*) FROM BOARD";
		Statement stmt = null;
		ResultSet rs = null;
		try{
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			rs.next();
			cnt = rs.getInt(1);
		}catch(Exception e){e.printStackTrace();
		}finally{
			if(stmt != null) try{stmt.close();} catch(Exception e){e.printStackTrace();}
			if(conn != null) try{conn.close();} catch(Exception e){e.printStackTrace();}
		}
		return cnt;
	}
	

	public int getTotalPage(Connection conn, String whereOption){
		int cnt = 0;
		String sql ="SELECT COUNT(*) FROM BOARD " + whereOption;
		Statement stmt = null;
		ResultSet rs = null;
		try{
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			rs.next();
			cnt = rs.getInt(1);
		}catch(Exception e){e.printStackTrace();
		}finally{
			if(stmt != null) try{stmt.close();} catch(Exception e){e.printStackTrace();}
			if(conn != null) try{conn.close();} catch(Exception e){e.printStackTrace();}
		}
		return cnt;
	}


	public List<Board> getBoard(Connection conn, int start, int end){
		String sql = "SELECT * " + 
					"FROM( " +
					"SELECT NO, id, title, content, writedate, ROWNUM AS rn " +
						"from( " +
							"SELECT * " +
							"FROM BOARD " +
							"ORDER BY NO DESC)" +
						") " +
					"WHERE rn > ? AND rn <= ?";
					
		// resultset for select query
		ResultSet rs = null;
		List<Board> boardList = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		try{
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				Board board = new Board();
				
				board.setNo(rs.getInt(1));
				board.setId(rs.getString(2));
				board.setTitle(rs.getString(3));
				board.setContents(rs.getString(4));
				board.setWritedate(rs.getString(5));
				
				boardList.add(board);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(rs != null)		try{rs.close();}	catch(Exception e){e.printStackTrace();}
			if(pstmt != null)	try{pstmt.close();}	catch(Exception e){e.printStackTrace();}
			if(conn != null)	try{conn.close();}	catch(Exception e){e.printStackTrace();}
		}
		
		return boardList;
	}
	
	public List<Board> getBoard(Connection conn, int start, int end, String whereOption){
		String sql = "SELECT * " + 
					"FROM( " +
					"SELECT NO, id, title, content, writedate, ROWNUM AS rn " +
						"from( " +
							"SELECT * " +
							"FROM BOARD " +
							whereOption +
							" ORDER BY NO DESC)" +
						") " +
					"WHERE rn > ? AND rn <= ?";
					
		// resultset for select query
		ResultSet rs = null;
		List<Board> boardList = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		try{
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				Board board = new Board();
				
				board.setNo(rs.getInt(1));
				board.setId(rs.getString(2));
				board.setTitle(rs.getString(3));
				board.setContents(rs.getString(4));
				board.setWritedate(rs.getString(5));
				
				boardList.add(board);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(rs != null)		try{rs.close();}	catch(Exception e){e.printStackTrace();}
			if(pstmt != null)	try{pstmt.close();}	catch(Exception e){e.printStackTrace();}
			if(conn != null)	try{conn.close();}	catch(Exception e){e.printStackTrace();}
		}
		
		return boardList;
	}
	
	

	
	

%>

<%

// 	int pageNum = (request.getParameter("pageNum") == null) ? 
// 			0 : Integer.parseInt(request.getParameter("pageNum")) - 1;

	int pageNum = Integer.parseInt(request.getParameter("pageNum")) - 1;
	int blockSize = 3;
	int totalPage = 0;
	List<Board> boardList = null;
	Connection conn = getConn("localhost", "1521", "xe");

	if(request.getParameter("frmPage") == null) {
		
		boardList = getBoard(conn, pageNum * blockSize, (pageNum + 1 ) * blockSize);
		totalPage = getTotalPage(getConn("localhost", "1521", "xe"));
	}
	else if("boardProc".contentEquals(request.getParameter("frmPage"))){
		String searchOption = (String)request.getParameter("searchOption");
		String searchText = (String)request.getParameter("searchText");
		String whereOption = "";
		
		if("all".contentEquals(searchOption))
			whereOption = " WHERE title like '%" + searchText + "%' OR id like '%" + searchText + "%' ";
		else if(searchText == null || searchText == ""){
			boardList = getBoard(conn, pageNum * blockSize, (pageNum + 1 ) * blockSize);
			totalPage = getTotalPage(getConn("localhost", "1521", "xe"));
		}
		else
			whereOption = " WHERE " + searchOption + " like '%" + searchText + "%' ";
		
		boardList = getBoard(conn, pageNum * blockSize, (pageNum + 1 ) * blockSize, whereOption);
		totalPage = getTotalPage(getConn("localhost", "1521", "xe"), whereOption);
	}
	
	request.setAttribute("totalPage", totalPage);
	request.setAttribute("blockSize", blockSize);
	request.setAttribute("boardList", boardList);
	request.setAttribute("pageNum", pageNum+1);
	
%>

<jsp:forward page="/index.jsp?curPage=boardForm">
	<jsp:param value="boardForm" name="frmPage"/>
</jsp:forward>





