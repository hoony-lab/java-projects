<%--

	form �±״� ������ input �±������� ������ ����
	���� �ּҴ� action�� �ۼ��ϸ� "/������Ʈ��/������/���ϸ�"���� �ۼ�
	
--%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="java.util.*"%>

<%
	request.setCharacterEncoding("EUC-KR");
String name = request.getParameter("name");
String address = request.getParameter("address");
String ip = request.getRemoteAddr();
String[] pets = request.getParameterValues("pet");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<b>name : <%=name%></b>
	<br> address :
	<%=request.getParameter("address")%><br> ip :
	<%=ip%><br> pets
	<br>
	<%
		if (pets != null) {
		for (int i = 0; i < pets.length; ++i) {
			out.print(" - " + pets[i] + "<br>");
		}
	}
	%>

	<br>
	<hr>
	<br>

	<%
		Enumeration<String> paramEnum = request.getParameterNames();
	while (paramEnum.hasMoreElements()) {
		String elem = paramEnum.nextElement();
		String [] values = request.getParameterValues(elem);
		
		out.print(elem + " : ");
		
			for(int i = 0 ; i < values.length ; ++i){
				out.print("[" + values[i] + "] ");
			}
			out.print("<br>");
		
	}
	%>


</body>
</html>