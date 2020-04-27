package Webpage;

import java.net.URL;
import java.util.Arrays;
import java.util.Map;
import java.util.ResourceBundle;

import Webpage.Service.*;
import javafx.event.ActionEvent;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.control.TextField;
import javafx.scene.layout.BorderPane;
import javafx.stage.Stage;

public class Controller implements Initializable{
	private Parent root;
	private CommonService comServ;
	
	private Parent getScene(ActionEvent e) {
		Parent btnObj = (Parent)e.getSource();
		return btnObj.getScene().getRoot();
	}
	public void setRoot(Parent root) {
		this.root = root;
	}
	@Override
	public void initialize(URL location, ResourceBundle resources) {
		comServ = new CommonServiceImpl();
	}
	public void LoginView(ActionEvent e) {
		BorderPane borderPane = (BorderPane)getScene(e);
		Parent loginScene = comServ.getScene("/Webpage/Login.fxml");
		borderPane.setCenter(loginScene);
	}
	public void MembershipView(ActionEvent e) {
		BorderPane borderPane = (BorderPane)getScene(e);
		Parent membershipScene = comServ.getScene("/Webpage/Membership.fxml");
		borderPane.setCenter(membershipScene);
	}
}













