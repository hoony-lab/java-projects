package FXML.Ex05;

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
	@FXML private Label lbl;
	@FXML private Button btn1;
	@FXML private Button btn2;
	private boolean isDisable;
	private int btnName;	
	@Override
	public void initialize(URL location, ResourceBundle resources) {
		isDisable = false;
		btnName = 1;
		btn1.setOnAction(e->ButtonDisable(e));
		btn2.setOnAction(e->ButtonDisable(e));
	}

	private void ButtonDisable(ActionEvent e) {
		lbl.setText("Button"+ (btnName+1) +" Disable");
		btn1.setDisable(isDisable);
		btn2.setDisable(!isDisable);
		isDisable = !isDisable;
		btnName = (btnName+1)%2;
	}
}



















