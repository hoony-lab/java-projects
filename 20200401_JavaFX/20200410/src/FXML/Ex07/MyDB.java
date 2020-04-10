package FXML.Ex07;

import java.util.HashMap;

public class MyDB {
	private HashMap<String, String> loginTable;
	public MyDB() {
		loginTable = new HashMap<String, String>();
		
		loginTable.put("jin", "jin1234");
		loginTable.put("din", "din1234");
		loginTable.put("admin", "admin1234");
	}
	public String getPassword(String id){
		return loginTable.get(id);
	}
}
