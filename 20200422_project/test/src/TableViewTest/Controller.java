package TableViewTest;

import java.net.URL;
import java.util.ResourceBundle;

import TableViewTest.Service.TestService;
import TableViewTest.Service.TestServiceImpl;
import javafx.fxml.Initializable;
import javafx.scene.Parent;

public class Controller implements Initializable{
	private Parent form;
	private TestService testServ;
	
	public void setForm(Parent form) {
		this.form = form;
	}
	public void getTable(){
		testServ.getTable(form);
	}
	@Override
	public void initialize(URL location, ResourceBundle resources) {
		// TODO Auto-generated method stub
		testServ = new TestServiceImpl();
	}

}
