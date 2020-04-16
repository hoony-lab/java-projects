package Ex07.ElevatorEx12.Service;

import java.util.Map;
import java.util.TreeMap;

import javafx.event.ActionEvent;
import javafx.scene.control.ToggleButton;

public class ProcessButtonServiceImpl implements IProcessButtonService {
	Map<Integer, String> activeBtnMap;
	public ProcessButtonServiceImpl() {
		activeBtnMap = new TreeMap<Integer, String>();
	}
	@Override
	public void CheckButtonPressed(ActionEvent e) {
		ToggleButton btn = (ToggleButton)e.getSource();
		
		if(btn.isSelected())
			activeBtnMap.put(Integer.valueOf(btn.getId()), btn.getText());
		else
			activeBtnMap.remove(Integer.valueOf(btn.getId()));
	}

	@Override
	public TreeMap<Integer, String> getActiveButton() {	
		return (TreeMap<Integer, String>)activeBtnMap;
	}

}
