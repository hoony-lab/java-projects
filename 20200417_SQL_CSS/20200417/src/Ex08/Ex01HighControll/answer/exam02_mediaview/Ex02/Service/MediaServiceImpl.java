package Ex08.Ex01HighControll.answer.exam02_mediaview.Ex02.Service;

import javafx.fxml.FXML;
import javafx.scene.Parent;
import javafx.scene.control.Button;
import javafx.scene.image.ImageView;
import javafx.scene.media.Media;
import javafx.scene.media.MediaPlayer;
import javafx.scene.media.MediaView;

public class MediaServiceImpl implements MediaService{
	private MediaPlayer mediaPlayer;
	private MediaView mediaView;
	private Button btnPlay;
	private Button btnPause;
	private Button btnStop;
	private boolean endOfMedia;
	
	private void setControll(Parent form){
		mediaView = (MediaView)form.lookup("#mediaView");
		btnPlay = (Button)form.lookup("#btnPlay");
		btnPause = (Button)form.lookup("#btnPause");
		btnStop = (Button)form.lookup("#btnStop");
	}
	@Override
	public void setMedia(Parent form, String mediaName) {
		Media media = new Media(getClass().getResource(mediaName).toString());
		
		setControll(form);
		mediaPlayer = new MediaPlayer(media);
		
		mediaView.setMediaPlayer(mediaPlayer);
		
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
		});
	}

	@Override
	public void start() {
		// TODO Auto-generated method stub
		/*if(endOfMedia) { 
			mediaPlayer.stop(); 
			mediaPlayer.seek(mediaPlayer.getStartTime());
		}*/
		mediaPlayer.play();
		endOfMedia = false;
	}
	@Override
	public void pause() {
		mediaPlayer.pause();
	}
	@Override
	public void stop() {
		// TODO Auto-generated method stub
		mediaPlayer.stop();
	}

}
