package FXML.Ex02;

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
	@Override
	public void initialize(URL location, ResourceBundle resources) {
		okBtn.setOnAction(e->{
			//cleanTest(e);
			requestFocusTest(e);
		});
		idTxt.textProperty().addListener((obs, oldTxt, newTxt)->{
			addListenerTest(obs, oldTxt, newTxt);
		});
		pwTxt.setOnKeyPressed(e->{
			setOnKeyPressedTest(e);
		});
	}
	private void cleanTest(ActionEvent e) {
		idTxt.clear();
	}
	private void requestFocusTest(ActionEvent e) {
		pwTxt.requestFocus();
	}
	private void addListenerTest(ObservableValue<? extends String> obs, 
			String oldTxt, String newTxt) {
		System.out.println("obs : " + obs);
		System.out.println("oldTxt : " + oldTxt);
		System.out.println("newTxt : " + newTxt);
	}
	private void setOnKeyPressedTest(KeyEvent e) {
		System.out.println(e.getText());
	}
}






