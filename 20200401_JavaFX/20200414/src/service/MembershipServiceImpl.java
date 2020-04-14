package service;


import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import application.Member;
import javafx.scene.Parent;
import javafx.scene.control.TextField;

public class MembershipServiceImpl implements MembershipService{
	final int NAME = 0;
	final int ID = 1;
	final int PW = 2;

	private Member getMember(Parent membershipForm) {
		Member member = new Member();
		TextField name = (TextField)membershipForm.lookup("#txtName");
		TextField id = (TextField)membershipForm.lookup("#txtId");
		TextField pw = (TextField)membershipForm.lookup("#txtPwd");

		member.setName(name.getText());
		member.setId(id.getText());
		member.setPw(pw.getText());
		
		return member;
	}

	@Override
	public void MembershipProc(Parent membershipForm) {
		String[] txtIdArr = {"#txtName", "#txtID", "#txtPw", "#txtPwOK"};
		Member member = getMember(membershipForm);

		List<TextField> lstTxtField = new ArrayList<TextField>();
		
		for (int i = 0; i < txtIdArr.length; i++) 
			lstTxtField.add((TextField) membershipForm.lookup(txtIdArr[i]));
		
		member.setName(lstTxtField.get(NAME).getText());
		member.setId(lstTxtField.get(ID).getText());
		member.setPw(lstTxtField.get(PW).getText());
		
		System.out.println(member.getName());
		System.out.println(member.getId());
		System.out.println(member.getPw());
	}

	@Override
	public Map<String, TextField> getTextFieldInfo(Parent membershipForm, String[] txtFldIdArr) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean isEmpty(Map<String, TextField> txtFldMap, String[] txtFldIdArr) {
		
		for (int i = 0; i < txtFldIdArr.length; i++) {
			
		}
		return false;
	}

	@Override
	public boolean comparePW(String pw, String pwOk) {
		// TODO Auto-generated method stub
		return false;
	}


}
