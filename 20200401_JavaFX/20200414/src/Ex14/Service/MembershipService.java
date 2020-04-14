package Ex14.Service;

import java.util.List;

import javafx.scene.Parent;

public interface MembershipService {
	public boolean comparePW(String pw, String pwOk);
	public void AddComboBox(Parent form, List<String> items);
	
	public boolean isComboBox(Parent membershipForm);
	public String getComboBoxString(Parent membershipForm);
	
	public boolean getGender(Parent membershipForm);
	
	public int GetHobby(Parent membershipForm);
}
