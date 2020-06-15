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
// 		String sql = 	"INSERT INTO board "+
// 						"(no, id, title, contents, writeDate) "+
// 						"VALUES (Board_SEQ.nextval, ?, ?, ?, TO_DATE(?, 'yyyy/mm/dd hh24:mi:ss'))";

		String sql = "INSERT INTO BOARD (NO, ID, TITLE, CONTENT, WRITEDATE) " +
						"VALUES( " +
						"(select nvl(max(NO), 0) + 1 FROM board), " +
						"?, ?, ?, sysdate)";
		try{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, board.getId());
			pstmt.setString(2, board.getTitle());
			pstmt.setString(3, board.getContents());
// 			pstmt.setString(4, board.getWritedate());
			
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

%>
<%
 	MultipartRequest multiReq = getMultiReq(request, "uploadFile", 10);
	Board board = setBoard(multiReq);
	
	String pagePath = "writeForm";
	String errorLog = "데이터 입력 실패";
	
	Connection conn = getConn("localhost", "1521", "xe");
	if(Insert(conn, board)){
%>
		<jsp:forward page="/Board/boardProc.jsp?pageNum=1"></jsp:forward>
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
