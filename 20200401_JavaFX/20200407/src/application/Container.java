package application;

import javafx.scene.layout.HBox;
import javafx.scene.layout.Pane;
import javafx.scene.layout.VBox;

public class Container {
	public HBox getHbox() {
		HBox hb = new HBox();
		return hb;
	}
	public VBox getVbox() {
		VBox vb = new VBox();
		return vb;
	}

	public Pane getPane(int prefWidth, int prefHeight){
		Pane pane = new Pane();
		pane.setPrefSize(prefWidth, prefHeight);
		pane.setPrefWidth(prefWidth);
		pane.setPrefHeight(prefHeight);
		return pane;
	}
}
