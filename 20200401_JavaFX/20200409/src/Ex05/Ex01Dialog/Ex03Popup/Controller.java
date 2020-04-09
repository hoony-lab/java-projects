package Ex05.Ex01Dialog.Ex03Popup;

import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;

import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.stage.DirectoryChooser;
import javafx.stage.FileChooser;
import javafx.stage.FileChooser.ExtensionFilter;
import javafx.stage.Popup;
import javafx.stage.Stage;

public class Controller implements Initializable{
	@FXML private Button fileBtn;
	@FXML private Button dirBtn;
	
	private Stage primaryStage;
	
	public void setPrimaryStage(Stage primaryStage) {
		this.primaryStage = primaryStage;
	}

	@Override
	public void initialize(URL location, ResourceBundle resources) {
		// TODO Auto-generated method stub
		fileBtn.setOnAction(new EventHandler<ActionEvent>() {
			
			@Override
			public void handle(ActionEvent event) {
				// TODO Auto-generated method stub
				OpenFileWindow();
			}
		});
		dirBtn.setOnAction(event->OpenDirWindow());
	}
	
	private void OpenDirWindow() {
		// TODO Auto-generated method stub
		DirectoryChooser dirChooser = new DirectoryChooser();
		File selectedDir = dirChooser.showDialog(primaryStage);
		
		if(selectedDir != null){
			System.out.println(selectedDir.getPath());
		}
	}

	private void OpenFileWindow() {
		// TODO Auto-generated method stub
		FileChooser fileChooser = new FileChooser();
		
		fileChooser.getExtensionFilters().addAll(
			new ExtensionFilter("Text Files", "*.txt"),
			new ExtensionFilter("Image Files", "*.png", "*.jpg", "*.gif"),
			new ExtensionFilter("Audio Files", "*.wav", "*.mp3", "*.aac"),
			new ExtensionFilter("All Files", "*.*")	
		);
		File selectedFile = fileChooser.showOpenDialog(primaryStage);
		String selectedFilePath = selectedFile.getPath();
		System.out.println(selectedFilePath);
	}
	public void PopupFormShow() throws IOException{
		Popup popup = new Popup();
		popup.getContent().add(FXMLLoader.load(getClass().getResource("popup.fxml")));
		
		popup.show(primaryStage);
	}
}
