package application;

import javafx.application.Application;
import javafx.stage.Stage;

public class LifeCycle01 extends Application{

	public LifeCycle01 () {
		System.out.println(Thread.currentThread().getName() + " : Constructor()");
	}

	public void init() throws Exception {
		super.init();
		System.out.println(Thread.currentThread().getName() + " : init()");
	}
	@Override
	public void start(Stage primaryStage) throws Exception {
		System.out.println(Thread.currentThread().getName() + " : start()");
		primaryStage.show();
	}
	public void stop() throws Exception {
		super.stop();
		System.out.println(Thread.currentThread().getName() + " : stop()");
	}
	public static void main(String[] args) {
		System.out.println(Thread.currentThread().getName() + " : main()");
		launch(args);		
	}
}
