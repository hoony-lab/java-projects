package Ex07.Service;

import javafx.event.ActionEvent;
import javafx.stage.Stage;

public interface CommonService {
	public void WindowClose(ActionEvent event);
	public void showWindow(Stage s, String formPath);
}
