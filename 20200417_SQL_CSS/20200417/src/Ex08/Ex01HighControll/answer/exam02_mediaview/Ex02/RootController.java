package Ex08.Ex01HighControll.answer.exam02_mediaview.Ex02;

import java.net.URL;
import java.util.ResourceBundle;

import Ex08.Ex01HighControll.answer.exam02_mediaview.Ex02.Service.*;
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
		
		/*//미디어 객체 생성
		Media media = new Media(getClass().getResource("media/video.m4v").toString());
		//Media media = new Media(getClass().getResource("media/audio.wav").toString());
		
		//미디어 플레이어 생성 및 미디어 뷰에 설정
		mediaPlayer = new MediaPlayer(media);
		mediaView.setMediaPlayer(mediaPlayer);
	
		//해당 상태가 되면 실행할 Runnable 설정
		mediaPlayer.setOnReady(new Runnable() {
			@Override
			public void run() {
				btnPlay.setDisable(false); btnPause.setDisable(true); btnStop.setDisable(true);
				if(mediaPlayer.isAutoPlay()) {mediaView.setVisible(false);}
			}
		});
		mediaPlayer.setOnPlaying(()->{
			btnPlay.setDisable(true); btnPause.setDisable(false); btnStop.setDisable(false);
		});
		mediaPlayer.setOnPaused(()->{
			btnPlay.setDisable(false); btnPause.setDisable(true); btnStop.setDisable(false);
		});
		mediaPlayer.setOnEndOfMedia(()->{
			endOfMedia = true;
			btnPlay.setDisable(false); btnPause.setDisable(true); btnStop.setDisable(true);
		});
		mediaPlayer.setOnStopped(()->{
			mediaPlayer.seek(mediaPlayer.getStartTime());
			btnPlay.setDisable(false); btnPause.setDisable(true); btnStop.setDisable(true);
		});*/
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
