<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%! 
	String company = "��ȣ ���� ���� WSJ";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>includer</title>
</head>
<body>
<center><h1>���� ȸ��</h1></center>
<hr>
<h1>Ȩ������ ����</h1>
<h3>����<br>����<br>ȸ��<br></h3><hr>
<h5><li>����Ը� ��ҷ���</h5>
<h4>����<br>����<br>����<br></h4>
<h4>����<br>����<br>����<br></h4>
<h4>����<br>����<br>����<br></h4>
<h4>����<br>����<br>����<br></h4>
<h4>����<br>����<br>����<br></h4>
</li>
<hr>
<%@ include file="includee.jspf" %>
<center><%=copyRight %></center>


</body>
</html>