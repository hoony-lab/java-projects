<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int dan = 0;
	String strDan = request.getParameter("dan");
	if(strDan==null)
		strDan ="2";
	dan  = Integer.parseInt(strDan);
	
	int r = 0;
	//dan=5;
	
	out.print("== "+dan+"단 ==<br/>");
	for(int i =1; i<10; i++){
		out.print(String.format("%d * %d = %d<br/>", dan, i, (dan*i)));		
	}

%>

