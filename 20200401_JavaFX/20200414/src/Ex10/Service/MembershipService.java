package Ex10.Service;

import java.util.List;

import javafx.scene.Parent;

public interface MembershipService {
	public boolean comparePW(String pw, String pwOk);
	public void AddComboBox(Parent form, List<String> items);
}
