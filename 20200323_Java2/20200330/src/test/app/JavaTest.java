package test.app;

public class JavaTest {
	public static void main(String[] args) {
		
		Talkbox talkbox = new Talkbox();
		
		
		talkbox.setId("�����̵�");
		talkbox.setPicture("������");	
		talkbox.setContents("������ħ");
		talkbox.setChatTime("��ħ�ð�");
		
		System.out.println(talkbox.getId());
		System.out.println(talkbox.getPicture());
		System.out.println(talkbox.getContents());
		System.out.println(talkbox.getChatTime());
				
	}
}
