package application;

import javafx.application.Application;
import javafx.scene.Scene;
import javafx.scene.layout.BorderPane;
import javafx.stage.Stage;

public class Stage02 extends Application{

	
	public static void main(String[] args) {
		launch(args);
	}

	@Override
	public void start(Stage primaryStage) throws Exception {
		BorderPane root = new BorderPane();
		Scene scene = new Scene(root, 1080, 720);
		
		primaryStage.setTitle("First window");
		primaryStage.setScene(scene);
		
		primaryStage.show();
		
		Thread.sleep(2000);
		primaryStage.hide();
		
		Thread.sleep(2000);
		primaryStage.setX(10);
		primaryStage.setY(10);
		primaryStage.show();
		
	}
}
