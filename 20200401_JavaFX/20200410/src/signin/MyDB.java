package signin;

import java.util.HashMap;

public class MyDB {
	HashMap<String, String> idnPwd;
	
	
	HashMap<String, String> idnName;
	
	// five inital data input
	public MyDB(HashMap<String, String> idnPwd) {
		this.idnPwd = new HashMap<String, String>();
		addIdnPwd("asdf1", "asdf11");
		addIdnPwd("asdf2", "asdf22");
		addIdnPwd("asdf3", "asdf33");
		addIdnPwd("asdf4", "asdf44");
		addIdnPwd("asdf5", "asdf55");
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
