package test.app;

public class JavaTest {
	public static void main(String[] args) {
		
		Talkbox talkbox = new Talkbox();
		
		
		talkbox.setId("내아이디");
		talkbox.setPicture("내사진");	
		talkbox.setContents("좋은아침");
		talkbox.setChatTime("아침시간");
		
		System.out.println(talkbox.getId());
		System.out.println(talkbox.getPicture());
		System.out.println(talkbox.getContents());
		System.out.println(talkbox.getChatTime());
				
	}
}
