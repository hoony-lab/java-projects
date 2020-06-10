package hoony.lab;

public class Member {
	private String id;
	private String pw;
	private String gender;
	private String email;
	
	public Member() {
		super();
	}
	
	public Member(String id, String pw, String gender, String email) {
		super();
		this.id = id;
		this.pw = pw;
		this.gender = gender;
		this.email = email;
	}

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
}
