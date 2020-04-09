package signUp;

import java.net.URL;
import java.util.ResourceBundle;

import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.TextField;
import javafx.scene.input.KeyEvent;

public class SignUpController implements Initializable{
	@FXML Button signUpBtn;
	@FXML TextField idTf, pwdTf, emailTf;
	
	@Override
	public void initialize(URL location, ResourceBundle resources) {
		idTf.setOnAction(e -> pwdTf.requestFocus());
		pwdTf.setOnAction(e -> emailTf.requestFocus());
		emailTf.setOnAction(e -> signUpBtn.requestFocus());
		
		signUpBtn.setOnKeyPressed(e -> handleSignUp(e));
	}

	private void handleSignUp(KeyEvent e) {
		String id = idTf.getText();
		String pwd = pwdTf.getText();
		String em = emailTf.getText();
		
		System.out.println("회원가입 실행");
	}
	
	

}
