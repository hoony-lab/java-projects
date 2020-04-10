package FXML.Ex07;

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
	final private int FIELDLENGTH = 10;
	private MyDB db;
	
	@Override
	public void initialize(URL location, ResourceBundle resources) {
		db = new MyDB();
		okBtn.setDisable(true);
		okBtn.setOnAction(e->{
			LoginProc(e);
		});
		idTxt.textProperty().addListener((obs, oldTxt, newTxt)->{
			checkFieldLength(idTxt);
			isTextField();
		});
		pwTxt.textProperty().addListener((obs, oldTxt, newTxt)->{
			isTextField();
		});
	}
	private void MsgBox(String contents){
		Alert alert = new Alert(AlertType.INFORMATION);
		alert.setContentText(contents);
		alert.show();
	}
	private void LoginProc(ActionEvent e){		
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
	private void isTextField() {
		//가독성
		/*
		 * String id = idTxt.getText(); String pw = pwTxt.getText();
		 * 
		 * if(id.isEmpty() && pw.isEmpty()) okBtn.setDisable(true); else
		 * okBtn.setDisable(false);
		 */
		
		//효율성(처리속도, 메모리)
		if(idTxt.getLength()>0 && pwTxt.getLength()>0)
			okBtn.setDisable(false);
		else
			okBtn.setDisable(true);
	}
	private void checkFieldLength(TextField txt) {
		if(txt.getLength()>=FIELDLENGTH) {
			txt.setText(txt.getText().substring(0, FIELDLENGTH));
		}
	}
}



















