package TableViewTest;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;

public class TableViewMain extends Application {

	@Override
	public void start(Stage primaryStage) throws Exception {
		// TODO Auto-generated method stub
		FXMLLoader loader = new FXMLLoader(getClass().getResource("testForm.fxml"));

		Parent form = (Parent)loader.load();

		primaryStage.setScene(new Scene(form));
		primaryStage.show();

		Controller ctrler = loader.getController();
		ctrler.setForm(form);
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		launch(args);
	}

}
