<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
// 	Cookie cookie = null, cookie2 = null;

// 	String cookieName = URLEncoder.encode("code", "EUC-KR");
// 	String cookieValue = URLEncoder.encode("091032", "EUC-KR");
//    	Cookie cookie = new Cookie(cookieName, cookieValue);
// 	response.addCookie(cookie);
	
// 	cookieName = URLEncoder.encode("mean", "EUC-KR");
// 	cookieValue = URLEncoder.encode("傍何凯缴洒", "EUC-KR");
//    	Cookie cookie2 = new Cookie(cookieName, cookieValue);
//    	cookie2.setMaxAge(10);
// 	response.addCookie(cookie2);
	
// 	Cookie[] cookies = request.getCookies();
	
// 	if(cookies != null){
// 		for(Cookie c : cookies){
// 			// 荐沥
// 			if("code".contentEquals(c.getName()))
// 				response.addCookie(new Cookie("code","104022"));
			
// 			if("mean".contentEquals(c.getName()))
// 				response.addCookie(new Cookie("mean", URLEncoder.encode("动动静", "EUC-KR")));
			
// 			// 昏力
// 			if("code".contentEquals(c.getName()))
// 				response.addCookie(new Cookie("code","104022"));
			
// 			if("mean".contentEquals(c.getName()))
// 				response.addCookie(new Cookie("mean", URLEncoder.encode("动动静", "EUC-KR")));
// 		}
// 	}
	
	
 	
// 	cookie = new Cookie("id", "Carelab-www");
// 	cookie.setDomain("www.localhost.com");
// 	response.addCookie(cookie);
	
// 	cookie = new Cookie("path", "/20200605/Ex01Cookie");
// 	cookie.setPath("/20200605/Ex01Cookie");
	

	Cookie cookie = new Cookie("domain", URLEncoder.encode("careLab","EUC-KR"));
	cookie.setDomain("www.care.co.kr");
	response.addCookie(cookie);
	
	cookie.setDomain("care.co.kr");
	cookie.setPath("/");
	response.addCookie(cookie);

	
	
	Cookie cookie2 = new Cookie("src", URLEncoder.encode("image","EUC-KR"));
	cookie2.setPath("/20200605/image");
	response.addCookie(cookie2);
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Tough Cookie</title>
</head>
<body>

cookieName : <%=cookie.getName() %><br>
cookieValue : <%=cookie.getValue() %><br>
getComment : <%=cookie.getComment() %><br>
getDomain : <%=cookie.getDomain() %><br>
getMaxAge : <%=cookie.getMaxAge() %><br>
getPath : <%=cookie.getPath() %><br>
getSecure : <%=cookie.getSecure() %><br>
getVersion : <%=cookie.getVersion() %><br>

</body>
</html>