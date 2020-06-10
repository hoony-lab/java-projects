<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="member" class="hoony.lab.Member"></jsp:useBean>
<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	String jdbcDriver = "jdbc:oracle:thin:@localhost:1521:xe";
	String dbUser = "c##hoony";
	String dbPass = "0000";

	String sql = "INSERT INTO Member(id, pw, gender, email) VALUES(?, ?, ?, ?)";
	
	Connection conn = null;
	Statement stmt = null;
	PreparedStatement pstmt = null;
	try{
		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, member.getId());
		pstmt.setString(1, member.getPw());
		pstmt.setString(1, member.getGender());
		pstmt.setString(1, member.getEmail());
		pstmt.executeUpdate();

		conn.close();
	} catch (Exception e) {
		e.printStackTrace();
	}
%>