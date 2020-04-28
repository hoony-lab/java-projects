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
		result += "\t\t\t\t\t\t\t�޿�����";
		result += "\n\n\n\n\n";
		result += "\n\t\t\t���\t\t\t:\t" + salaryResult.getNum();
		result += "\n\t\t\t����\t\t\t:\t" + salaryResult.getYear();
		result += "\n\t\t\t��\t\t\t:\t" + salaryResult.getMonth();
		result += "\n\n";
		result += "\n\t\t\t���� �Ѿ�\t\t:\t" + String.valueOf(salary) + "��";;
		result += "\n\n";
		result += "\n\t\t\t���� ����\t\t:\t" + c(salary * 0.045) + "��";
		result += "\n\t\t\t�ǰ� ����\t\t:\t" + c(salary * 0.0335) + "��";
		result += "\n\t\t\t�Ǿ� �޿�\t\t:\t" + c(salary * 0.008) + "��";
		result += "\n\t\t\t�ҵ漼\t\t:\t" + c(salary * 0.0252) + "��";
		result += "\n\t\t\t���� �ҵ漼\t:\t" + c(salary * 0.00252) + "��";
		result += "\n\t\t\t���� ����\t\t:\t" + "���� ȸ�� �δ�";
		result += "\n\n";
		result += "\n\t\t\t���� �Ѿ�\t\t:\t" + c(salary * (0.045 + 0.0335 + 0.008 + 0.0252 + 0.00252)) + "��";
		result += "\n\n";
		result += "\n\t\t\t�����޾�\t\t:\t" + c(salary - (salary * (0.045 + 0.0335 + 0.008 + 0.0252 + 0.00252))) + "��";
		result += "\n\n\n\n\n";
		result += "\t\t\t" + salaryResult.getMonth() + "�� �Ѵ� �� ��� �����̽��ϴ� !";
		
		tf.setText(result);
	}
}
