package Ex06.Ex01Login.Service;

import java.util.List;

import Ex06.Ex01Login.Member;
import Ex06.Ex01Login.Data.IMembershipManage;
import Ex06.Ex01Login.Data.MembershipManageImpl;
import javafx.scene.Parent;
import javafx.scene.control.CheckBox;
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
	public int isComboBox(Parent membershipForm) {
		ComboBox<String> 	cmbAge = (ComboBox<String>)membershipForm.lookup("#cmbAge");
		
		if(cmbAge==null) return 0;
		else if(cmbAge.getValue()==null) {
			cmbAge.requestFocus();
			return 0;
		}
		return 1;
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
	//Ãß°¡
	@Override
	public int GetHobby(Parent membershipForm) {
		int hobby = 0;
		
		if(((CheckBox)membershipForm.lookup("#chkMusic")).isSelected())	hobby+=1;
		if(((CheckBox)membershipForm.lookup("#chkSport")).isSelected())	hobby+=2;
		if(((CheckBox)membershipForm.lookup("#chkMovie")).isSelected())	hobby+=4;
		
		return hobby;
	}

	@Override
	public boolean MembershipProc(Member member) {
		IMembershipManage membershipManage = new MembershipManageImpl();
		return membershipManage.MembershipProc(member);
	}

}











