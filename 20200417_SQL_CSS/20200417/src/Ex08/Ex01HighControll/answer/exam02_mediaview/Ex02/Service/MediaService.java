package Ex08.Ex01HighControll.answer.exam02_mediaview.Ex02.Service;

import javafx.scene.Parent;

public interface MediaService {
	public void start();
	public void stop();
	public void pause();
	public void setMedia(Parent form, String mediaName);
}
