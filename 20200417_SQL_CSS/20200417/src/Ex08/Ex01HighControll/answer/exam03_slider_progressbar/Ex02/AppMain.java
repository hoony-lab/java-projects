package Ex08.Ex01HighControll.answer.exam03_slider_progressbar.Ex02;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;

public class AppMain extends Application {
	@Override
	public void start(Stage primaryStage) throws Exception {
		FXMLLoader loader = new FXMLLoader(getClass().getResource("root.fxml"));
		Parent root = (Parent)loader.load();
		Scene scene = new Scene(root);
		
		primaryStage.setTitle("AppMain");
		primaryStage.setScene(scene);
		primaryStage.show();
		
		RootController ctrler = loader.getController();
		ctrler.setForm(root);
	}
	
	public static void main(String[] args) {
		launch(args);
	}
}
