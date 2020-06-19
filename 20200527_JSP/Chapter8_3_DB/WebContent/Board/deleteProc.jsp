<%@ page contentType="text/html; charset=UTF-8" %>

<%@ include file="../common/dbConn.jspf" %>

<%!
	public boolean DeleteBoard(Connection conn, String [] no){
		boolean res = false;
		
		String sql = "DELETE FROM BOARD WHERE no = ?";
		for(int i = 1 ; i < no.length ; ++i)
			sql += "OR no = ? ";
				
		PreparedStatement pstmt = null;
		try{
			pstmt = conn.prepareStatement(sql);
			for(int i = 0 ; i < no.length ; ++i)
				pstmt.setString(i + 1, no[i]);
			
			res = pstmt.execute();
			
		} catch (Exception e){
			e.printStackTrace();
		} finally {
			if(pstmt != null)	try{pstmt.close();}	catch(Exception e){e.printStackTrace();}
			if(conn != null)	try{conn.close();}	catch(Exception e){e.printStackTrace();}
		}
		return res;
	}
%>
<%
	String [] no = request.getParameterValues("chkBox");
	
	Connection conn = getConn("localhost", "1521", "xe");
	
	if(no != null) {
		if(DeleteBoard(conn, no)) {
%>
			<jsp:forward page="/Board/boardProc.jsp?curPage=boardForm&pageNum=1">
				<jsp:param name="frmPage" value="boardProc"/>
			</jsp:forward>
<%
		}
	} else {
%>
<jsp:forward page="/index.jsp">
	<jsp:param name="frmPage" value="boardProc"/>
</jsp:forward>
<%-- <jsp:forward page="<%=request.getContextPath() %>/Board/boardProc.jsp?pageNum=1"> --%>
<%-- 	<jsp:param name="frmPage" value="boardProc"/> --%>
<%-- </jsp:forward> --%>

<%-- <jsp:forward page="<%=request.getContextPath() %>/Board/boardProc.jsp?pageNum=1"></jsp:forward> --%>

<%-- <jsp:forward page="/index.jsp"> --%>
<%-- 	<jsp:param value="boardForm" name="frmPage"/> --%>
<%-- </jsp:forward> --%>
<%
	}
%>

