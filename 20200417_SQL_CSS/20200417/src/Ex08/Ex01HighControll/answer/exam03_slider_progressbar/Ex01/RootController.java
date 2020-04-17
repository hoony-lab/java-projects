package Ex08.Ex01HighControll.answer.exam03_slider_progressbar.Ex01;

import java.net.URL;
import java.util.ResourceBundle;

import Ex08.Ex01HighControll.answer.exam03_slider_progressbar.Ex01.Service.*;
import javafx.event.ActionEvent;
import javafx.fxml.Initializable;
import javafx.scene.Parent;

public class RootController implements Initializable {
	MediaService mediaServ;
	Parent form;
	
	public void setForm(Parent form) {
		this.form = form;
		mediaServ.setMedia(form, "../../media/video.m4v");
	}
	@Override
	public void initialize(URL location, ResourceBundle resources) {
		mediaServ = new MediaServiceImpl();
	}
	public void play(ActionEvent event){
		mediaServ.start();
	}
	public void pause(){
		mediaServ.pause();
	}
	public void stop(){
		mediaServ.stop();
	}
}
