package com.midas.salary.service;

import java.util.List;

import com.midas.db.Employee;

import javafx.scene.chart.LineChart;
import javafx.scene.control.TableView;

public interface SalaryService {
	public TableView AddDataToTableView(List<Employee> empList);
	public LineChart AddDataToLineChart(List<Employee> empList);
}
