package signin;

import java.net.URL;
import java.util.HashMap;
import java.util.ResourceBundle;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.TextField;
import service.Common;
import service.ICommon;

public class SignupController implements Initializable{
	
	@FXML TextField tf_id, tf_pwd, tf_name, tf_pref;
	@FXML Button btn_signup;
	
	private ICommon serv;
	MyDB dbdb;
	
	
	@Override
	public void initialize(URL location, ResourceBundle resources) {
		serv = new Common();
		dbdb = new MyDB();
		
		tf_id.setOnAction(e -> tf_pwd.requestFocus());
		tf_pwd.setOnAction(e -> tf_name.requestFocus());
		tf_name.setOnAction(e -> tf_pref.requestFocus());
		tf_pref.setOnAction(e -> btn_signup.requestFocus());

		btn_signup.setOnAction(e -> {
			signupAction(e);
		});
	}

	private void signupAction(ActionEvent e) {
		String id = tf_id.getText();
		String pwd = tf_pwd.getText();
		//String name = tf_name.getText();
		//String pref = tf_pref.getText();
	
		
		if(id.isEmpty() || pwd.isEmpty()) {
			serv.showAlert("ERROR", "ID or PWD is empty", "Please enter ID and PWD !");
		}
		else if(dbdb.getIdnPwd().containsKey(id)) {
			serv.showAlert("ERROR", "ID already Exists", "Check your ID !");
		} 
		else {
			serv.showAlert("SUCCESS", "ID created", "Your ID has created : " + id);
			dbdb.addIdnPwd(id, pwd);
		}
	}

}
