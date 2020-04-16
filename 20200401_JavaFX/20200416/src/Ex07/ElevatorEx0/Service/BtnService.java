package Ex07.ElevatorEx0.Service;

import java.util.List;

import javafx.event.ActionEvent;

public interface BtnService {
	public String getTextField(ActionEvent e, String s);
	public void setTextField(ActionEvent e, String s, String txt);
	public int getIntfromField(String s);
	public List<String> printFloor(ActionEvent e);
}
