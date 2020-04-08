package application;

import javafx.application.Application;
import javafx.scene.Scene;
import javafx.scene.layout.BorderPane;
import javafx.stage.Stage;

/*
* x의 경우 0 2 1로 똑같이 동작됨.
* i가 0, 1, 2일 경우  x는 0, 2, 1로 변경됨으로
* x = 3-i와 같이 표현할 수 있음.
* 위의 식에 i를 대입하면 3, 2, 1로 나오게 되며
* 0, 2, 1로 나오게 하려면 3으로 나누어 나머지를 구하면 됨
* i의 경우 0, 1, 2 이 후 3, 4, 5가 나오게 되며 
* i 역시 3으로 나누어 나머지를 표현하면 0, 1, 2 패턴으로 고정됨
* 따라서
* (3 - (i%3) ) %3으로 연산하면 x의 패턴이 유지됨.
* y의 경우는 크게 0 2 1 의 패턴이므로 
* 0, 1, 2는 0 3, 4, 5는2 6, 7, 8은 1이 되는 것으로
* 동일한 값을 처리하기 위해 i/3을 하면 일정하게 0, 1, 2의 값이 나오게 됨
* 따라서
*  (3 - (i/3) ) %3으로 연산하면 y의 패턴이 유지됨.
*/
public class StageQuiz05 extends Application{
	public static void main(String[] args) {
		launch(args);
	}
	@Override
	public void start(Stage primaryStage) throws Exception {
		BorderPane root = new BorderPane();

		int frameWidth = 480;
		int frameHeight = 270;
		int screenWidth = 1920;
		int screenHeight = 1080;
		Scene scene = new Scene(root, frameWidth, frameHeight);
		primaryStage.setScene(scene);


		int posX = 0;
		int posY = 0;
//		int targetX = screenWidth - frameWidth;
//		for (int y = 0; y < 3; y++) {
//			posX = 0;	posY = 0;
//			posY += screenHeight / 3 * y;
//			while(posX <= targetX) {
//				posX += 10;
//				primaryStage.setX(posX);
//				primaryStage.setY(posY);
//				primaryStage.show();
//				Thread.sleep(10);
//				primaryStage.hide();
//			}
//			
//		}


		Thread.sleep(1000);

		posX = 0;
		posY = 0;
		
		for (int y = 0; y < 3; y++) {
			posX = 0;
			posY = (screenHeight / 3) * y;
			primaryStage.setY(posY);
			
			primaryStage.setX(posX);
			primaryStage.show();
			Thread.sleep(500);
			primaryStage.hide();
			
			primaryStage.setY(posY);
			primaryStage.setX(screenWidth / 2 - frameWidth / 2);
			primaryStage.show();
			Thread.sleep(500);
			primaryStage.hide();
			
			primaryStage.setY(posY);
			primaryStage.setX(screenWidth - frameWidth);
			primaryStage.show();
			Thread.sleep(500);
			primaryStage.hide();
		}		
		


		

		primaryStage.close();
	}
}
