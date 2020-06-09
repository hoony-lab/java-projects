<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%!// 기존 쿠키 정보중 name이 같은 쿠키 리턴
	public Cookie getCookie(HttpServletRequest request, String name) {
		Cookie[] cookies = request.getCookies();
		if (cookies != null)
			for (Cookie c : cookies)
				if (name.contentEquals(c.getName()))
					return c;

		return null;
	}

	// 쿠키 생성
	public Cookie CreateCookie(String name, String value) throws Exception {
		// return new Cookie(name, URLEncoder.encode(value, "EUC-KR"));
		return new Cookie(URLEncoder.encode(name, "EUC-KR"), URLEncoder.encode(value, "EUC-KR"));
	}

	public Cookie CreateCookie(String name, String value, String domain, String uri, int expiry, String encode)
			throws Exception {
		Cookie c = CreateCookie(URLEncoder.encode(name, "EUC-KR"), URLEncoder.encode(value, "EUC-KR"));

		c.setDomain(domain);
		c.setPath(uri);
		c.setMaxAge(expiry);
		// c.setEncodeing(encode);
		// c.setComment(purpose);

		return c;
	}

	public Cookie CreateCookie(String name, String value, int expiry) throws Exception {
		Cookie c = CreateCookie(URLEncoder.encode(name, "EUC-KR"), URLEncoder.encode(value, "EUC-KR"));
		c.setMaxAge(expiry);

		return c;
	}%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<form action="loginProc.jsp" method="post">
		<div>
			<p>
				<span> <input type="text" name="id" placeholder="아이디">	</span>
				<span> <input type="text" name="pw" placeholder="패스워드"> </span>
			</p>

			<p>
				<span> <input type="submit" value="준뷔해롸">
<!-- 					<button	onclick="window.location.href='https://www.youtube.com/watch?v=xqFvYsy4wE4'">1일1깡</button> -->
					<button style="font-size: 50px; color: blue; border-collapse: collapse; border: 2px thick red;"formaction="https://www.youtube.com/watch?v=xqFvYsy4wE4">1일1깡</button>
				</span>
			</p>
		</div>
	</form>
	
</body>
</html>