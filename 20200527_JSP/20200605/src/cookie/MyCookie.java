package cookie;

import java.net.URLEncoder;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

public class MyCookie {
//	// 기존 쿠키 정보중 name이 같은 쿠키 리턴
//	public Cookie getCookie(HttpServletRequest request, String name) {
//		Cookie[] cookies = request.getCookies();
//		if (cookies != null)
//			for (Cookie c : cookies)
//				if (name.contentEquals(c.getName()))
//					return c;
//		return null;
//	}
//
//	// 쿠키 생성
//	public Cookie CreateCookie(String name, String value) throws Exception {
//		return new Cookie(URLEncoder.encode(name, "EUC-KR"), URLEncoder.encode(value, "EUC-KR"));
//	}
//
//	public Cookie CreateCookie(String name, String value, String domain, String uri, int expiry, String encode)
//			throws Exception {
//		Cookie c = CreateCookie(URLEncoder.encode(name, "EUC-KR"), URLEncoder.encode(value, "EUC-KR"));
//
//		c.setDomain(domain);
//		c.setPath(uri);
//		c.setMaxAge(expiry);
//		// c.setEncodeing(encode);
//		// c.setComment(purpose);
//
//		return c;
//	}
//
//	public Cookie CreateCookie(String name, String value, int expiry) throws Exception {
//		Cookie c = CreateCookie(URLEncoder.encode(name, "EUC-KR"), URLEncoder.encode(value, "EUC-KR"));
//		c.setMaxAge(expiry);
//
//		return c;
//	}

	//기존의 cookie 정보 중 name 정보와 같은 cookie 반환
	public static Cookie getCookie(HttpServletRequest request, String name) {
		Cookie []cookies = request.getCookies();
		for(Cookie cookie : cookies)
			if(name.equals(cookie.getName()))
				return cookie;
		
		return null;
	}
	//cookie 생성(이름과 값 뿐만 아니라 domain 정보, 경로 설정, cookie 유지 시간)
	public static Cookie CreateCookie(
			String name, String value, 
			String domain, String path, int maxAge, String encode) throws Exception {
		Cookie cookie = new Cookie(
			URLEncoder.encode(name, encode),
			URLEncoder.encode(value, encode)
		);
		
		cookie.setDomain(domain);
		cookie.setPath(path);
		cookie.setMaxAge(maxAge);
		return cookie;
	}
	//Cookie 생성(이름과 값만 지정)
	public static Cookie CreateCookie(
			String name, String value 
			) throws Exception {
		return CreateCookie(name, value, "", "/", -1, "EUC-KR");
	}
	
	//Cookie 유지 시간 설정
	public static Cookie ExpiredCookie(
			String name, String value,int maxAge) throws Exception {
		return CreateCookie(name, value, "", "/", maxAge, "EUC-KR");
	}
}
