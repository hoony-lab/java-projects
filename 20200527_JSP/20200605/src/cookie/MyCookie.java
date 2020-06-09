package cookie;

import java.net.URLEncoder;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

public class MyCookie {
//	// ���� ��Ű ������ name�� ���� ��Ű ����
//	public Cookie getCookie(HttpServletRequest request, String name) {
//		Cookie[] cookies = request.getCookies();
//		if (cookies != null)
//			for (Cookie c : cookies)
//				if (name.contentEquals(c.getName()))
//					return c;
//		return null;
//	}
//
//	// ��Ű ����
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

	//������ cookie ���� �� name ������ ���� cookie ��ȯ
	public static Cookie getCookie(HttpServletRequest request, String name) {
		Cookie []cookies = request.getCookies();
		for(Cookie cookie : cookies)
			if(name.equals(cookie.getName()))
				return cookie;
		
		return null;
	}
	//cookie ����(�̸��� �� �Ӹ� �ƴ϶� domain ����, ��� ����, cookie ���� �ð�)
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
	//Cookie ����(�̸��� ���� ����)
	public static Cookie CreateCookie(
			String name, String value 
			) throws Exception {
		return CreateCookie(name, value, "", "/", -1, "EUC-KR");
	}
	
	//Cookie ���� �ð� ����
	public static Cookie ExpiredCookie(
			String name, String value,int maxAge) throws Exception {
		return CreateCookie(name, value, "", "/", maxAge, "EUC-KR");
	}
}
