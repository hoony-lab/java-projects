package Ex07.ElevatorEx10.Service;

import javafx.event.ActionEvent;
import javafx.geometry.Insets;
import javafx.scene.Parent;
import javafx.scene.control.Button;
import javafx.scene.control.TextField;
import javafx.scene.control.ToggleButton;
import javafx.scene.layout.GridPane;
import javafx.scene.text.Font;

public class BtnServiceImpl implements IBtnService {
	@Override
	public TextField getField(ActionEvent e, String id) {
		Parent form = ((Parent)e.getSource()).getScene().getRoot();
		return (TextField)form.lookup(id);
	}
	@Override
	public int getIntToField(TextField txt) {
		return Integer.parseInt( txt.getText() );
	}
	private String setFloor(int floor) {
		return floor<0?"ÁöÇÏ "+(floor*-1)+"Ãþ":floor+"Ãþ";
	}
	@Override
	public GridPane getBtnLayout(int sFloor, int eFloor) {
		GridPane gridpane = new GridPane();
		int posIdx=0;
		gridpane.setPadding(new Insets(20));
		gridpane.setHgap(10);
		gridpane.setVgap(10);
		
		for(int i=eFloor;i>=sFloor;i--) {
			if(i==0)continue;
			ToggleButton btn = new ToggleButton(setFloor(i));
			btn.setFont(new Font(20));
			btn.setPrefSize(80, 70);
			gridpane.add(btn, posIdx/6, posIdx%6);
			posIdx++;
		}
		return gridpane;
	}

}











