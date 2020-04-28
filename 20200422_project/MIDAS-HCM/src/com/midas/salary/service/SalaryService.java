package com.midas.salary.service;

import java.util.List;

import com.midas.db.Employee;
import com.midas.db.SalaryResult;

import javafx.scene.Scene;
import javafx.scene.chart.LineChart;

public interface SalaryService {
	public String c(double n);
	public LineChart AddDataToLineChart(List<Employee> empList);
	public void ShowSalaryStmt(Scene scene, String id, SalaryResult salaryResult);
}
