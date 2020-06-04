package signUp;

public class Member {
	String id;
	String pw;
	String pwCheck;
	String name;
	String sex;
	String year, month, day;
	String authMail;
	String authCheck;
	String authNum;
	
	public Member() {
		this.id = "";
		this.pw = "";
		this.pwCheck = "";
		this.name = "";
		this.sex = "";
		this.year = "";
		this.month = "";
		this.day = "";
		this.authMail = "";
		this.authCheck = "";
		this.authNum = "";
	}

	public Member(String id, String pw, String pwCheck, String name, String sex, String year, String month, String day,
			String authMail, String authCheck, String authNum) {
		super();
		this.id = id;
		this.pw = pw;
		this.pwCheck = pwCheck;
		this.name = name;
		this.sex = sex;
		this.year = year;
		this.month = month;
		this.day = day;
		this.authMail = authMail;
		this.authCheck = authCheck;
		this.authNum = authNum;
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
	public String getPwCheck() {
		return pwCheck;
	}
	public void setPwCheck(String pwCheck) {
		this.pwCheck = pwCheck;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public String getAuthMail() {
		return authMail;
	}
	public void setAuthMail(String authMail) {
		this.authMail = authMail;
	}
	public String getAuthCheck() {
		return authCheck;
	}
	public void setAuthCheck(String authCheck) {
		this.authCheck = authCheck;
	}
	public String getAuthNum() {
		return authNum;
	}
	public void setAuthNum(String authNum) {
		this.authNum = authNum;
	}
	
}
