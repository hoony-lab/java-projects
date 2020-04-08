package application;

import javafx.application.Application;
import javafx.scene.Group;
import javafx.scene.Scene;
import javafx.scene.text.Font;
import javafx.scene.text.Text;
import javafx.stage.Stage;

public class StageQuiz02 extends Application{
	public static void main(String[] args) {
		launch(args);
	}
	@Override
	public void start(Stage primaryStage) throws Exception {
		//Group group = new Group();
		Text text = new Text(800 - 150, 400 - 10, "Infiscap world!");
		text.setFont(new Font(20));

		//BorderPane root = new BorderPane();
		Scene scene = new Scene(new Group(text), 800, 400);


		primaryStage.setScene(scene);
		primaryStage.sizeToScene();
		primaryStage.setTitle("Quiz02!");

		primaryStage.show();


	}

}
