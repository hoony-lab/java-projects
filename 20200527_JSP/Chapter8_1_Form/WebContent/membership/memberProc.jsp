<%@page import="hoony.lab.Member"%>
<%@page import="com.jin.mail.SHA"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<jsp:useBean id="member" class="hoony.lab.Member" scope="session"/>
	<jsp:setProperty property="*" name="member"/>
<%-- 	<jsp:setProperty property="id" name="member"/> --%>
<%-- 	<jsp:setProperty property="pw" name="member"/> --%>
<%-- 	<jsp:setProperty property="gender" name="member"/> --%>
<%-- 	<jsp:setProperty property="email" name="member"/> --%>

<%@ include file="../common/dbConn.jspf" %>

<%!
// 	public Connection getConn(String url, String port, String db){
// 		Connection conn = null;
		
// 		String jdbcDriver = "jdbc:oracle:thin:@" + url + ":" + port + ":" + db;
// 		String dbUser = "c##hoony";
// 		String dbPass = "0000";
		
// 		try{
// 			Class.forName("oracle.jdbc.driver.OracleDriver");
// 			conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
	
// 		} catch (Exception e) {
// 			e.printStackTrace();
// 		}
// 		return conn;
// 	}

	public boolean Insert(Connection conn, Member member){
		PreparedStatement pstmt = null;
		boolean result = true;
		String sql = "INSERT INTO Member(id, pw, gender, email) VALUES(?, ?, ?, ?)";
		
		try{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getId());
			pstmt.setString(2, new SHA().encryptSHA512(member.getPw()));
			pstmt.setString(3, member.getGender());
			pstmt.setString(4, member.getEmail());
			pstmt.executeUpdate();

			pstmt.close();
			conn.close();
		} catch (Exception e) {
			result = false;
			e.printStackTrace();
		}
		return result;
	}
%>
<%
	String authNum = request.getParameter("authNum");
	String authNumSHA = new SHA().encryptSHA512(authNum);
	
	String authNumAttr = (String)session.getAttribute("authNumAttr");
	String authNumAttrSHA = (String)session.getAttribute("authNumAttrSHA");
	
	// print check
	String SHApw = new SHA().encryptSHA512(member.getPw());
	
	String pagePath = "memberForm";
	String errorLog = "";
	if(authNum.contentEquals(authNumAttr)){
		session.removeAttribute("authNum");
		session.removeAttribute("authNumAttr");
		session.removeAttribute("authNumAttrSHA");
		
		Connection conn = getConn("localhost", "1521", "xe");
		if(Insert(conn, member))	pagePath = "home";
		else						errorLog = "Alreay Existing Member !";
		
		
	}
	
	
%>
<div align="center">
	id : <%=member.getId()%> <br>
	pw : <%=member.getPw() %> >> <%=SHApw %> : <br>
	gender : <%= member.getGender() %> <br>
	email : <%=member.getEmail()%> <br>
</div>


<jsp:forward page="/index.jsp">
	<jsp:param value="<%=pagePath %>" name="frmPage" />
	<jsp:param value="<%=errorLog %>" name="errorLog"/>
</jsp:forward>