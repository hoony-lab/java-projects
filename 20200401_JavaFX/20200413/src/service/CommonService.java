package service;

import javafx.event.ActionEvent;
import javafx.stage.Stage;

public interface CommonService {

	public void WindowClose(ActionEvent e);
	public void WindowShow(Stage stage, String URL);
}
