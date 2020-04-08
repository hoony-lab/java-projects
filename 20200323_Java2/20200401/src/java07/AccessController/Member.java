package java07.AccessController;

public class Member {
	private String id;
	private String pic;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public Member(String id, String pic) {
		super();
		this.id = id;
		this.pic = pic;
	}
	public Member() {
		this("","");
	}
	
}
