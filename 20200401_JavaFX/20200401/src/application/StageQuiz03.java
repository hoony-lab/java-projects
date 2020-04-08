package application;

import javafx.application.Application;
import javafx.scene.Group;
import javafx.scene.Scene;
import javafx.scene.text.Font;
import javafx.scene.text.Text;
import javafx.stage.Stage;

public class StageQuiz03 extends Application{

	public static void main(String[] args) {
		launch(args);	
	}
	@Override
	public void start(Stage primaryStage) throws Exception {
		
		Text text = new Text(20, 140, "Infiscap World!");
		text.setFont(new Font(35));
		Scene scene = new Scene(new Group(text), 400, 350);
		
		primaryStage.setX(120);
		primaryStage.setY(140);
		primaryStage.setScene(scene);
		primaryStage.setTitle("Welcome to JavaFX!");
		primaryStage.show();
	}
	
}
