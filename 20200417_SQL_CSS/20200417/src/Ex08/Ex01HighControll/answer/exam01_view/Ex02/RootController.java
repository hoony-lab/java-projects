package Ex08.Ex01HighControll.answer.exam01_view.Ex02;

import java.net.URL;
import java.util.ResourceBundle;

import javafx.application.Platform;
import javafx.beans.value.ChangeListener;
import javafx.beans.value.ObservableValue;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.ListView;
import javafx.scene.control.TableView;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;

public class RootController implements Initializable {
	@FXML private ListView<String> listView;
	@FXML private TableView<Phone> tableView;	
	@FXML private ImageView imageView;
	public void tmp(){
		System.out.println("tmp");
	}
	@Override
	public void initialize(URL location, ResourceBundle resources) {
		
		listView.getSelectionModel().selectedIndexProperty().addListener(new ChangeListener<Number>() {
			@Override
			public void changed(ObservableValue<? extends Number> observable, Number oldValue, Number newValue) {
				tableView.getSelectionModel().select(newValue.intValue());
				tableView.scrollTo(newValue.intValue());
			}
		});
		
		tableView.getSelectionModel().selectedItemProperty().addListener(new ChangeListener<Phone>() {
			@Override
			public void changed(ObservableValue<? extends Phone> observable, Phone oldValue, Phone newValue) {
				if(newValue!=null) {
					imageView.setImage(new Image(getClass().getResource("../images/" + newValue.getImage()).toString()));
				}
			}
		});
	}
	
	public void handleBtnOkAction(ActionEvent e) {
		String item = listView.getSelectionModel().getSelectedItem();
		System.out.println("ListView 스마트폰: " + item);
		
		Phone phone = tableView.getSelectionModel().getSelectedItem();
		System.out.println("TableView 스마트폰: " + phone.getSmartPhone());
		System.out.println("TableView 이미지: " + phone.getImage());
	}
	
	public void handleBtnCancelAction(ActionEvent e) {
		Platform.exit();
	}
}
