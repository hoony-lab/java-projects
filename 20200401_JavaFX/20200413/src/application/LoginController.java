package application;

import java.net.URL;
import java.util.ResourceBundle;

import javafx.event.ActionEvent;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import service.CommonService;
import service.CommonServiceImpl;
import service.LoginService;
import service.LoginServiceImpl;

public class LoginController implements Initializable{

//	@FXML TextField idTxt, pwdTxt;
//	@FXML Button loginBtn, cancelBtn, signinBtn;
	private Parent root;
	private LoginService loginServ;
	private CommonService commonServ;
	public void setRoot(Parent root) {
		this.root = root;
	}

	
	@Override
	public void initialize(URL location, ResourceBundle resources) {
		loginServ = new LoginServiceImpl();
		commonServ = new CommonServiceImpl();
	}

	
	
	public void LoginProc() {
		loginServ.LoginProc(root);
	}
	
	public void CancelProc(ActionEvent e) {
		//loginServ.CancelProc(root);
		commonServ.WindowClose(e);
	}
	
	public void OpenSigninForm() {
		loginServ.OpenSigninForm();
	}

}
