package Ex10.Service;

import java.util.List;

import javafx.scene.Parent;
import javafx.scene.control.ComboBox;

public class MembershipServiceImpl implements MembershipService {
	@Override
	public boolean comparePW(String pw, String pwOk) {
		if(!pw.contentEquals(pwOk))
			return true;
		return false;
	}

	@Override
	public void AddComboBox(Parent form, List<String> items) {
		ComboBox<String> 	cmbAge = (ComboBox<String>)form.lookup("#cmbAge");
		
		if(cmbAge!=null) {
			for(String item : items)
				cmbAge.getItems().add(item);
		}
	}

}











