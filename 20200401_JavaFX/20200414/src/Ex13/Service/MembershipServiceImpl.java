package Ex13.Service;

import java.util.List;

import javafx.scene.Parent;
import javafx.scene.control.ComboBox;
import javafx.scene.control.RadioButton;

public class MembershipServiceImpl implements MembershipService {
	@Override
	public boolean comparePW(String pw, String pwOk) {
		/*
		 * if(!pw.contentEquals(pwOk)) return true; return false;
		 */
		return pw.contentEquals(pwOk);
	}

	@Override
	public void AddComboBox(Parent form, List<String> items) {
		ComboBox<String> 	cmbAge = (ComboBox<String>)form.lookup("#cmbAge");
		
		if(cmbAge!=null) {
			for(String item : items)
				cmbAge.getItems().add(item);
		}
	}

	@Override
	public boolean isComboBox(Parent membershipForm) {
		ComboBox<String> 	cmbAge = (ComboBox<String>)membershipForm.lookup("#cmbAge");
		
		if(cmbAge==null) return false;
		else if(cmbAge.getValue()==null) {
			cmbAge.requestFocus();
			return false;
		}
		return true;
	}

	@Override
	public String getComboBoxString(Parent membershipForm) {
		ComboBox<String> 	cmbAge = (ComboBox<String>)membershipForm.lookup("#cmbAge");
		
		if(cmbAge==null) return "";
		return cmbAge.getValue().toString();
	}

	@Override
	public boolean getGender(Parent membershipForm) {
		final boolean MAN = true;
		final boolean WOMAN = false;
		RadioButton rdoMan = (RadioButton)membershipForm.lookup("#rdoMan");
		
		if(rdoMan.isSelected())	return MAN;
		return WOMAN;
		//return rdoMan.isSelected();
	}

}











