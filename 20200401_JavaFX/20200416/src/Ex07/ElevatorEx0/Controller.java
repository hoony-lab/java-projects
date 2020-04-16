package Ex07.ElevatorEx0;

import java.net.URL;
import java.util.ResourceBundle;

import Ex07.ElevatorEx0.Service.BtnService;
import Ex07.ElevatorEx0.Service.EleService;
import Ex07.ElevatorEx0.Service.IBtnService;
import Ex07.ElevatorEx0.Service.IEleService;
import javafx.event.ActionEvent;
import javafx.fxml.Initializable;
import javafx.scene.Parent;

public class Controller implements Initializable{
	
	private Parent form;
	private EleService eleServ;
	private BtnService btnServ;
	
	public void setForm(Parent form) {
		this.form = form;
	}

	@Override
	public void initialize(URL location, ResourceBundle resources) {
		eleServ = new IEleService();
		btnServ = new IBtnService();
	}

	public void CreateBtn(ActionEvent e){
//		String highS = "#highTxtFld";
//		String high = btnServ.getTextField(e, highS);
//		
//		String lowS = "#lowTxtFld";
//		String low = btnServ.getTextField(e, lowS);
//		
////		for (int i = Integer.valueOf(low); i <= Integer.valueOf(high); i++) 
////			System.out.println(i);
		
		
		btnServ.printFloor(e);
	}
	

}
