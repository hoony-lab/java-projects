package loginCheck;

import java.util.HashMap;

public class MyDB {
	HashMap<String, String> idnPwd = new HashMap<String, String>();

	// five inital data input
	public MyDB(HashMap<String, String> idnPwd) {
		this.idnPwd = new HashMap<String, String>();
	}

	public MyDB() {
		this(null);
	}

	public HashMap<String, String> getIdnPwd() {
		return idnPwd;
	}

	public void setIdnPwd(HashMap<String, String> idnPwd) {
		this.idnPwd = idnPwd;
	}

	public void addIdnPwd(String id, String pwd) {
		idnPwd.put(id, pwd);
	}
	

}
