<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../common/dbConn.jspf" %>
<%
request.setCharacterEncoding("utf-8");
Connection conn = getConn("localhost", "1521", "xe");
String findStr = "";
if(request.getParameter("findStr") != null){
	findStr = request.getParameter("findStr");
}


String sql = "SELECT title FROM Board "
			+"WHERE title like ? ";
PreparedStatement pstmt = conn.prepareStatement(sql);
pstmt.setString(1, "%" + findStr + "%");
ResultSet rs = pstmt.executeQuery();
StringBuffer sb = new StringBuffer();
sb.append("[");

while(rs.next()){
	sb.append("'" + rs.getString("title") + "',");
}

String temp = sb.toString();
int pos = temp.lastIndexOf(",");
if(pos>-1){
temp = temp.substring(0, pos);	
}

temp += "]";

temp = temp.replaceAll("'", "\"");
out.print(temp);

%>
