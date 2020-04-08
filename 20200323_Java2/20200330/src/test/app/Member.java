package test.app;

public class Member {
	private String id;
	private String picture;
	public Member(String id, String picture) {
		super();
		this.id = id;
		this.picture = picture;
	}
	Member(){
		this(null,null);
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
}
