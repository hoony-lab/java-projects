package Ex07.ElevatorEx0;

import java.io.IOException;

import Ex07.ElevatorEx0.Service.CommonService;
import Ex07.ElevatorEx0.Service.ICommonService;
import javafx.application.Application;
import javafx.stage.Stage;

public class MainView extends Application {

	private CommonService comServ;
	
	@Override
	public void start(Stage primaryStage) throws IOException {
		comServ = new ICommonService();
		comServ.showWindow(primaryStage, "../CreatrElevatorForm.fxml", "CreatrElevatorForm.fxml");
	}

	public static void main(String[] args) {
		launch(args);
	}
}
