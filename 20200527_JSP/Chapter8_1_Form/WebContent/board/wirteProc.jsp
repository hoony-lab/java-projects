<%@ page contentType="text/html; charset=UTF-8"
	import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"
	import="com.oreilly.servlet.MultipartRequest"
	import="java.net.URLEncoder"%>
<%
	String pagePath = "boardForm";
%>
<%
	//서버의 실제 경로
	String uploadFilePath = request.getServletContext().getRealPath("uploadFile");
	int maxSize = 1024 * 1024 * 10; //10MB
	
	MultipartRequest multiReq = new MultipartRequest(request, uploadFilePath, maxSize, "utf-8",
		new DefaultFileRenamePolicy());
	out.print("파일경로 : " + uploadFilePath + "<br/>");
	out.print("작성자 : " + multiReq.getParameter("id") + "<br/>");
	out.print("제목 : " + multiReq.getParameter("title") + "<br/>");
	out.print("내용 : " + multiReq.getParameter("content") + "<br/>");
	out.print("파일 : " + multiReq.getParameter("uploadFile") + "<br/>"); //null 값을 갖는다.
	out.print("업로드파일명 : " + multiReq.getFilesystemName("uploadFile") + "<br/>");
	out.print("원래파일명 : " + multiReq.getOriginalFileName("uploadFile") + "<br/>");
	
	out.print("<a href='" + uploadFilePath + "/" + multiReq.getFilesystemName("uploadFile") + "'>"
			+ multiReq.getFilesystemName("uploadFile") + "</a>" + "<br/>");
	out.print("<a href='" + request.getContextPath() + "/uploadFile/" + multiReq.getFilesystemName("uploadFile") + "'>"
			+ multiReq.getFilesystemName("uploadFile") + "</a>");
%>

<%-- <jsp:forward page="/index.jsp"> --%>
<%-- 	<jsp:param value="<%=pagePath %>" name="frmPage" /> --%>
<%-- </jsp:forward> --%>