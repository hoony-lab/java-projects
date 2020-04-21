package Ex13.Service;

import java.util.List;
import java.util.Map;

import Ex13.Member;
import javafx.scene.Parent;

public interface MembershipService {
	public boolean comparePW(String pw, String pwOk);
	public void AddComboBox(Parent form, List<String> Items);
	
	public boolean isComboBox(Parent membershipForm);
	public String getComboBoxString(Parent membershipForm);
	
	public int getGender(Parent membershipForm);
	public int getHobby(Parent membershipForm);
	
	public boolean MembershipProc(Member member);
	public Map<String, String> getMember();
}
