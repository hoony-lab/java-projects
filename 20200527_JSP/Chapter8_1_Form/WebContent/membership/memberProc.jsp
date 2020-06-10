<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<jsp:useBean id="member" class="hoony.lab.Member" scope="session"/>
	<jsp:setProperty property="id" name="member"/>
	<jsp:setProperty property="pw" name="member"/>
	<jsp:setProperty property="gender" name="member"/>
	<jsp:setProperty property="email" name="member"/>


<%-- <jsp:include page="<%=request.getContextPath() %>/db/DBConn.jsp" /> --%>

<%
	String authNum = request.getParameter("authNum");
	String authNumAttr = (String)session.getAttribute("authNumAttr");
	String pagePath = "loginForm";
	
	if(!authNum.contentEquals(authNumAttr)){
		pagePath = "memberForm";
	}
	else{
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
			pstmt.setString(2, member.getPw());
			pstmt.setString(3, member.getGender());
			pstmt.setString(4, member.getEmail());
			pstmt.executeUpdate();
	
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
%>
<div align="center">
	id : <%=member.getId()%> <br>
	pw : <%=member.getPw()%> <br>
	gender : <%= member.getGender() %> <br>
	email : <%=member.getEmail()%> <br>
</div>
<%-- <jsp:forward page="/index.jsp"> --%>
<%-- 	<jsp:param value="<%=pagePath %>" name="frmPage" /> --%>
<%-- </jsp:forward> --%>