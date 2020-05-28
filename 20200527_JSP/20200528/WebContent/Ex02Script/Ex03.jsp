<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%!
	public int Multiply(int n1, int n2){
		return n1 * n2;
	}
	public int Plus(int n1, int n2){
		return n1 + n2;
	}
	public int Minus(int n1, int n2){
		return n1 - n2;
	}
	public int Divide(int n1, int n2){
		return n2 == 0 ? 0 : n1/n2;
	}
	int n1, n2;
	int plusRes = Plus(n1,n2);
	
%>
<%
// 서버에서 해석을하고 클라어언트한테 throw
	for(int i = 0 ; i < 10 ; ++i){
		out.print(i);
%><br><%
	}
%>
<hr>
<%
	for(int i = 10 ; i < 20 ; ++i)	out.print(i+"<br>");
%>
<%
	int sum = 0;
	for(int i = 0 ; i < 10 ; ++i){
		sum += i;		
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h1>sum = <%=sum%></h1>
	<input type="text" name="sum" value="10"><br>
	<input type="text" name="sum" value="<%=sum%>"><br>
	2 + 3 = <%=2+3 %>
	<hr>
	10 * 20 = <%=Multiply(10, 20) %><br>	
	10 + 20 = <%=Plus(10, 20) %>	<br>
	10 - 20 = <%=Minus(10, 20) %>	<br>
	10 / 20 = <%=Divide(10, 20) %>	<br>
	
	
	<%
	for(int i = 1 ; i < 7 ; ++i){
		out.print("<h" + i + ">");
		out.print("FUCK");
		out.print("</h" + i + ">");
	}
	%>
	
	
</body>
</html>