package Ex06;

import java.net.URL;
import java.util.ResourceBundle;

import Ex06.Service.CommonService;
import Ex06.Service.CommonServiceImpl;
import Ex06.Service.LoginService;
import Ex06.Service.LoginServiceImpl;
import Ex06.Service.MembershipService;
import Ex06.Service.MembershipServiceImpl;
import javafx.event.ActionEvent;
import javafx.fxml.Initializable;
import javafx.scene.Parent;

public class Controller implements Initializable{
	private Parent root;
	private LoginService loginServ;
	private CommonService comServ;
	private MembershipService membershipServ;
	
	public void setRoot(Parent root) {
		this.root = root;
	}
	@Override
	public void initialize(URL location, ResourceBundle resources) {
		loginServ = new LoginServiceImpl();
		comServ = new CommonServiceImpl();
		membershipServ = new MembershipServiceImpl();
	}
	//FXML에서 onAction으로 처리한 이름
	public void LoginProc() {
		loginServ.LoginProc(root);
	}
	public void CancelProc(ActionEvent event) {
		//loginServ.CancelProc(root);
		comServ.WindowClose(event);
	}
	public void OpenMembershipForm() {
		loginServ.OpenMembershipForm();
	}
	public void MembershipProc() {
		membershipServ.MembershipProc(root);
	}
}













