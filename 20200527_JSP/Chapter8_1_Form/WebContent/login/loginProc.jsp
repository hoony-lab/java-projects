<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.jin.mail.SHA"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>

<%@ include file="../common/dbConn.jspf" %>

<%!
	public int SelectIdPw(Connection conn, String id, String pw){
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int result = 0;
		String sql = "SELECT COUNT(*) FROM MEMBER WHERE id=? AND pw=?";
		
		try{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) return rs.getInt(1);
			
			rs.close();
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
%>

<%
	
// 	String curPage = (String)request.getParameter("curPage");    
	
	String frmPage = "loginForm";
	if("loginForm".contentEquals(curPage)) {
		
		Connection conn = getConn("localhost", "1521", "xe");
	
		String id = request.getParameter("id");
		String SHApw = new SHA().encryptSHA512(request.getParameter("pw"));
		
		String errorLog = "";
			
		if(SelectIdPw(conn, id, SHApw) == 1){
			frmPage = "home";
			session.setAttribute("auth", id);
		}
		else errorLog = "No Matching Id";
		
    }
%>

<jsp:forward page="/index.jsp">
	<jsp:param value="<%=frmPage %>" name="frmPage"/>
</jsp:forward>