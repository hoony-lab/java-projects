package Ex07.ElevatorEx10;

import java.io.IOException;

import Ex07.ElevatorEx9.Service.*;
import javafx.application.Application;
import javafx.stage.Stage;

public class MainView extends Application {

	@Override
	public void start(Stage primaryStage) throws IOException {
		ICommonService comServ = new CommonServiceImpl();
		comServ.showWindow(primaryStage, "../CreatrElevatorForm.fxml", "Elevator");
		/*
		FXMLLoader loader = new FXMLLoader(getClass().getResource("CreatrElevatorForm.fxml"));
		Parent root = loader.load();
		Scene scene = new Scene(root);
		Controller ctrler = loader.getController();
		ctrler.setForm(root);
		
		primaryStage.setTitle("Elevator");
		primaryStage.setScene(scene);
		primaryStage.show();
		*/
	}

	public static void main(String[] args) {
		launch(args);
	}
}
