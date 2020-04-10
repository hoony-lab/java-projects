package FXML.Ex06;

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
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.input.KeyEvent;

public class Controller implements Initializable{
	@FXML private TextField idTxt;
	@FXML private TextField pwTxt;
	@FXML private TextField emailTxt;
	@FXML private Button membershipBtn;
	
	@Override
	public void initialize(URL location, ResourceBundle resources) {
		idTxt.setOnAction(e->pwTxt.requestFocus());
		pwTxt.setOnAction(e->emailTxt.requestFocus());
		emailTxt.setOnAction(e->membershipBtn.requestFocus());
		
		membershipBtn.setOnKeyPressed(e->handleBtnAction(e));
	}

	private void handleBtnAction(KeyEvent e) {
		System.out.println("회원 가입 실행");
	}

}



















