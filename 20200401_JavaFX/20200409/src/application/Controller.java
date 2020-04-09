package application;

import java.net.URL;
import java.util.ResourceBundle;

import javafx.beans.value.ObservableValue;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.TextField;
import javafx.scene.input.KeyEvent;

public class Controller implements Initializable{
	@FXML Button btn;
	@FXML TextField tf01, tf02;
	
	
	@Override
	public void initialize(URL location, ResourceBundle resources) {
		btn.setDisable(true);
		
		btn.setOnAction(e -> {
			requestFocusText(e);
		});
		
		tf01.textProperty().addListener((obs, oldTxt, newTxt) ->{
			addListener(obs, oldTxt, newTxt);
		});
		tf02.textProperty().addListener((obs, oldTxt, newTxt) ->{
			addListener(obs, oldTxt, newTxt);
		});
		tf02.setOnKeyPressed(e -> {
			setonKeyPressedText(e);
			
		});
	}


	private void setonKeyPressedText(KeyEvent e) {
		System.out.println(e.getText());
	}


	private void addListener(ObservableValue<? extends String> obs, String oldTxt, String newTxt) {
//		System.out.println("obs : " + obs.getValue());
//		System.out.println(oldTxt);
//		System.out.println(newTxt);
		if(obs.getValue().length() >= 5) {
			tf01.setText(oldTxt);
			btn.setDisable(false);
		}
		else btn.setDisable(true);
	}


	private void requestFocusText(ActionEvent e) {
		tf01.requestFocus();
	}


}
