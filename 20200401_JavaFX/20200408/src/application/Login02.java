package application;

import javafx.application.Application;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.layout.Pane;
import javafx.stage.Stage;

public class Login02 extends Application{
	public static void main(String[] args) {
		launch(args);
	}

	@Override
	public void start(Stage primaryStage) throws Exception {
		Pane canvas = new Pane();
		Button btn = new Button("OK");

		btn.setPrefSize(100, 30);
		btn.setOnAction(e -> System.out.println("ASDASDASD"));

		canvas.getChildren().add(btn);

		primaryStage.setScene(new Scene(canvas));
		primaryStage.show();

	}

}
