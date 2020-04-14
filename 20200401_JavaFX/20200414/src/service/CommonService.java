package service;

import javafx.event.ActionEvent;
import javafx.stage.Stage;

public interface CommonService {

	public void WindowClose(ActionEvent e);
	public void WindowShow(Stage stage, String URL);
	
	///public Map<String, TextField> 
	
	public void ErrorMsg(String title, String headerText, String contentText);
	public void ErrorMsg(String headerText, String contentText);
	public void ErrorMsg(String contentText);
}
