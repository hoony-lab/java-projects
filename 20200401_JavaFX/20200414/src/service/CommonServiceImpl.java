package service;

import java.io.IOException;

import application.LoginController;
import javafx.event.ActionEvent;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.Alert.AlertType;
import javafx.stage.Stage;

public class CommonServiceImpl implements CommonService{
	@Override
	public void WindowClose(ActionEvent e) {
		Parent root = (Parent) e.getSource();
		Stage stage = (Stage) root.getScene().getWindow();
		stage.close();
	}

	@Override
	public void WindowShow(Stage stage, String URL) {

		FXMLLoader loader = new FXMLLoader(getClass().getResource(URL));
		Parent root = null;
		try {
			root = loader.load();
			stage.setScene(new Scene(root));
		} catch (IOException e) {
			e.printStackTrace();
		}

		LoginController ctrler = loader.getController();
		ctrler.setRoot(root);

		stage.show();
	}

	@Override
	public void ErrorMsg(String title, String headerText, String contentText) {
		Alert alert = new Alert(AlertType.INFORMATION);
		alert.setTitle(title);
		alert.setHeaderText(headerText);
		alert.setContentText(contentText);
		alert.show();
	}

	@Override
	public void ErrorMsg(String headerText, String contentText) {
		ErrorMsg("error", headerText, contentText);
		
	}

	@Override
	public void ErrorMsg(String contentText) {
		ErrorMsg("error", "error Header", contentText);
	}

}
