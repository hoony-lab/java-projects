package application;

import java.io.IOException;

import javafx.application.Application;
import javafx.stage.Stage;
import service.CommonService;
import service.CommonServiceImpl;

public class LoginView extends Application{

	public static void main(String[] args) {
		launch(args);
	}

	@Override
	public void start(Stage primaryStage) throws IOException {
		CommonService commonServ = new CommonServiceImpl();
		commonServ.WindowShow(primaryStage, "../application/login.fxml");


		//		FXMLLoader loader = new FXMLLoader(getClass().getResource("login.fxml"));
		//		Parent root = loader.load();
		//		Scene scene = new Scene(root);
		//
		//		LoginController ctrler = loader.getController();
		//		ctrler.setRoot(root);
		//
		//		primaryStage.setTitle("Login");
		//		primaryStage.setScene(scene);
		//		primaryStage.show();
	}

}
