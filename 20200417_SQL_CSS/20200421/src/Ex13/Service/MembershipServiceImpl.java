package Ex13.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import Ex13.Member;
import Ex13.DB.IMembershipManage;
import Ex13.DB.IMembershipManageImpl;
import javafx.scene.Parent;
import javafx.scene.control.CheckBox;
import javafx.scene.control.ComboBox;
import javafx.scene.control.RadioButton;

public class MembershipServiceImpl implements MembershipService {
	
	IMembershipManage membershipManage;
	
	public MembershipServiceImpl() {
		membershipManage = new IMembershipManageImpl();
	}
	
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
		ComboBox<String> cmbAge = (ComboBox<String>)membershipForm.lookup("#cmbAge");
		if(cmbAge==null) return "";
		return cmbAge.getValue().toString();
	}

	@Override
	public int getGender(Parent membershipForm) {
		RadioButton rdoMan = (RadioButton)membershipForm.lookup("#rdoMan");
		
		if(rdoMan.isSelected()) return 1; //남자 1 여자 0
		else return 0;
	}

	@Override
	public int getHobby(Parent membershipForm) {
		int hobby = 0;
		if( ((CheckBox)membershipForm.lookup("#chkMusic")).isSelected()) hobby+= 1;
		if( ((CheckBox)membershipForm.lookup("#chkSport")).isSelected()) hobby+= 2;
		if( ((CheckBox)membershipForm.lookup("#chkMovie")).isSelected()) hobby+= 4;
		return hobby;
	}

	@Override
	public boolean MembershipProc(Member member) {
		return membershipManage.MembershipProc(member);
	}

	@Override
	public Map<String, String> getMember() {
		List<Member> lstMember = membershipManage.getMember();
		Map<String, String> mapMember = new HashMap<String, String>();
		
		for (Member member : lstMember) 
			mapMember.put(member.getId(), member.getName());
		
		return mapMember;
	}

}