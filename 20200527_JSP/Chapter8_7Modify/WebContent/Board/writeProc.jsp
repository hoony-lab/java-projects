<%@page import="java.util.ArrayList"%>
<%@page import="Care.Lab.Reply"%>
<%@page import="java.util.List"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="Care.Lab.Board"%>
<%@ page contentType="text/html; charset=UTF-8"
   import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"
   import="com.oreilly.servlet.MultipartRequest"
   import="java.net.URLEncoder"
%>
<%@ include file="../common/dbConn.jspf"%>
<%!
	public boolean Insert(Connection conn, Board board){
		PreparedStatement pstmt = null;
		boolean result = true;
		String sql = 	"INSERT INTO board "+
						"(no, id, title, contents, writeDate) "+
						"VALUES (Board_SEQ.nextval, ?, ?, ?, TO_DATE(?, 'yyyy/mm/dd hh24:mi:ss'))";
		try{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, board.getId());
			pstmt.setString(2, board.getTitle());
			pstmt.setString(3, board.getContents());
			pstmt.setString(4, board.getWritedate());
			
			pstmt.execute();
		}catch(Exception e){
			e.printStackTrace();
			result = false;
		}finally{
			if(pstmt != null)	try{pstmt.close();}catch(Exception e){}
			if(conn !=null)	try{conn.close();}catch(Exception e){}
		}
		return result;
	}

	public MultipartRequest getMultiReq(HttpServletRequest request, String uploadFile, int maxSz){
		//서버의 실제 경로
	   String uploadFilePath = request.getServletContext().getRealPath(uploadFile);
		//uploadFilePath = "C:\\자바취업반\\src\\Chapter8_3_DB\\WebContent\\uploadFile";
		System.out.println(uploadFilePath);
	   int maxSize = 1024*1024*maxSz;   //10MB
	   
	   MultipartRequest multiReq = null;
	   try{
		   multiReq = new MultipartRequest(
		      request, uploadFilePath, maxSize, "utf-8", 
		      new DefaultFileRenamePolicy());
	   }catch(Exception e){}
	   
	   return multiReq;
	}
	public String getToday(){
		Date date = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		return formatter.format(date).toString();
	}
	public Board setBoard(MultipartRequest multiReq){
		Board board = new Board();
		
		board.setId(multiReq.getParameter("writer"));
		board.setTitle(multiReq.getParameter("title"));
		board.setContents(multiReq.getParameter("contents"));
		board.setWritedate(getToday());
		
		return board;
	}
	public boolean Update(Connection conn, Board board){
		PreparedStatement pstmt = null;
		boolean result = true;
		String sql = 	"UPDATE board "+
						"SET title=?, contents=?, writeDate=sysdate "+
						"WHERE no=?";
		try{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, board.getTitle());
			pstmt.setString(2, board.getContents());
			pstmt.setInt(3, board.getNo());
			
			pstmt.execute();
		}catch(Exception e){
			e.printStackTrace();
			result = false;
		}finally{
			if(pstmt != null)	try{pstmt.close();}catch(Exception e){}
			if(conn !=null)	try{conn.close();}catch(Exception e){}
		}
		return result;
	}

	
	
	
	//Reply
	public List<Reply> getReply(Connection conn, int no){
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Reply> replyList = new ArrayList<>();
		String sql = 	"SELECT * " +
						"FROM REPLY r " +
						"JOIN BOARD b " + 
						"on r.no=b.no " +
						"WHERE b.no = ?";
		try{
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			
		}catch(Exception e){		
			e.printStackTrace();
		}
		finally{
			if(rs != null)		try{rs.close();}	catch(Exception e){}
			if(pstmt != null)	try{pstmt.close();}	catch(Exception e){}
			if(conn !=null)		try{conn.close();}	catch(Exception e){}
		}
		return replyList;
	}
	
	public int getDepth(Connection conn, int pno){
		int res = 0;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = 	"SELECT NVL(DEPTH, 0)+1 " +
						"FROM REPLY " +
						"WHERE NO = ?";
		try{
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pno);
			
			rs = pstmt.executeQuery();
			if(rs.next()) res = rs.getInt(1);
			
		}catch(Exception e){		
			e.printStackTrace();
		}
		finally{
			if(rs != null)		try{rs.close();}	catch(Exception e){}
			if(pstmt != null)	try{pstmt.close();}	catch(Exception e){}
// 			if(conn !=null)		try{conn.close();}	catch(Exception e){}
		}
		return res;
	}
	
	public boolean InsertReply(Connection conn, int pno, int depth, String contents){
		PreparedStatement pstmt = null;
		String sql = 	"INSERT INTO reply(no, pno, depth) "+
				        "VALUES( "+
				        	"( "+
			                "SELECT max(no) "+
			                "FROM board "+ 
				            ") "+
				        ", ?, ?, ?)";
		
		try{
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pno);
			pstmt.setInt(2, depth);
			pstmt.setString(3, contents);
			pstmt.execute();
			
		}catch(Exception e){		
			e.printStackTrace();
			return false;
		}
		finally{
			if(pstmt != null)	try{pstmt.close();}	catch(Exception e){}
			if(conn !=null)		try{conn.close();}	catch(Exception e){}
		}
		return true;
	}




%>
<%
 	MultipartRequest multiReq = getMultiReq(request, "uploadFile", 10);
	Board board = setBoard(multiReq);
	String no = multiReq.getParameter("no");
	String pno = multiReq.getParameter("pno");
	boolean isSuccess=false;
	
	String comment = "haha";
	
	String pagePath = "writeForm";
	String errorLog = "데이터 입력 실패";
	
	Connection conn = getConn("localhost", "1521", "xe");
	
	if(!"".contentEquals(pno)){
		isSuccess = Insert(conn, board);
		int depth = getDepth(getConn("localhost", "1521", "xe"), Integer.parseInt(pno));
		InsertReply(getConn("localhost", "1521", "xe"), Integer.parseInt(pno), depth, comment);
	}
	else{
		
	}
	
	
	if(!"".contentEquals(no)){
		board.setNo(Integer.parseInt(no));
		isSuccess = Update(conn, board);
	}else 
		isSuccess = Insert(conn, board);
	if(isSuccess){
%>
		<jsp:forward page="/Board/boardProc.jsp"></jsp:forward>
<%
	}else{
%>
<jsp:forward page="/index.jsp">
<jsp:param value="<%=pagePath %>" name="frmPage"/>
<jsp:param value='<%=URLEncoder.encode(errorLog, "UTF-8") %>' name="errorLog"/>
</jsp:forward>
<%
	}
%>















