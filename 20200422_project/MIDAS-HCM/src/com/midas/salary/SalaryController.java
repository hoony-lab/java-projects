package com.midas.salary;

import java.net.URL;
import java.util.ResourceBundle;

import com.midas.Controller;
import com.midas.db.service.DBService;
import com.midas.salary.service.SalaryService;
import com.midas.salary.service.SalaryServiceImpl;
import com.midas.service.CommonService;
import com.midas.service.CommonServiceImpl;

import javafx.event.ActionEvent;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.stage.Stage;

public class SalaryController extends Controller implements Initializable{

	private Parent root;
	private CommonService comServ;
	private DBService dbServ;
	private SalaryService salServ;

	@Override
	public void setRoot(Parent root) {
		this.root = root;
	}

//	private Parent getScene(ActionEvent e) {
//		Parent btnObj = (Parent)e.getSource();
//		return btnObj.getScene().getRoot();
//	}
//
	
//	private Parent getScene(Event e) {
//		Parent btnObj = (Parent)e.getSource();
//		return btnObj.getScene().getRoot();
//	}

	@Override
	public void initialize(URL location, ResourceBundle resources) {
		// TODO Auto-generated method stub
		comServ = new CommonServiceImpl();
		//dbServ = new DBServiceImpl();
		salServ = new SalaryServiceImpl();
	}


	public void ShowTableProc(ActionEvent e) {
		
		/*
		
		List<Employee> empList = dbServ.getEmployeeList();
		
		TableView tableView = salServ.AddDataToTableView(empList);	
			
		comServ.ShowTableView(tableView);
		
		
		*/
	}

	public void ShowReportProc(ActionEvent e) {
		Stage s = new Stage();
		comServ.showWindow(s, "/com/midas/salary/SalaryMgmt.fxml", root);
		/*
		 
		List<Employee> empList = dbServ.getEmployeeList();
		 
		comServ.ShowLineChart(salServ.AddDataToLineChart(empList));
		 
		*/

	}

	public void ShowStmtProc(ActionEvent e) {

		/*
		comServ.getTextFieldInfo(root, "#stmtTf");
		TextField id = comServ.getTextFieldInfo(root, "#idTf");
		Employee emp = dbServ.getEmployee(id.getText());
		
		emp.getStmtProc();
		


		*/
	}





}
