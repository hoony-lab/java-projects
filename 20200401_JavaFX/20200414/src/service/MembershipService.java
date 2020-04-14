package service;

import java.util.Map;

import javafx.scene.Parent;
import javafx.scene.control.TextField;

public interface MembershipService {
	
	public void MembershipProc(Parent membershipForm);
	public Map<String, TextField> getTextFieldInfo(Parent membershipForm, String [] txtFldIdArr);
	public boolean isEmpty(Map<String, TextField> txtFldMap, String [] txtFldIdArr);
	public boolean comparePW(String pw, String pwOk);
	
}
