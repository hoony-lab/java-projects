<%@page import="java.util.ArrayList"%>
<%@page import="Care.Lab.Board"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="../common/dbConn.jspf"%>
<%!
	public List<Board> getBoard(Connection conn, int start, int end, String conditional){
		PreparedStatement pstmt = null;
		String sql = 	"SELECT * " +
						"from( "+
						"SELECT no, id, title, contents, writeDate, hit, ROWNUM AS rn "+
						"FROM ( "+
						"    SELECT b.no, id, title, contents, writeDate, nvl(readNo, 0) AS hit "+
						"    FROM Board b "+
						"	 LEFT JOIN hits h "+
						" 	 ON b.no = h.no "+
						conditional+
						"	ORDER BY no DESC) "+
						")"+
						"WHERE rn > ? AND rn <= ?";
		ResultSet rs = null;
		List<Board> boardLst = new ArrayList<>();
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
				board.setHit(rs.getInt(6));
				
				boardLst.add(board);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(rs != null)	try{rs.close();}catch(Exception e){}
			if(pstmt != null)	try{pstmt.close();}catch(Exception e){}
			if(conn !=null)	try{conn.close();}catch(Exception e){}
		}
		return boardLst;
	}

public int getTotalPage(Connection conn, String conditional){
	PreparedStatement pstmt = null;
	String sql = 	"SELECT count(*) " +
					"FROM board "+conditional;	
	ResultSet rs = null;
	
	try{
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		if(rs.next()) return rs.getInt(1);
	}catch(Exception e){		e.printStackTrace();	}
	finally{
		if(rs != null)	try{rs.close();}catch(Exception e){}
		if(pstmt != null)	try{pstmt.close();}catch(Exception e){}
		if(conn !=null)	try{conn.close();}catch(Exception e){}
	}
	return 0;
}
public String getConditional(String searchSelect, String search){
	if(searchSelect==null)return "";
	if("작성자".contentEquals(searchSelect))
		return "WHERE id like '%"+search+"%'";
	else if("제목".contentEquals(searchSelect))
		return "WHERE title like '%"+search+"%'";
	else if("전체".contentEquals(searchSelect))
		return "WHERE id like '%"+search+"%' OR title like '%"+search+"%'";
	return "";
}
public boolean Delete(Connection conn, List<String> lst){
	PreparedStatement pstmt = null;
	String sql = 	"DELETE FROM board WHERE no=? ";	
	
	try{
		for(String no : lst){
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, no);
			pstmt.execute();
		}	
	}catch(Exception e){		
		e.printStackTrace();
		return false;
	}
	finally{
		if(pstmt != null)	try{pstmt.close();}catch(Exception e){}
		if(conn !=null)	try{conn.close();}catch(Exception e){}
	}
	return true;
}
%>
<%
	String searchSelect = request.getParameter("searchSelect");
	String search = request.getParameter("search");
	String conditional = getConditional(searchSelect, search);
	
	String [] checkBoxTitle = request.getParameterValues("checkBoxTitle");
	
	if(checkBoxTitle!=null){
		List<String> lst = new ArrayList<>();
		for(int i=0;i<checkBoxTitle.length;i++)
			lst.add(checkBoxTitle[i]);
		
		Delete(getConn("localhost", "1521", "xe"), lst);
	}
	int pageNum = Integer.parseInt( request.getParameter("pageNum") )-1;
	int blockSize = 2;
	
	Connection conn = getConn("localhost", "1521", "xe");
	List<Board> boardLst = getBoard(conn, pageNum * blockSize, (pageNum+1) * blockSize, conditional);
	
	session.setAttribute("boardLst", boardLst);
	request.setAttribute("totalPage", getTotalPage(getConn("localhost", "1521", "xe"), conditional));
	request.setAttribute("blockSize", blockSize);
	request.setAttribute("pageNum", pageNum+1);
%>

<jsp:forward page="/index.jsp">
<jsp:param value="boardForm" name="frmPage"/>
</jsp:forward>
















