package Ex07.Service;

import java.util.Map;

import javafx.scene.Parent;
import javafx.scene.control.TextField;

public interface MembershipService {
	public Map<String, TextField> getTextFieldInfo(Parent membershipForm, String [] txtFldIdArr);
	public boolean isEmpty(Map<String, TextField> txtFldMap, String [] txtFldIdArr);
	public boolean comparePW(String pw, String pwOk);
}
