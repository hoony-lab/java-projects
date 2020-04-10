package signin;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;

public class SigninView extends Application{

	public static MyDB mydb;

	@Override
	public void init() throws Exception {
		super.init();
		mydb = new MyDB();
	}
	
	@Override
	public void start(Stage primaryStage) throws Exception {
		FXMLLoader loader = new FXMLLoader(getClass().getResource("signin.fxml"));
		Parent root = loader.load();
		Scene scene = new Scene(root);
		SigninController ctrler = loader.getController();
		ctrler.setPrimaryStage(primaryStage);
		
		primaryStage.setTitle("Signin");
		primaryStage.setScene(scene);
		primaryStage.show();
	}

	
	public static void main(String[] args) {
		launch(args);
	}

	
	
	
	
	
	
	
	public MyDB getmydb() {
		return mydb;
	}

	public void setmydb(MyDB mydb) {
		SigninView.mydb = mydb;
	}

}
