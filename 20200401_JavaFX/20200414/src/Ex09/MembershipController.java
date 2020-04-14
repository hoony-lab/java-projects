package Ex09;

import java.net.URL;
import java.util.Map;
import java.util.ResourceBundle;

import Ex09.Service.CommonService;
import Ex09.Service.CommonServiceImpl;
import Ex09.Service.LoginService;
import Ex09.Service.LoginServiceImpl;
import Ex09.Service.MembershipService;
import Ex09.Service.MembershipServiceImpl;
import javafx.event.ActionEvent;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.control.TextField;

public class MembershipController extends Controller implements Initializable{
	final int NAME = 0;
	final int ID = 1;
	final int PW = 2;
	final int PWOK = 3;
	
	private Parent root;
	private CommonService comServ;
	private MembershipService membershipServ;
	
	@Override
	public void setRoot(Parent root) {
		this.root = root;
	}
	@Override
	public void initialize(URL location, ResourceBundle resources) {
		comServ = new CommonServiceImpl();
		membershipServ = new MembershipServiceImpl();
	}
	public void CancelProc(ActionEvent event) {
		comServ.WindowClose(event);
	}
	public void MembershipProc() {
		String []txtFldIdArr = {"#txtName", "#txtID", "#txtPw", "#txtPwOk"};
		Map<String, TextField> txtFldMap = 
				comServ.getTextFieldInfo(root, txtFldIdArr);
		if(comServ.isEmpty(txtFldMap, txtFldIdArr)) {
			System.out.println("비어 있어요");
			return ;
		}
		
		String pw = txtFldMap.get(txtFldIdArr[PW]).getText();
		String pwOk = txtFldMap.get(txtFldIdArr[PWOK]).getText();
		if(!membershipServ.comparePW(pw, pwOk)) {
			System.out.println("패스워드가 다릅니다.");
			return;
		}
		
		Member member = new Member();
		member.setName(	txtFldMap.get(txtFldIdArr[NAME]).getText());
		member.setId(txtFldMap.get(txtFldIdArr[ID]).getText());
		member.setPw(txtFldMap.get(txtFldIdArr[PW]).getText());
		
		System.out.println(member.getName());
		System.out.println(member.getId());
		System.out.println(member.getPw());
	}
}













