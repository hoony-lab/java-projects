package com.midas.salary.service;

import java.util.List;

import com.midas.db.Employee;
import com.midas.db.SalaryResult;

import javafx.scene.Scene;
import javafx.scene.chart.LineChart;
import javafx.scene.control.TextArea;

public class SalaryServiceImpl implements SalaryService{

	public String c(double n) {
		return String.valueOf(Math.round(n));
	}
	
	@Override
	public LineChart AddDataToLineChart(List<Employee> empList) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void ShowSalaryStmt(Scene scene, String id, SalaryResult salaryResult) {
		TextArea tf = (TextArea)scene.lookup(id);
		double salary = (Integer.valueOf(salaryResult.getSalary()) * 100000) / 12;
		
		String result = "";
		result += "\n\n";
		result += "\t\t\t\t\t\t\t급여명세서";
		result += "\n\n\n\n\n";
		result += "\n\t\t\t사번\t\t\t:\t" + salaryResult.getNum();
		result += "\n\t\t\t연도\t\t\t:\t" + salaryResult.getYear();
		result += "\n\t\t\t월\t\t\t:\t" + salaryResult.getMonth();
		result += "\n\n";
		result += "\n\t\t\t지급 총액\t\t:\t" + String.valueOf(salary) + "원";;
		result += "\n\n";
		result += "\n\t\t\t국민 연금\t\t:\t" + c(salary * 0.045) + "원";
		result += "\n\t\t\t건강 보험\t\t:\t" + c(salary * 0.0335) + "원";
		result += "\n\t\t\t실업 급여\t\t:\t" + c(salary * 0.008) + "원";
		result += "\n\t\t\t소득세\t\t:\t" + c(salary * 0.0252) + "원";
		result += "\n\t\t\t지방 소득세\t:\t" + c(salary * 0.00252) + "원";
		result += "\n\t\t\t산재 보험\t\t:\t" + "전액 회사 부담";
		result += "\n\n";
		result += "\n\t\t\t공제 총액\t\t:\t" + c(salary * (0.045 + 0.0335 + 0.008 + 0.0252 + 0.00252)) + "원";
		result += "\n\n";
		result += "\n\t\t\t실지급액\t\t:\t" + c(salary - (salary * (0.045 + 0.0335 + 0.008 + 0.0252 + 0.00252))) + "원";
		result += "\n\n\n\n\n";
		result += "\t\t\t" + salaryResult.getMonth() + "월 한달 간 고생 많으셨습니다 !";
		
		tf.setText(result);
	}
}
