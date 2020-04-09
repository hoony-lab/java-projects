package Ex05.Ex01Dialog.Ex01File;

import java.io.IOException;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;

public class DialogMain extends Application {

	@Override
	public void start(Stage primaryStage) throws IOException {
		FXMLLoader loader = new FXMLLoader(getClass().getResource("DialogForm.fxml"));
		Parent dialogForm = loader.load();
		
		primaryStage.setTitle("Dialog");
		primaryStage.setScene(new Scene(dialogForm));
		primaryStage.show();
		
		//////////////////////////////////////////////////
		//위까지 기본 코드
		//아래 부분 추가 코드
		Controller ctrler = loader.getController();
		ctrler.setPrimaryStage(primaryStage);
	}

	public static void main(String[] args) {
		launch(args);
	}
}
