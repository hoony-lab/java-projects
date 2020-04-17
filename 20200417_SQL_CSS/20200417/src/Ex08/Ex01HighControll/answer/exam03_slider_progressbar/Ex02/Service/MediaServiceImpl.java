package Ex08.Ex01HighControll.answer.exam03_slider_progressbar.Ex02.Service;

import javafx.beans.value.ChangeListener;
import javafx.beans.value.ObservableValue;
import javafx.event.Event;
import javafx.fxml.FXML;
import javafx.scene.Parent;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.ProgressBar;
import javafx.scene.control.ProgressIndicator;
import javafx.scene.control.Slider;
import javafx.scene.media.Media;
import javafx.scene.media.MediaPlayer;
import javafx.scene.media.MediaView;
import javafx.util.Duration;

public class MediaServiceImpl implements MediaService{
	private MediaPlayer mediaPlayer;
	private MediaView mediaView;
	private Button btnPlay;
	private Button btnPause;
	private Button btnStop;
	private Label labelTime;	
	private Slider sliderVolume;
	private ProgressBar progressBar;
	private ProgressIndicator progressIndicator;
	
	private void setControll(Parent form){
		mediaView = (MediaView)form.lookup("#mediaView");
		btnPlay = (Button)form.lookup("#btnPlay");
		btnPause = (Button)form.lookup("#btnPause");
		btnStop = (Button)form.lookup("#btnStop");

		labelTime = (Label)form.lookup("#labelTime");
		sliderVolume = (Slider)form.lookup("#sliderVolume");
		progressBar = (ProgressBar)form.lookup("#progressBar");
		progressIndicator = (ProgressIndicator)form.lookup("#progressIndicator");
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
				mediaPlayer.currentTimeProperty().addListener(new ChangeListener<Duration>() {
					@Override
					public void changed(ObservableValue<? extends Duration> observable, Duration oldValue, Duration newValue) {
						double progress = mediaPlayer.getCurrentTime().toSeconds() / mediaPlayer.getTotalDuration().toSeconds();
						progressBar.setProgress(progress);
						progressIndicator.setProgress(progress);
						labelTime.setText(
							(int)mediaPlayer.getCurrentTime().toSeconds()+"/"+
							(int)mediaPlayer.getTotalDuration().toSeconds()+" sec");	
					}
				});

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
			progressBar.setProgress(1.0);
			progressIndicator.setProgress(1.0);	
			btnPlay.setDisable(false); btnPause.setDisable(true); btnStop.setDisable(true);
		});
		mediaPlayer.setOnStopped(()->{
			mediaPlayer.seek(mediaPlayer.getStartTime());
			btnPlay.setDisable(false); btnPause.setDisable(true); btnStop.setDisable(true);
		});
		sliderVolume.setValue(50.0);
	}

	@Override
	public void start() {
		mediaPlayer.play();
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
	@Override
	public void volumnControll() {
		mediaPlayer.setVolume(sliderVolume.getValue() / 100.0);
	}

}
