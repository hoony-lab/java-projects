package Ex07.ElevatorEx7.Service;

import java.util.Map;
import java.util.Set;

import javafx.event.ActionEvent;
import javafx.scene.Parent;
import javafx.scene.control.Button;
import javafx.scene.control.TextField;
import javafx.scene.layout.GridPane;

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

//	private void ButtonProc(ActionEvent e) {
//		Map<Integer, String> map;
//		IProcessButtonServiceImpl procBtnServ = new ProcessButtonService();
//
//		procBtnServ.checkButtonPresssed(e);
//		map = procBtnServ.getActiveButton();
//
//		Set<Integer> set = map.keySet();
//		for(Integer idx : set)){
//			System.out.println(map.get(idx));
//		}
//	}

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