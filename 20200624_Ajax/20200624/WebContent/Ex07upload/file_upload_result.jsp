<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>  

<%
	String path = "C:/zihoony/java-projects/20200624_Ajax/20200624/WebContent/Ex07upload/";
	int maxSize = 1024 * 1024 * 1024;		// 100mb
	String encoding = "utf-8";
	MultipartRequest req = new MultipartRequest(
			request, path, maxSize, encoding, new DefaultFileRenamePolicy());
%>
파일 전송이 성공적으로 종료 되었습니다.
<%=path %>