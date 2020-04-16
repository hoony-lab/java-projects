package Ex07.ElevatorEx0.Service;

import java.util.ArrayList;
import java.util.List;

import javafx.event.ActionEvent;
import javafx.scene.Parent;
import javafx.scene.control.TextField;

public class IBtnService implements BtnService {

	private TextField getField(ActionEvent e, String s) {
		Parent btn = (Parent)e.getSource();
		Parent form = btn.getScene().getRoot();
		
		return (TextField) form.lookup(s);
	}
	
	@Override
	public String getTextField(ActionEvent e, String s) {
		return getField(e, s).getText();
	}

	@Override
	public void setTextField(ActionEvent e, String s, String txt) {
		getField(e, s).setText(txt);
	}

	@Override
	public int getIntfromField(String s) {
		
		return 0;
	}
	
	@Override
	public List<String> printFloor(ActionEvent e) {
		List<String> lst = new ArrayList<String>();
		String highS = "#highTxtFld";
		String lowS = "#lowTxtFld";
		
		int high = Integer.valueOf(getTextField(e, highS));
		int low = Integer.valueOf(getTextField(e, lowS));
		
		for(int i = low; i <= high; ++i) {
			if(i == 0) continue;
			
			lst.add(String.valueOf(i));
			System.out.println(i);
		}
		
		return lst;
	}


}
