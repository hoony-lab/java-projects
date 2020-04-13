package service;

import javafx.event.ActionEvent;
import javafx.scene.Parent;
import javafx.stage.Stage;

public class CommonServiceImpl implements CommonService{

	@Override
	public void WindowClose(ActionEvent e) {
		Parent root = (Parent) e.getSource();
		Stage stage = (Stage) root.getScene().getWindow();
		stage.close();
	}

}
