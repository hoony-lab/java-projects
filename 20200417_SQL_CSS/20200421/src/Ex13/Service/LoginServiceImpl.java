package Ex13.Service;

import Ex13.DB.IMembershipManage;
import Ex13.DB.IMembershipManageImpl;
import javafx.scene.Parent;
import javafx.scene.control.TextField;
import javafx.stage.Stage;

public class LoginServiceImpl implements LoginService{
	@Override
	public boolean LoginProc(Parent root) {
		TextField idTxt = (TextField)root.lookup("#txtid");//idTxt
		TextField pwTxt = (TextField)root.lookup("#txtpw");//pwTxt
		System.out.println("ID "+idTxt.getText()+
				", PW "+pwTxt.getText()+
				"가 입력되었습니다.");

		IMembershipManage membership = new IMembershipManageImpl();

		if(membership.LoginProc(idTxt.getText(), pwTxt.getText()) == 1)
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