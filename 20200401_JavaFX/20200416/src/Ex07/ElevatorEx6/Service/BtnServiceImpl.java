package Ex07.ElevatorEx6.Service;

import java.util.ArrayList;
import java.util.List;

import javafx.event.ActionEvent;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.TextField;
import javafx.scene.layout.GridPane;
import javafx.stage.Stage;

public class BtnServiceImpl implements IBtnService {

	private TextField getField(ActionEvent e, String id) {
		Parent btn = (Parent)e.getSource();
		Parent form = btn.getScene().getRoot();
		
		return (TextField)form.lookup(id);
	}
	private int getIntToField(TextField txt) {
		String strNum = txt.getText();
		int num = Integer.parseInt(strNum);
		
		return num;
		//return Integer.parseInt( txt.getText() );
	}
	private String setFloor(int floor) {
		return floor<0?"雖ж "+(floor*-1)+"類":floor+"類";
	}
	@Override
	public List<String> getFloor(ActionEvent e) {
		int startFloor = getIntToField(getField(e, "#startFloorTxtFld"));
		int endFloor = getIntToField(getField(e, "#endFloorTxtFld"));
		List<String> lstFloor = new ArrayList<String>();
		
		for(int i=startFloor;i<=endFloor;i++) {
			if(i==0)	continue;
			lstFloor.add(setFloor(i));
		}
		
		return lstFloor;
	}
	@Override
	public void CreateBtn() {
		Stage btnStage = new Stage();
		
		Button btn1 = new Button("1類");
		Button btn2 = new Button("2類");
		GridPane gridpane = new GridPane();
		gridpane.add(btn1, 0, 0);
		gridpane.add(btn2, 0, 1);
		
		btnStage.setScene(new Scene(gridpane));
		btnStage.show();
	}
	@Override
	public GridPane getBtnLayout(int sFloor, int eFloor) {
		GridPane gridpane = new GridPane();
		
		for(int i=sFloor;i<=eFloor;i++) {
			if(i==0)continue;
			Button btn = new Button(setFloor(i));
			gridpane.add(btn, 0, i);
		}
		return gridpane;
	}

}











