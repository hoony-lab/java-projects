<%--memberProc.jsp --%>
<%@page import="Care.Lab.Member"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.jin.mail.SHA"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.net.URLEncoder"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<jsp:useBean id="member" class="Care.Lab.Member"/>
<jsp:setProperty property="*" name="member"/>

<%@ include file="../common/dbConn.jspf"%>
<%!
	public boolean Insert(Connection conn, Member member){
		PreparedStatement pstmt = null;
		boolean result = true;
		String sql = 	"INSERT INTO Member "+
						"(id, pw, gender, email) "+
						"VALUES (?, ?, ?, ?)";
		try{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getId());
			pstmt.setString(2, (new SHA()).encryptSHA512(member.getPw()));
			pstmt.setString(3, member.getGender());
			pstmt.setString(4, member.getEmail());
			
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
%>
<%
	String authNum = request.getParameter("authNum");
	String authNumAttr = (String)session.getAttribute("authNum");
	String pagePath = "memberForm";
	String errorLog = " 인증번호가 일치하지 않습니다.";
	
	SHA sha = new SHA();
	authNum = sha.encryptSHA512(authNum);
	
	if(authNum.contentEquals(authNumAttr)){
		session.removeAttribute("authNum");
		
		Connection conn= getConn("localhost", "1521", "xe");
		if(Insert(conn, member))	pagePath = "loginForm";
		else						errorLog = "ID가 존재합니다.";
	}
		
%>
<jsp:forward page="/index.jsp">
<jsp:param value="<%=pagePath %>" name="frmPage"/>
<jsp:param value='<%=URLEncoder.encode(errorLog, "UTF-8") %>' name="errorLog"/>
</jsp:forward>
