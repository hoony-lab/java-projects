package Ex07.ElevatorEx0.Service;

import javafx.scene.Parent;
import javafx.scene.control.TextField;

public class IEleService implements EleService{

	@Override
	public void blabla(Parent form) {
		TextField txtInFld =  (TextField)form.lookup("#inputTxtFld");
		TextField txtOutFld =  (TextField)form.lookup("#outputTxtFld");
		
		System.out.println(Integer.valueOf(txtInFld.getText()) * 10);
		txtOutFld.setText(String.valueOf(Integer.valueOf(txtInFld.getText()) * 10));
	}
	
}
