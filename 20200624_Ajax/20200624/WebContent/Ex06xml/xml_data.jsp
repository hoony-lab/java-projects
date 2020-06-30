<?xml version="1.0" encoding="utf-8"?>
<%@ page language="java" contentType="text/xml; charset=UTF-8" pageEncoding="UTF-8"%>  
<%@ include file="../common/dbConn.jspf" %>
    
<%
   String findStr = request.getParameter("findStr");
   String sql = "SELECT * "+
             "FROM product "+
             "WHERE name like ?";
   Connection conn = getConn("localhost", "1521", "xe");

   try{
      

   PreparedStatement pstmt = conn.prepareStatement(sql);
   
   
   pstmt.setString(1, "%" + findStr+"%");
   ResultSet rs = pstmt.executeQuery();
   
   out.print("<products>");
   while(rs.next()){
      
      out.print("<product>");
      out.print("<id>" + rs.getString("name") + "</id>");
      out.print("<price> " +rs.getInt("price") +"</price>");
      out.print("</product>");
      
   }
   out.print("</products>");
   }
   
   catch(Exception e){e.printStackTrace();}
   
   finally{
      if(conn != null){try{conn.close();} catch(Exception e){e.printStackTrace();}}
   }
%>