package Ex07.ElevatorEx6;

import java.net.URL;
import java.util.ResourceBundle;

import Ex07.ElevatorEx6.Service.*;
import javafx.event.ActionEvent;
import javafx.fxml.Initializable;


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
		btnServ.CreateBtn();
	}
}








