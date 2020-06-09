<%@page import="ex01.Product"%>
<%@page import="java.util.List"%>
<%@page import="ex01.FileReader"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    String requestURL = request.getRequestURI();
    
	request.setCharacterEncoding("EUC-KR");
	String filePath = request.getParameter("filePath");
	
	FileReader fileReader = new FileReader();
	
	List<String> list = fileReader.getFileContents(filePath);
	
// 	for(String s : list)
// 		out.print(s.replaceAll("<td valign=\"top\">", "").
// 				replaceAll("&nbsp;</td>", " ").
// 				replaceAll("</tr>","\n")
// 				);
	
	
// 	for(String s : list)
// 		out.print(s.replace("<table>|</table>","").
// 				replaceAll("\n", "").
// 				replaceAll("<td valign=\"top\">", "").
// 				replaceAll("<th align=\"top\">", "").
// 				replaceAll("&nbsp;</td>", " ").
// 				replaceAll("</tr>","\n")
// 				);

	
%>

