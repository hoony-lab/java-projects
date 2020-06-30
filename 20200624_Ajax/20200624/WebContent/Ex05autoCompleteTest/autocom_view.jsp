<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file='../common/dbConn.jspf' %>
<%
	request.setCharacterEncoding("utf-8");
	Connection conn = getConn("localhost", "1521", "xe");
	String findStr = request.getParameter("findStr");
	String sql = "SELECT no, title, id, writedate FROM Board "
				+"WHERE title like ? ";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, "%" + findStr + "%");
	ResultSet rs = pstmt.executeQuery();
	String json = "{";
	if(rs.next()){
		String temp = 
				String.format("'no':'%s', 'title':'%s', 'id':'%s', 'writedate':'%s'",
						rs.getInt("no"),
						rs.getString("title"),
						rs.getString("id"),
						rs.getString("writedate"));
		json += temp;
	}
	json += "}";
	json = json.replaceAll("'", "\"");
	out.print(json);
%>