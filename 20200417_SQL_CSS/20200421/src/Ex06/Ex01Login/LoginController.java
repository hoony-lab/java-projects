package Ex06.Ex01Login;

import java.net.URL;
import java.util.Arrays;
import java.util.Map;
import java.util.ResourceBundle;

import Ex06.Ex01Login.Service.*;
import javafx.event.ActionEvent;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.control.TextField;

public class LoginController extends Controller implements Initializable{
	private Parent root;
	private LoginService loginServ;
	private CommonService comServ;
	private MembershipService memberServ;
		
	@Override
	public void setRoot(Parent root) {
		this.root = root;
	}
	@Override
	public void initialize(URL location, ResourceBundle resources) {
		loginServ = new LoginServiceImpl();
		comServ = new CommonServiceImpl();
		memberServ = new MembershipServiceImpl();
	}
	public void LoginProc() {
		String []txtFldIdArr = {"#txtid", "#txtpw"};
		Map<String, TextField> txtFldMap = 
				comServ.getTextFieldInfo(root, txtFldIdArr);
		if(comServ.isEmpty(txtFldMap, txtFldIdArr)) {
			System.out.println("비어 있어요");
			return ;
		}
		
		if(loginServ.LoginProc(root))
			comServ.ErrorMsg("로그인", "로그인 성공", "로그인에 성공하셨습니다.");
		else
			comServ.ErrorMsg("로그인", "로그인 실패", "로그인에 실패하셨습니다.");	
	}
	public void CancelProc(ActionEvent event) {		comServ.WindowClose(event);	}
	public void OpenMembershipForm() {
		Parent form = loginServ.OpenMembershipForm();
		String [] items= {"20대 미만", "20대", "30대", "40대", "50대", "60대 이상"};
		memberServ.AddComboBox(form, Arrays.asList(items));
	}
}













