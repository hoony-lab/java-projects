package application;

import javafx.application.Application;
import javafx.scene.Scene;
import javafx.scene.layout.BorderPane;
import javafx.stage.Stage;

/*
* x�� ��� 0 2 1�� �Ȱ��� ���۵�.
* i�� 0, 1, 2�� ���  x�� 0, 2, 1�� ���������
* x = 3-i�� ���� ǥ���� �� ����.
* ���� �Ŀ� i�� �����ϸ� 3, 2, 1�� ������ �Ǹ�
* 0, 2, 1�� ������ �Ϸ��� 3���� ������ �������� ���ϸ� ��
* i�� ��� 0, 1, 2 �� �� 3, 4, 5�� ������ �Ǹ� 
* i ���� 3���� ������ �������� ǥ���ϸ� 0, 1, 2 �������� ������
* ����
* (3 - (i%3) ) %3���� �����ϸ� x�� ������ ������.
* y�� ���� ũ�� 0 2 1 �� �����̹Ƿ� 
* 0, 1, 2�� 0 3, 4, 5��2 6, 7, 8�� 1�� �Ǵ� ������
* ������ ���� ó���ϱ� ���� i/3�� �ϸ� �����ϰ� 0, 1, 2�� ���� ������ ��
* ����
*  (3 - (i/3) ) %3���� �����ϸ� y�� ������ ������.
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
