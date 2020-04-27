package com.midas.salary.service;

import java.util.Calendar;
import java.util.List;

import com.midas.db.Employee;

import javafx.scene.chart.LineChart;
import javafx.scene.control.TableView;

public class SalaryServiceImpl implements SalaryService{

	@Override
	public TableView AddDataToTableView(List<Employee> empList) {

		TableView tableView = new TableView();
		
		//for(Employee emp : empList) {
		// insert into TableView
		// emp.getId();
		// emp.getName(); ...
	//}
		
		
//		ObservableList tableList = FXCollections.observableArrayList();
//
//		for(Employee e : employeelst) {
//			tableList.add(new Employee(e.getnum(), e.getid(), e.getpw(), e.getname(), e.getbirth(), e.getgender(), e.getcategory(), e.getsalay(), e.getdepartment(), e.getposition(), e.getplace(), e.getphone(), e.getjoin(), e.getemail(), e.geteducation(), e.getaddress(), e.getimage()));
//
//			//System.out.println(e.getnum() + e.getid() + e.getpw() + e.getname() + e.getbirth() + e.getgender() + e.getcategory() + e.getsalay() + e.getdepartment() + e.getposition() + e.getplace() + e.getphone() + e.getjoin() + e.getemail() + e.geteducation() + e.getadrress() + e.getimage());
//		}
//
//		numColumn.setCellValueFactory(cellData -> cellData.getValue().num());
//		numColumn.setStyle("-fx-alignment: CENTER;");
//
//		nameColumn.setCellValueFactory(cellData -> cellData.getValue().name());
//		nameColumn.setStyle("-fx-alignment: CENTER;");
//
//		departmentColumn.setCellValueFactory(cellData -> cellData.getValue().department());
//		departmentColumn.setStyle("-fx-alignment: CENTER;");
//
//		positionColumn.setCellValueFactory(cellData -> cellData.getValue().position());
//		positionColumn.setStyle("-fx-alignment: CENTER;");
//
//		placeColumn.setCellValueFactory(cellData -> cellData.getValue().place());
//		placeColumn.setStyle("-fx-alignment: CENTER;");
//
//		categoryColumn.setCellValueFactory(cellData -> cellData.getValue().category());
//		categoryColumn.setStyle("-fx-alignment: CENTER;");
//
//		joinColumn.setCellValueFactory(cellData -> cellData.getValue().join());
//		joinColumn.setStyle("-fx-alignment: CENTER;");
//
//		phoneColumn.setCellValueFactory(cellData -> cellData.getValue().phone());
//		phoneColumn.setStyle("-fx-alignment: CENTER;");
//
//		emailColumn.setCellValueFactory(cellData -> cellData.getValue().email());
//		emailColumn.setStyle("-fx-alignment: CENTER;");
//
//		educationColumn.setCellValueFactory(cellData -> cellData.getValue().education());
//		educationColumn.setStyle("-fx-alignment: CENTER;");
//
//		employee_table.setItems(tableList);
//		 
		return tableView;		
		 
		
	}

	@Override
	public LineChart AddDataToLineChart(List<Employee> empList) {
		// TODO Auto-generated method stub
		return null;
	}

}
