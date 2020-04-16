package Ex07.ElevatorEx6.Service;

import java.util.List;

import javafx.event.ActionEvent;
import javafx.scene.layout.GridPane;

public interface IBtnService {
	public List<String> getFloor(ActionEvent e);
	public void CreateBtn();
	public GridPane getBtnLayout(int sFloor, int eFloor);
}
