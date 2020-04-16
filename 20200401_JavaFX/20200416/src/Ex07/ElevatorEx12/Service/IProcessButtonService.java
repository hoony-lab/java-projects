package Ex07.ElevatorEx12.Service;

import java.util.TreeMap;

import javafx.event.ActionEvent;

public interface IProcessButtonService {
	public void CheckButtonPressed(ActionEvent e);
	public TreeMap<Integer, String> getActiveButton();
}
