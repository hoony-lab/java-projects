<%--
	jsp�� �̷��� annotation
	
	<%@ �� ��Ƽ���� �ϸ� jsp ������ ���� ���� ������ ���� �� �ִ�.
	
	���� page�� ���õ� �����̸� language�� ���� �����ϴ�
	contentType �� ������ ������ ����
		����� text �Ǵ� html ������ ����Ѵ�
		
	contentType ������ charset�� html�� ���ڵ��� �ǹ��ϸ�
	pageEncoding�� jsp�� ���ڵ��� �ǹ��Ѵ�.
 --%>
<%@
	page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="java.util.Calendar, java.util.Date"%>


<%
	//java code
Date now = new Date();
//out.print("���� �ð� : " + now);

Calendar cal = Calendar.getInstance();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>����!</title>
</head>
<body>

	<h1>
		���� �ð� :
		<%=now%></h1>
	<h2>
		���� �ð� :
		<%=cal.get(Calendar.HOUR)%></h2>


	<br>
	<hr>
	<hr>
	<br>
	<h1>
		���� ��ǰ<br>
	</h1>
	���⵵ ��ǰ1
	<br> ���⵵ ��ǰ2
	<br> ���⵵ ��ǰ3
	<br> ���⵵ ��ǰ4
	<br> ���⵵ ��ǰ5
	<br> ���⵵ ��ǰ6
	<br> ���⵵ ��ǰ7
	<br>
</body>
</html>