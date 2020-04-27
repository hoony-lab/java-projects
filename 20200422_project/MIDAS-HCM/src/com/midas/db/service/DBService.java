package com.midas.db.service;

import java.util.List;

import com.midas.db.Employee;

public interface DBService {
	//회원 가입 시 개인 정보를 DB에 저장
	public boolean MembershipProc(Employee emp);
	//ID와 PW로 개인 인증
	public int LoginProc(String id, String pw);

	public List<Employee> getEmployeeList();
	public Employee getEmployee(String id);
	public void addEmployee(Employee emp);
	public void deleteEmployee(String id);
	public void editEmployee(String id);
	public boolean hasId(String id);
}
