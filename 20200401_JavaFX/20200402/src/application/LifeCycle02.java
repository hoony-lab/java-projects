package application;

import javafx.application.Application;
import javafx.scene.Group;
import javafx.scene.Scene;
import javafx.scene.text.Font;
import javafx.scene.text.Text;
import javafx.stage.Stage;

public class LifeCycle02 extends Application{
	Text txt;
	Scene scene;
	
	public LifeCycle02 () {
		System.out.println(Thread.currentThread().getName() + " : Constructor()");
		txt = new Text(20, 70, "Infiscap World");
		txt.setFont(new Font(35));
		
	}

	public void init() throws Exception {
		System.out.println(Thread.currentThread().getName() + " : init()");
		scene = new Scene(new Group(txt), 400, 350);
	}
	
	@Override
	public void start(Stage primaryStage) throws Exception {
		System.out.println(Thread.currentThread().getName() + " : start()");
		primaryStage.setTitle("LifeCycle");
		primaryStage.setScene(scene);
		primaryStage.show();
	}
	
	public void stop() throws Exception {
		System.out.println(Thread.currentThread().getName() + " : stop()");
		super.stop();
	}
	
	public static void main(String[] args) {
		System.out.println(Thread.currentThread().getName() + " : main()");
		launch(args);		
	}
}
