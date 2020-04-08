package application;

import javafx.application.Application;
import javafx.geometry.Insets;
import javafx.scene.Scene;
import javafx.scene.control.TextField;
import javafx.scene.layout.HBox;
import javafx.stage.Stage;

public class TextField01 extends Application{
   @Override
   public void start(Stage primaryStage) throws Exception {
      HBox hbox = new HBox(10);
      hbox.setPadding(new Insets(10));
      
      TextField tf = new TextField("입력 받는 부분");
      tf.setText("입력");
      
      System.out.println( tf.getText() );
      hbox.getChildren().add(tf);
      hbox.setPrefSize(300, 200);
      
      primaryStage.setScene(new Scene(hbox));
      primaryStage.show();
   }
   public static void main(String[] args) {
      launch(args);
   }

}








