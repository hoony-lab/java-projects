package Ex07.ElevatorEx7.Service;

import javafx.event.ActionEvent;
import javafx.scene.control.TextField;
import javafx.scene.layout.GridPane;

public interface IBtnService {
	//Ãß°¡
	public TextField getField(ActionEvent e, String id);
	public int getIntToField(TextField txt);
	
	/*
	 * public List<String> getFloor(ActionEvent e); public void CreateBtn();
	 */
	public GridPane getBtnLayout(int sFloor, int eFloor);
}
