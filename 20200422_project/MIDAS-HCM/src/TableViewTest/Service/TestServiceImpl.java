package TableViewTest.Service;

import java.util.List;

import TableViewTest.People;
import TableViewTest.DAO.DatabaseService;
import TableViewTest.DAO.DatabaseServiceImpl;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.scene.Parent;
import javafx.scene.control.TableView;


public class TestServiceImpl implements TestService {

	@Override
	public void getTable(Parent form) {
		// TODO Auto-generated method stub
		DatabaseService dbServ = new DatabaseServiceImpl();
		List<People> lst;
		TableView<People> tableView = (TableView<People>)form.lookup("#tableView");
		
		dbServ.open("tableViewDBConn.db", true);
		lst = dbServ.getTable();
		ObservableList peopleList = FXCollections.observableArrayList();
		
//		for(People p : lst){
//			peopleList.add(p);
//		}
		
		peopleList.addAll(lst);
		
		tableView.setItems(peopleList);
	}

}
