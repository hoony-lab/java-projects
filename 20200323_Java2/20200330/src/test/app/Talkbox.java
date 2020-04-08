package test.app;

public class Talkbox extends Member {
	private String contents;
	private String chatTime;
//	public Member getMember() {
//		return member;
//	}
//	public void setMember(Member member) {
//		this.member = member;
//	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getChatTime() {
		return chatTime;
	}
	public void setChatTime(String chatTime) {
		this.chatTime = chatTime;
	}
	public Talkbox(String contents, String chatTime) {
		super();
		this.contents = contents;
		this.chatTime = chatTime;
	}
	Talkbox(){
		this(null, null);
	}
	
	
	
}
