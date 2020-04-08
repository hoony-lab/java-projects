package application;

import javafx.application.Application;
import javafx.scene.Scene;
import javafx.scene.control.ListView;
import javafx.scene.layout.AnchorPane;
import javafx.stage.Stage;

public class ListView01 extends Application{
	public static void main(String[] args) {
		launch(args);
	}

	@Override
	public void start(Stage primaryStage) throws Exception {
		AnchorPane ap = new AnchorPane();
		ListView<String> lv = new ListView<String>();

		lv.getItems().addAll("item1", "item2", "item3");
		lv.setPrefSize(100, 70);

		ap.getChildren().add(lv);
		ap.setPrefSize(300, 100);

		primaryStage.setScene(new Scene(ap));
		primaryStage.show();

	}

}
