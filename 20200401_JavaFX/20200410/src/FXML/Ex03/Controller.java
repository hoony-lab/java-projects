package FXML.Ex03;

import java.net.URL;
import java.util.ResourceBundle;

import javax.print.attribute.standard.PDLOverrideSupported;

import javafx.beans.value.ObservableValue;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Alert;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.control.Button;
import javafx.scene.control.TextField;
import javafx.scene.input.KeyEvent;

public class Controller implements Initializable{
	@FXML private TextField idTxt;
	@FXML private TextField pwTxt;
	@FXML private Button okBtn;
	
	private MyDB db;
	@Override
	public void initialize(URL location, ResourceBundle resources) {
		db = new MyDB();
		okBtn.setOnAction(e->{
			LoginProc(e);
		});
	}
	private void MsgBox(String contents){
		Alert alert = new Alert(AlertType.INFORMATION);
		alert.setContentText(contents);
		alert.show();
	}
	private void LoginProc(ActionEvent e){
		//if(!isTextField())	return;
		//if(!isTextField(idTxt) && !isTextField(pwTxt))	return;
		if(!isTextField(idTxt))	return;
		if(!isTextField(pwTxt))	return;
		
		if(isTextField(idTxt) && isTextField(pwTxt)) {
			String id = idTxt.getText();
			String pw = pwTxt.getText();
				
			if(pw.equals( db.getPassword(id) ) ){
				MsgBox("성공");
			}else{
				MsgBox("실패");
			}
		}
		
	}
	private boolean isTextField(TextField txt) {
		String id = txt.getText();
		if(id.isEmpty()) {
			MsgBox(txt.getId() + "를 입력하세요");
			txt.clear();
			txt.requestFocus();
			return false;
		}
		return true;
	}
	private boolean isTextField() {
		String id = idTxt.getText();
		if(id.isEmpty()) {
			MsgBox("ID를 입력하세요");
			idTxt.clear();
			idTxt.requestFocus();
			return false;
		}
		String pw = pwTxt.getText();
		if(pw.isEmpty()) {
			MsgBox("PW를 입력하세요");
			pwTxt.clear();
			pwTxt.requestFocus();
			return false;
		}
		return true;
	}
}



















