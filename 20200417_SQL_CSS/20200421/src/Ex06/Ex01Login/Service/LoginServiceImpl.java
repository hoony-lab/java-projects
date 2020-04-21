package Ex06.Ex01Login.Service;

import Ex06.Ex01Login.Data.IMembershipManage;
import Ex06.Ex01Login.Data.MembershipManageImpl;
import javafx.scene.Parent;
import javafx.scene.control.TextField;
import javafx.stage.Stage;

public class LoginServiceImpl implements LoginService{
	@Override
	public boolean LoginProc(Parent root) {
		TextField idTxt = (TextField)root.lookup("#txtid");//idTxt
		TextField pwTxt = (TextField)root.lookup("#txtpw");//pwTxt
		
		IMembershipManage membershipManage = new MembershipManageImpl();
		if(membershipManage.LoginProc(idTxt.getText(), pwTxt.getText())==1)
			return true;
		return false;		
	}
		@Override
	public Parent OpenMembershipForm() {
		CommonService comServ = new CommonServiceImpl();
		Stage membershipForm = new Stage();
		Parent form =  comServ.showWindow(membershipForm, "../Membership.fxml");
		
		return form;
	}
	
	
	
	
	
}








