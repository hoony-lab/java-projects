<%--loginProc.jsp --%>
<%@page import="java.net.URLEncoder"%>
<%@page import="com.jin.mail.SHA"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/common/dbConn.jspf" %>
<%!
	public int getLoginInfo(Connection conn, String id, String pw){
		String sql = 	"SELECT count(*) "+
						"FROM member "+
						"WHERE id=? "+
						"AND pw=?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			
			rs = pstmt.executeQuery();
			//rs.getInt(idx) idx는 select 진행 이후 반환된 column의 위치 정보
			if(rs.next())	return rs.getInt(1);
		}catch(Exception e){}
		finally{
			if(rs != null)	try{rs.close();}catch(Exception e){}
			if(pstmt != null)	try{pstmt.close();}catch(Exception e){}
			if(conn !=null)	try{conn.close();}catch(Exception e){}
		}
		return 0;
	}
%>

<%
	if("loginForm".contentEquals(request.getParameter("curPage")) ){
			
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		String pagePath = "loginForm";
		String errorLog = "인증에 실패하였습니다.";
		
		Connection conn = getConn("localhost", "1521", "xe");
		if(conn ==null)	errorLog = "DB 접속 실패";
		
		SHA sha = new SHA();
		pw = sha.encryptSHA512(pw);
		
		if(getLoginInfo(conn, id, pw) == 1){
			pagePath="home";
			session.setAttribute("usrId", id);
		}
%>
<jsp:forward page="/index.jsp">
<jsp:param value="<%=pagePath %>" name="frmPage"/>
<jsp:param value='<%=URLEncoder.encode(errorLog, "UTF-8") %>' name="errorLog"/>
</jsp:forward>
<%
	}
%>







