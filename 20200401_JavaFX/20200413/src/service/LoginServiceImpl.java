package service;

import java.io.IOException;

import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.control.TextField;
import javafx.stage.Stage;

public class LoginServiceImpl implements LoginService{
	private Parent root;

	public void setRoot(Parent root) {
		this.root = root;
	}

	@Override
	public void LoginProc(Parent root) {
		TextField txtField = (TextField)root.lookup("#idTxt");
		System.out.println(txtField.getText());
	}

	@Override
	public void CancelProc(Parent root) {
		Stage stage = (Stage) root.getScene().getWindow();
		stage.close();
		
		
		
//		TextField id = (TextField)root.lookup("#idTxt");
//		TextField pwd = (TextField)root.lookup("#pwdTxt");
//		id.clear();
//		pwd.clear();
//
//		id.requestFocus();
	}


	@Override
	public void OpenSigninForm() {
		System.out.println("회원 가입 버튼을 눌렀습니다.");
		
		
		FXMLLoader loader = new FXMLLoader(getClass().getResource("../application/Membership.fxml"));
		Stage signinForm = new Stage();
		
		try {
			signinForm.setScene(new Scene(loader.load()));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		signinForm.show();
	}

	@Override
	public void SigninProc(Parent root) {
		System.out.println("a");
		Alert alert = new Alert(AlertType.INFORMATION);
		alert.setTitle("SDf");
		alert.setHeaderText("afsfsf");
		//alert.setContentText("ID : " + idTxt.getText());
		alert.setContentText(("ID : " + ((TextField) root.lookup("#idTxt")).getText()));
		alert.show();
	}



}
