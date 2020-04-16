package Ex07.ElevatorEx0.Service;

import Ex07.ElevatorEx0.Controller;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;

public class ICommonService implements CommonService{

	@Override
	public void showWindow(Stage s, String formPath, String title) {
		FXMLLoader loader = new FXMLLoader(getClass().getResource(formPath));
		Parent root = null;
		try {
			root = loader.load();
		} catch (Exception e) {
			// TODO: handle exception
		}
		Scene scene = new Scene(root);
		Controller ctrler = loader.getController();
		ctrler.setForm(root);

		s.setTitle(title);
		s.setScene(scene);
		s.show();
		
	}

	@Override
	public void showWindow(Stage s, String formPath) {
		showWindow(s, formPath, "");
	}

	@Override
	public void alert() {
		// TODO Auto-generated method stub
		
	}

}
