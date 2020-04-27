package com.midas.db.service;

import java.util.List;

import com.midas.db.Employee;

public interface DBService {
	//ȸ�� ���� �� ���� ������ DB�� ����
	public boolean MembershipProc(Employee emp);
	//ID�� PW�� ���� ����
	public int LoginProc(String id, String pw);

	public List<Employee> getEmployeeList();
	public Employee getEmployee(String id);
	public void addEmployee(Employee emp);
	public void deleteEmployee(String id);
	public void editEmployee(String id);
	public boolean hasId(String id);
}
