package service;

import javafx.scene.Parent;
import javafx.scene.control.TextField;

public class MembershipServiceImpl implements MembershipService{

	@Override
	public void MembershipProc(Parent membershipForm) {
		TextField nameTxt = (TextField)membershipForm.lookup("#txtName");
		System.out.println(nameTxt.getText());
	}


}
