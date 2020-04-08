package application;



import java.awt.Dimension;
import java.awt.Toolkit;

import javafx.application.Application;
import javafx.scene.Scene;
import javafx.scene.layout.BorderPane;
import javafx.stage.Stage;


public class Stage03 extends Application{

	@Override
	public void start(Stage primaryStage) throws Exception {
		BorderPane root = new BorderPane();
		Scene scene = new Scene(root, 480, 240);
		
		primaryStage.setTitle("First windowsssss");
		primaryStage.setScene(scene);
		primaryStage.setX(30);
		primaryStage.show();
		
		Thread.sleep(1000);
		System.out.println("zdadsdsdsfsdfsd");

//		primaryStage.centerOnScreen();
		
		Toolkit toolkit = Toolkit.getDefaultToolkit();
		Dimension screenSize = toolkit.getScreenSize();
		System.out.println(toolkit.getScreenSize());
		System.out.println(toolkit.getScreenSize().width);
		System.out.println(toolkit.getScreenSize().height);
		
		
		primaryStage.setX(screenSize.width / 2 - 240);
		primaryStage.setY(screenSize.height / 2 - 120);
		primaryStage.show();

		Thread.sleep(2000);
		System.out.println("zdfsdfsd");
		//primaryStage.close();
	}
	public static void main(String[] args) {
		launch(args);
	}	
}
