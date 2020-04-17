package Ex08.Ex01HighControll.answer.exam01_view.Ex04.Service;

import Ex08.Ex01HighControll.answer.exam01_view.Ex04.Phone;
import javafx.event.Event;
import javafx.scene.Parent;
import javafx.scene.control.ListView;
import javafx.scene.control.MultipleSelectionModel;
import javafx.scene.control.TableView;

public class ViewServiceImpl implements ViewService{

	@SuppressWarnings("unchecked")
	@Override
	public void SelectTableView(Parent form, Event e) {
		// TODO Auto-generated method stub
		ListView<String> lstView = (ListView<String>)e.getSource();
		TableView<Phone> tblView = (TableView<Phone>)form.lookup("#tableView");
		MultipleSelectionModel<String> multiSelMdl = lstView.getSelectionModel();
		tblView.getSelectionModel().select(multiSelMdl.getSelectedIndex());
		tblView.scrollTo(multiSelMdl.getSelectedIndex());
		System.out.println(multiSelMdl.getSelectedItem());
	}

}
