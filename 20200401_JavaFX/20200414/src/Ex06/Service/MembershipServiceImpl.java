package Ex06.Service;

import java.util.ArrayList;
import java.util.List;

import Ex06.Member;
import javafx.scene.Parent;
import javafx.scene.control.TextField;

public class MembershipServiceImpl implements MembershipService {
	final int NAME = 0;
	final int ID = 1;
	final int PW = 2;
	
	private Member getMember(Parent membershipForm) {
		String [] txtIdArr = {"#txtName", "#txtID", "#txtPw"};
		Member member = new Member();
		List<TextField> lstTxtField = new ArrayList<TextField>(); 
		
		for(int i=0;i<txtIdArr.length;i++)
			lstTxtField.add((TextField)membershipForm.lookup(txtIdArr[i]));

		
		member.setName(lstTxtField.get(NAME).getText());
		member.setId(lstTxtField.get(ID).getText());
		member.setPw(lstTxtField.get(PW).getText());
		
		return member;
	}
	@Override
	public void MembershipProc(Parent membershipForm) {
		Member member = getMember(membershipForm);
		
		System.out.println(member.getName());
		System.out.println(member.getId());
		System.out.println(member.getPw());
	}
}
