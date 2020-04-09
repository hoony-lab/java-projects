package signIn;

import java.net.URL;
import java.util.ResourceBundle;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.CheckBox;
import javafx.scene.control.TextField;

public class SignInController implements Initializable{
	@FXML CheckBox cb;
	@FXML TextField id, pwd;
	@FXML Button btn;
	
	@Override
	public void initialize(URL location, ResourceBundle resources) {
		btn.setOnAction(e -> handleBtnAction(e));
	}

	private void handleBtnAction(ActionEvent e) {
		if(!cb.isSelected())
			id.clear();
		pwd.clear();
	}

}
