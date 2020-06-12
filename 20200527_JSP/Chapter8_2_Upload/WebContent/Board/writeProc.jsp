<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="Care.Lab.Board"%>
<%@ page contentType="text/html; charset=UTF-8"
	import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"
	import="com.oreilly.servlet.MultipartRequest"
	import="java.net.URLEncoder"%>

<%@ include file="../common/dbConn.jspf"%>

<%!
	public boolean Insert(Connection conn, Board o) {
		PreparedStatement pstmt = null;
		boolean result = true;
		String sql = "INSERT INTO Board " + "(no, id, title, content, writeDate) "
				+ "VALUES (Board_SEQ.nextval, ?, ?, ?, TO_DATE(?, 'yyyy/mm/dd hh24:mi:ss'))";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, o.getId());
			pstmt.setString(2, o.getTitle());
			pstmt.setString(3, o.getContent());
			pstmt.setString(4, o.getWritedate());
	
			pstmt.execute();
		} catch (Exception e) {
			e.printStackTrace();
			result = false;
		} finally {
			if (pstmt != null)			try {pstmt.close();	} catch (Exception e) {}
			if (conn != null)	try {conn.close();} catch (Exception e) {}
		}
		return result;
	}

	public MultipartRequest getMultiReq(HttpServletRequest req, String uploadFile, int maxSz) {
		//서버의 실제 경로
		String uploadFilePath = req.getServletContext().getRealPath("uploadFile");
		
		//maxSz MB
		int maxSize = 1024 * 1024 * maxSz; 
		
		MultipartRequest multiReq = null;
		try{
			multiReq = new MultipartRequest(
				req, uploadFilePath, maxSize, "utf-8",
				new DefaultFileRenamePolicy());
			
	// 	out.print("파일경로 : " + uploadFilePath + "<br/>");
	// 	out.print("작성자 : " + multiReq.getParameter("writer") + "<br/>");
	// 	out.print("제목 : " + multiReq.getParameter("title") + "<br/>");
	// 	out.print("내용 : " + multiReq.getParameter("contents") + "<br/>");
	// 	out.print("파일 : " + multiReq.getParameter("uploadFile") + "<br/>"); //null 값을 갖는다.
	// 	out.print("업로드파일명 : " + multiReq.getFilesystemName("uploadFile") + "<br/>");
	// 	out.print("원래파일명 : " + multiReq.getOriginalFileName("uploadFile") + "<br/>");
	
	// 	out.print("<a href='" + uploadFilePath + "/" + multiReq.getFilesystemName("uploadFile") + "'>"
	// 			+ multiReq.getFilesystemName("uploadFile") + "</a>" + "<br/>");
	// 	out.print("<a href='" + request.getContextPath() + "/uploadFile/" + multiReq.getFilesystemName("uploadFile") + "'>"
	// 			+ multiReq.getFilesystemName("uploadFile") + "</a>");
	
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
		
		board.setId(multiReq.getParameter(("writer")));
		board.setTitle(multiReq.getParameter(("title")));
		board.setContent(multiReq.getParameter(("contents")));
		board.setWritedate(getToday());
		
		return board;
	}
%>



<%
	MultipartRequest multiReq = getMultiReq(request, "uploadFile", 10);
	Board board = setBoard(multiReq);

	String pagePath = "writeForm";
	String errorLog = "데이터 입력 실패 !";
 
	Connection conn = getConn("localhost", "1521", "xe");
	if(Insert(conn, board)){ 
%>
		<jsp:forward page="/Board/boardProc.jsp"></jsp:forward>
<% 
	} else {
		errorLog = "데이터 입력 성공 !";
%>

<jsp:forward page="/index.jsp">
	<jsp:param value="<%=pagePath %>" name="frmPage"/>
	<jsp:param value='<%=URLEncoder.encode(errorLog, "UTF-8") %>' name="errorLog"/>
</jsp:forward>

<%
	} 
%>
