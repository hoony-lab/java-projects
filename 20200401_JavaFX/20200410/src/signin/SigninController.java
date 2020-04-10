package signin;

import java.io.IOException;
import java.net.URL;
import java.util.HashMap;
import java.util.ResourceBundle;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.CheckBox;
import javafx.scene.control.TextField;
import javafx.scene.input.KeyCode;
import javafx.scene.input.KeyEvent;
import javafx.scene.layout.Pane;
import javafx.stage.Modality;
import javafx.stage.Popup;
import javafx.stage.Stage;
import javafx.stage.StageStyle;
import service.Common;
import service.ICommon;

public class SigninController implements Initializable{

	@FXML private Button btn01, btn02;
	@FXML private TextField tf01, tf02;
	@FXML private CheckBox cb;

	private Stage primaryStage;
	private ICommon serv;
	//private HashMap<String, String> db;
	MyDB dbdb;
	
	public void setPrimaryStage(Stage primaryStage) {
		this.primaryStage = primaryStage;
	}
	
	@Override
	public void initialize(URL location, ResourceBundle resources) {
		serv = new Common();
		dbdb = new MyDB();
		
		tf01.setOnAction(e -> tf02.requestFocus());

		tf02.setOnAction(e -> btn01.requestFocus());

		btn01.setOnAction(e -> btnActionHandler(e));

		btn02.setOnAction(e -> {
			try {
				signupShow();
			} catch (IOException e1) {
				e1.getMessage();
			}		
		});


	}

	private void signupAction() throws IOException {
		Popup popup = new Popup();
		popup.getContent().add(FXMLLoader.load(getClass().getResource("signup.fxml")));
		popup.show(primaryStage);
	}

	
	
	public void signupShow() throws IOException{
		Stage customWnd = new Stage(StageStyle.DECORATED);
		customWnd.initModality(Modality.APPLICATION_MODAL);
		customWnd.initOwner(primaryStage);
		customWnd.setTitle("Signup");

		Pane canvas = (Pane)FXMLLoader.load(getClass().getResource("signup.fxml"));
		
		customWnd.setScene(new Scene(canvas));
		customWnd.setResizable(false);
		customWnd.show();
	}

	
	
	
	
	private void btnActionHandler(ActionEvent e) {
		String checkId = tf01.getText();
		String checkPwd = tf02.getText();
		
		
		if(checkId.isEmpty()) {
			serv.showAlert("LOGIN ERROR", "ID ERROR", "Please Enter Your ID First.");
			tf01.requestFocus();
		}
		else {
			if(checkPwd.isEmpty()) {
				serv.showAlert("LOGIN ERROR", "PWD ERROR", "Please Enter Your PWD First.");
				tf02.requestFocus();
			}
			else {
				if(dbdb.getIdnPwd().containsKey(checkId) == false) {
					serv.showAlert("LOGIN ERROR", "ID ERROR", "ID Matching Error.");
					tf01.requestFocus();
				}
				else {
					if(dbdb.getIdnPwd().get(checkId).equals(checkPwd)){
						serv.showAlert("LOGIN SUCCESS", "LOGIN SUCCESS", "LOGIN SUCCESS");
					}
					else{
						serv.showAlert("LOGIN ERROR", "PWD ERROR", "PWD Mathcing Error.");
						tf02.requestFocus();
					}
				}
			}
		}
		
		tf02.clear();
	}

	private void enterHandler(KeyEvent e) {
		if(e.getCode() == KeyCode.ENTER) {
			System.out.println("asdf");
			btn01.setOnAction(eh -> {
				btnActionHandler(eh);
			});
		}
	}

}
