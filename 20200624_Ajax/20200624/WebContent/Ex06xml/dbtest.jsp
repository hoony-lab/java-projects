<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/dbConn.jspf" %>

<%
	String sql = "SELECT * from products";
	Connection conn = getConn("localhost", "1521", "xe");
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	
	String res = "";
	if(rs.next()) res += rs.getInt("productid");
	
	out.print(res);
%>