package Ex13;

import java.net.URL;
import java.util.Map;
import java.util.ResourceBundle;
import java.util.Set;

import Ex13.Service.CommonService;
import Ex13.Service.CommonServiceImpl;
import Ex13.Service.MembershipService;
import Ex13.Service.MembershipServiceImpl;
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

		Map<String, String> mapMember = membershipServ.getMember();
		Set<String> setId = mapMember.keySet();

		for (String id : setId) 
			System.out.println(mapMember.get(id));

		comServ.WindowClose(event);
	}

	private boolean isCheck(Map<String, TextField> txtFldMap, String []txtFldIdArr) {
		if(comServ.isEmpty(txtFldMap, txtFldIdArr)) {
			System.out.println("비어 있어요");
			return false;
		}

		String pw = txtFldMap.get(txtFldIdArr[PW]).getText();
		String pwOk = txtFldMap.get(txtFldIdArr[PWOK]).getText();
		if(!membershipServ.comparePW(pw, pwOk)) {
			System.out.println("패스워드가 다릅니다.");
			return false;
		}
		if(!membershipServ.isComboBox(root))
			return false;
		return true;
	}

	public void MembershipProc(ActionEvent event) {
		String []txtFldIdArr = {"#txtName", "#txtID", "#txtPw", "#txtPwOk"};
		Map<String, TextField> txtFldMap = 
				comServ.getTextFieldInfo(root, txtFldIdArr);

		if(!isCheck(txtFldMap, txtFldIdArr))
			return;

		Member member = new Member();
		member.setName(	txtFldMap.get(txtFldIdArr[NAME]).getText());
		member.setId(txtFldMap.get(txtFldIdArr[ID]).getText());
		member.setPw(txtFldMap.get(txtFldIdArr[PW]).getText());
		member.setAge(membershipServ.getComboBoxString(root));
		member.setGender(membershipServ.getGender(root));
		member.setHobby(membershipServ.getHobby(root));


		if(membershipServ.MembershipProc(member)) { 
			comServ.ErrorMsg("회원가입", "성공", "가입을 축하드립니다.");
			comServ.WindowClose(event);
		}
		else 
			comServ.ErrorMsg("회원가입", "실패", "관리자에게 문의하세요.");







		System.out.println(member.getName());
		System.out.println(member.getId());
		System.out.println(member.getPw());
		System.out.println(member.getAge());
		if(member.getGender()==1) 	System.out.println("남성");
		else 			  		    System.out.println("여성");



		final int MUSIC = 1 << 0;
		final int SPORT = 1 << 1;
		final int MOVIE = 1 << 2;

		if((MUSIC & member.getHobby()) == MUSIC) System.out.println("음악");
		if((SPORT & member.getHobby()) == SPORT) System.out.println("슷포츠");
		if((MOVIE & member.getHobby()) == MOVIE) System.out.println("무뷔");



	}


}













