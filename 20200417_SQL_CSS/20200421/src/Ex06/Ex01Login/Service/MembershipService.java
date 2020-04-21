package Ex06.Ex01Login.Service;

import java.util.List;

import Ex06.Ex01Login.Member;
import javafx.scene.Parent;

public interface MembershipService {
	public boolean comparePW(String pw, String pwOk);
	public void AddComboBox(Parent form, List<String> items);
	public int isComboBox(Parent membershipForm);
	public String getComboBoxString(Parent membershipForm);	
	public boolean getGender(Parent membershipForm);
	public int GetHobby(Parent membershipForm);
	
	public boolean MembershipProc(Member member);
}
