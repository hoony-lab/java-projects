package Ex07.ElevatorEx12;

import java.net.URL;
import java.util.ResourceBundle;

import Ex07.ElevatorEx12.Service.*;
import javafx.event.ActionEvent;
import javafx.fxml.Initializable;
import javafx.scene.Scene;
import javafx.scene.control.TextField;
import javafx.scene.layout.GridPane;
import javafx.stage.Stage;


public class Controller implements Initializable{
	IBtnService btnServ;
	@Override
	public void initialize(URL location, ResourceBundle resources) {
		btnServ = new BtnServiceImpl();
	}
	
	public void CreateBtn(ActionEvent e){
		/*
		 * 1. 고층 값 읽어 오기
		 * 2. 저층 값 읽어 오기
		 * 3. stage 생성
		 * 4. 버튼 생성(고층, 저층)
		 * 5. stage에 버튼 추가
		 */
		TextField sFloorTxt = btnServ.getField(e, "#startFloorTxtFld");
		TextField eFloorTxt = btnServ.getField(e, "#endFloorTxtFld");
		int sFloor = btnServ.getIntToField(sFloorTxt);
		int eFloor = btnServ.getIntToField(eFloorTxt);
		
		Stage btnStage = new Stage();

		GridPane gridpane = btnServ.getBtnLayout(sFloor, eFloor);
		
		btnStage.setScene(new Scene(gridpane));
		btnStage.show();
	}
}








