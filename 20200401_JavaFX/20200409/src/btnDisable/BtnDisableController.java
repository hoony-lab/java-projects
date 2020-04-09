package btnDisable;

import java.net.URL;
import java.util.ResourceBundle;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.TextArea;

public class BtnDisableController implements Initializable{
	@FXML TextArea lb01;
	@FXML Button btn01, btn02;
	boolean isDisable;
	int btnName;
	@Override
	public void initialize(URL location, ResourceBundle resources) {
		isDisable = false;
		btnName = 1;
		
		btn01.setOnAction(e ->{
			btnDisable(e);
		});
		btn02.setOnAction(e ->{
			btnDisable(e);
		});
	}

	private void btnDisable(ActionEvent e) {
//		if(btn01.isDisabled()) {
//			btn01.setDisable(false);
//			btn02.setDisable(true);	
//		}
//		else {
//			btn01.setDisable(true);
//			btn02.setDisable(false);	
//		}
		
		lb01.setText("Button" + (btnName + 1) + " Disable");
		btn01.setDisable(isDisable);
		btn02.setDisable(!isDisable);
		isDisable = !isDisable;
		btnName = ( btnName + 1 ) % 2;
	}

}
