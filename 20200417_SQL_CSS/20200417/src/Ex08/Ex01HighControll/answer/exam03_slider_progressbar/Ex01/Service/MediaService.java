package Ex08.Ex01HighControll.answer.exam03_slider_progressbar.Ex01.Service;

import javafx.scene.Parent;

public interface MediaService {
	public void start();
	public void stop();
	public void pause();
	public void setMedia(Parent form, String mediaName);
}
