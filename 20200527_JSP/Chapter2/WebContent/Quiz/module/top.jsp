<%--
a태그에서
link는 처음 나타났을 때를 의미함
hover 마우스가 올라갔을 경우
active는 클릭
visited 클릭 후 접속
 --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<style type="text/css">
<!--
a:link{color:white;font-family:sans-serif;text-decoration:none;}
a:visited{color:white;font-family:sans-serif;text-decoration:none;}
a:hover{color:#cc3300; font-weight:bold; }
a:active{color:#ff00cc; text-decoration:underline; }

table{border-spacing: 0;}
table td{padding: 0}
#top{
	background-image:url('image/header.jpg');
	width: 800px;
	height: 100px;
}
-->
</style>
<table id="top">
	<tr height="80"><td></td></tr>
	<tr>
	<td align="right">
	<b>
		<a href="home.jsp?centerPage=home">홈</a> 
		<a href="home.jsp?centerPage=write">글쓰기</a>
	</b>
	</td>
	</tr>
</table>
