<!-- viewProc.jsp -->
<%@page import="Care.Lab.Board"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="../common/dbConn.jspf"%>
<%!
	public int getReadNo(Connection conn, int no){
		PreparedStatement pstmt = null;
		String sql = 	"SELECT readNo FROM hits WHERE no= ?";
		ResultSet rs = null;
		int result = 0;
		
		try{
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			if(rs.next())	result = rs.getInt(1);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(rs != null)	try{rs.close();}catch(Exception e){}
			if(pstmt != null)	try{pstmt.close();}catch(Exception e){}
		}
		return result;
	}

public void Update(Connection conn, int no, int hit){
	PreparedStatement pstmt = null;
	String insertSql = 	"INSERT INTO hits (no, readno) VALUES(?, ?)";
	String deleteSql = 	"DELETE FROM hits WHERE no= ?";
	
	try{
		pstmt = conn.prepareStatement(deleteSql);
		pstmt.setInt(1, no);
		pstmt.execute();
		pstmt.close();
		
		pstmt = conn.prepareStatement(insertSql);
		pstmt.setInt(1, no);
		pstmt.setInt(2, hit);
		pstmt.execute();
		
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		if(pstmt != null)	try{pstmt.close();}catch(Exception e){}
		if(conn !=null)	try{conn.close();}catch(Exception e){}
	}
}
%>
<%
	String no = request.getParameter("no");
	List<Board> boardLst = (List<Board>)session.getAttribute("boardLst");
	
	for(Board board : boardLst){
		if(Integer.parseInt(no)==board.getNo()){
			request.setAttribute("board", board);
			
			Connection conn = getConn("localhost", "1521", "xe");
			int readNo = getReadNo(conn, board.getNo());
			Update(conn, board.getNo(), readNo+1);
			break;
		}
	}
%>
<jsp:forward page="/index.jsp">
<jsp:param value="viewForm" name="frmPage"/>
</jsp:forward>
















