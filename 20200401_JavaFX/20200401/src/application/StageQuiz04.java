package application;


import java.awt.Dimension;
import java.awt.Toolkit;

import javafx.application.Application;
import javafx.scene.Scene;
import javafx.scene.layout.BorderPane;
import javafx.stage.Stage;

public class StageQuiz04 extends Application{

	private int frameWidth, frameHeight;
	private int screenWidth, screenHeight;
	private Stage stage;
//
//	public StageQuiz04(int frameWidth, int frameHeight,  Stage stage) {
//		super();
//		this.frameWidth = frameWidth;
//		this.frameHeight = frameHeight;
//		this.stage = stage;
//	}
//	StageQuiz04(){
//		this(0, 0, null);
//	}
//
//	private void setScreenSize() {
//		Toolkit tk = Toolkit.getDefaultToolkit();
//		Dimension screenSize = tk.getScreenSize();
//		this.screenWidth = screenSize.width;
//		this.screenHeight = screenSize.height;
//	}
//	public void showFrame() throws InterruptedException {
//		setScreenSize();
//		int posX, posY;
//
//		posX = (screenWidth / 2 - frameWidth / 2) / 10;
//		posY = (screenHeight / 2 - frameHeight / 2) / 10;
//
//		for(int i = 0 ; i < 10 ; ++i) {
//			stage.setX(posX);
//			stage.setY(posY);
//			stage.hide();
//			Thread.sleep(300 - (i * 10));
//			stage.show();
//		}
//	}





	@Override
	public void start(Stage primaryStage) throws Exception {
		double dWidth = 4.8;
		double dHeight = 2.7;

		BorderPane root = new BorderPane();
		Scene scene = new Scene(root , dWidth*5, dHeight*5);
		primaryStage.setScene(scene);
		primaryStage.setTitle("LALALAND");

		int x = 0, y = 0;
		primaryStage.setX(x);
		primaryStage.setY(y);
		primaryStage.show();

		Thread.sleep(500);


		for(int time = 0 ; time < 21; ++time) {
			Thread.sleep(1000 - x * 2);
			primaryStage.hide();

			x += 4.8 * time;
			y += 2.7 * time;
			primaryStage.setX(x);
			primaryStage.setY(y);
			primaryStage.setWidth(dWidth*5 + x);
			primaryStage.setHeight(dHeight*5 + y);
			primaryStage.show();
		}	
		Thread.sleep(1000);
		primaryStage.close();
	}




	public static void main(String[] args) {
		launch(args);
	}
}
