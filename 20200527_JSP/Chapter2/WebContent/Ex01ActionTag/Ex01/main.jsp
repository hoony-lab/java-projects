<%--
jsp:include�� �������� �ܼ��ϰ� �����ϴ� ���� �ƴ� ȣ���� �����̸�
flush�� �޸� �ʱ�ȭ�� ture �� ������ ���� �Ǿ�
�Ϲ������� false�� ���ȴ�.
 --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>main</title>
</head>
<body>
Main.jsp ����
<hr/>
<jsp:include page="sub.jsp" flush="false"/>
<hr/>
include ���� ����
</body>
</html>