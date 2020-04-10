package FXML.Ex08;

import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ResourceBundle;

import javax.print.attribute.standard.PDLOverrideSupported;

import FXML.Ex08.Service.CommonService;
import FXML.Ex08.Service.ICommonService;
import javafx.beans.value.ObservableValue;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Alert;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.control.Button;
import javafx.scene.control.CheckBox;
import javafx.scene.control.TextField;
import javafx.scene.input.KeyEvent;

public class Controller implements Initializable{
	@FXML private TextField idTxt;
	@FXML private TextField pwTxt;
	@FXML private Button okBtn;
	
	@FXML private CheckBox idRememberChkBox;
	
	private ICommonService comServ;
	
	final private int FIELDLENGTH = 10;
	private MyDB db;
	
	@Override
	public void initialize(URL location, ResourceBundle resources) {
		comServ = new CommonService();
		
		db = new MyDB();
		okBtn.setDisable(true);
		okBtn.setOnAction(e->{
			LoginProc(e);
		});
		okBtn.setOnKeyPressed(e->LoginProc(null));
		idTxt.setOnAction(e->pwTxt.requestFocus());
		pwTxt.setOnAction(e->okBtn.requestFocus());
		
		idTxt.textProperty().addListener((obs, oldTxt, newTxt)->{
			checkFieldLength(idTxt);
			isTextField();
			checkEscapeText(idTxt);
		});
		pwTxt.textProperty().addListener((obs, oldTxt, newTxt)->{
			isTextField();
		});
	}

	private void LoginProc(ActionEvent e){		
		if(isTextField(idTxt) && isTextField(pwTxt)) {
			String id = idTxt.getText();
			String pw = pwTxt.getText();
			//hash 암호화
			pw = comServ.encryptSHA512(pw);
			System.out.println(pw);
			
			if(pw.equals( db.getPassword(id) ) ){
				comServ.MsgBox("성공");
			}else{
				comServ.MsgBox("실패");
				pwTxt.clear();
				
				if(!idRememberChkBox.isSelected()){
					idTxt.clear();
					idTxt.requestFocus();
				}else{
					pwTxt.requestFocus();
				}
			}
		}
		
	}
	private boolean isTextField(TextField txt) {
		String id = txt.getText();
		if(id.isEmpty()) {
			comServ.MsgBox(txt.getId() + "를 입력하세요");
			txt.clear();
			txt.requestFocus();
			return false;
		}
		return true;
	}
	private void isTextField() {
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
	private void checkEscapeText(TextField txt) {
		txt.setText(txt.getText().replaceAll("[^a-zA-Z0-9_]", ""));
	}
}



















