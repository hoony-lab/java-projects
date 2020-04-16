package Ex07.ElevatorEx12.Service;

import java.io.IOException;

import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;

public class CommonServiceImpl implements ICommonService {

	@Override
	public void showWindow(Stage s, String formPath, String title) {
		FXMLLoader loader = new FXMLLoader(getClass().getResource(formPath));
		Parent root=null;
		try {
			root = loader.load();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Scene scene = new Scene(root);
		//Controller ctrler = loader.getController();
		//ctrler.setForm(root);
		
		s.setTitle(title);
		s.setScene(scene);
		s.show();
	}

	@Override
	public void showWindow(Stage s, String formPath) {
		showWindow(s, formPath, "");
	}

}
