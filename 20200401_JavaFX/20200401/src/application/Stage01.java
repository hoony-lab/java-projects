package application;

import javafx.application.Application;

import javafx.scene.Scene;
import javafx.scene.layout.BorderPane;
import javafx.stage.Stage;

public class Stage01 extends Application {


	@Override
	public void start(Stage primaryStage) throws Exception {

		primaryStage.setTitle("MapleStory");
		System.out.println(primaryStage.getTitle());

		//Node node = new Node(null); //node.setLayoutX(3); //node.setLayoutY(400);

		BorderPane root = new BorderPane(); root.setTranslateX(800);

		Scene scene = new Scene(root, 1080, 720);

		primaryStage.setFullScreen(false); primaryStage.setScene(scene);
		primaryStage.show();

		int time = 100; while(time-- > 0) {

			primaryStage.setY(10); primaryStage.setY(1000); scene = new Scene(root, 1080,
					720); Thread.sleep(2000); primaryStage.setIconified(true);
					Thread.sleep(2000); primaryStage.setIconified(false); }
		System.out.println("getMaxWidth : " + scene.getWidth());
		System.out.println("getMaxHeight : " + scene.getHeight());
	}


	public static void main(String[] args) {
		launch(args);
	}
}
