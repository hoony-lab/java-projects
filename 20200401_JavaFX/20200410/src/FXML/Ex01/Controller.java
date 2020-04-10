package FXML.Ex01;

import java.net.URL;
import java.util.ResourceBundle;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Alert;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.control.Button;
import javafx.scene.control.TextField;

public class Controller implements Initializable{
	@FXML private TextField idTxt;
	@FXML private TextField pwTxt;
	@FXML private Button okBtn;
	@Override
	public void initialize(URL location, ResourceBundle resources) {
		okBtn.setOnAction(e->{
			//isEmptyTest(e);
			//lengthTest(e);
			//EqualsTest(e);
			subStringTest(e);
		});
	}
	private void MsgBox(String contents) {
		Alert alert = new Alert(AlertType.INFORMATION);
		
		alert.setContentText(contents);
		alert.show();
	}
	private void isEmptyTest(ActionEvent e) {
		String str = idTxt.getText();
		
		boolean result = str.isEmpty();
		MsgBox("isEmpty : "+String.valueOf(result));
	}
	private void lengthTest(ActionEvent e) {
		String str = idTxt.getText();
		
		int result = str.length();
		MsgBox("length : "+String.valueOf(result));
	}
	private void EqualsTest(ActionEvent e) {
		String id = idTxt.getText();
		String pw = pwTxt.getText();
		
		//완전 일치
		boolean result = id==pw;
		MsgBox("id==pw : "+String.valueOf(result));
		//내용 일치
		result = id.contentEquals(pw);
		MsgBox("contentEquals : "+String.valueOf(result));
		//객체가 같은 종류이며 내용 일치
		result = id.equals(pw);
		MsgBox("equals : "+String.valueOf(result));
	}

	private void subStringTest(ActionEvent e) {
		String id = idTxt.getText();
		
		MsgBox("id.substring(2) : " + id.substring(2));
		MsgBox("id.substring(2, 3) : " + id.substring(2, 3));
	}
}






