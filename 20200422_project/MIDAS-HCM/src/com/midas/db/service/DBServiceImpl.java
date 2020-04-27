package com.midas.db.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.midas.db.Employee;

public class DBServiceImpl implements DBService{
	final String DRIVER = "org.sqlite.JDBC";
	final String DB = "jdbc:sqlite:C:/�ڹ������/exam.db";
	Connection conn;

	public DBServiceImpl() {
		try {
			Class.forName(DRIVER);
			conn = DriverManager.getConnection(DB);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


	@Override
	public boolean MembershipProc(Employee emp) {
		//		String sql = "INSERT INTO Employee "+
		//				"(name, id, pw, gender, age, hobby) "+
		//				"VALUES (?,?,?,?,?,?);";
		//
		//		try {
		//			PreparedStatement pStmt = conn.prepareStatement(sql);
		//			pStmt.setString(1, Employee.getName());
		//			pStmt.setString(2, Employee.getId());
		//			pStmt.setString(3, Employee.getPw());
		//			pStmt.setInt(4, Employee.getGender());
		//			pStmt.setString(5, Employee.getAge());
		//			pStmt.setInt(6, Employee.getHobby());
		//
		//			pStmt.executeUpdate();
		//
		//			pStmt.close();
		//			conn.close();			
		//
		//		} catch (SQLException e) {
		//			// TODO Auto-generated catch block
		//			//e.printStackTrace();
		//			System.out.println("��Ͻ���");
		//			return false;
		//		}
		//		System.out.println("�����Ϸ�");
		return true;
	}

	@Override
	public int LoginProc(String id, String pw) {
		String sql = "SELECT count(*) " +
				"FROM Employees "+
				"where id=? "+
				"AND pw=?";

		int result = 0;
		try {
			PreparedStatement pStmt = conn.prepareStatement(sql);
			pStmt.setString(1, id);
			pStmt.setString(2, pw);

			ResultSet rs = pStmt.executeQuery();

			if(rs.next()) 
				result = rs.getInt("count(*)");



		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}



		return result;
	}



	@Override
	public List<Employee> getEmployeeList() {
		List<Employee> lstEmployee = new ArrayList<Employee>();
		String sql = "SELECT * " + 
				"FROM Member";

		try {
			Statement stmt = conn.createStatement();

			ResultSet rs = stmt.executeQuery(sql);

			while(rs.next()) {
				Employee employee = new Employee();

				employee.setnum(rs.getString("�����ȣ"));
				employee.setid(rs.getString("id"));
				employee.setpw(rs.getString("pw"));
				employee.setname(rs.getString("�̸�"));
				employee.setbirth(rs.getString("�������"));
				employee.setgender(rs.getString("�ֹι�ȣ���ڸ�"));
				employee.setcategory(rs.getString("�������"));
				employee.setsalay(rs.getString("����"));
				employee.setdepartment(rs.getString("�μ�"));
				employee.setposition(rs.getString("����"));
				employee.setplace(rs.getString("�ٹ���"));
				employee.setphone(rs.getString("��ȭ��ȣ"));
				employee.setjoin(rs.getString("�Ի�����"));
				employee.setemail(rs.getString("�̸���"));
				employee.seteducation(rs.getString("�����з�"));
				employee.setaddress(rs.getString("�ּ�"));
				employee.setimage(rs.getString("����url"));

				lstEmployee.add(employee);
			}

			stmt.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			//e.printStackTrace();
			return null;
		}
		return lstEmployee;
	}


	@Override
	public Employee getEmployee(String id) {
		Employee emp = new Employee();

		return emp;
	}


	@Override
	public void addEmployee(Employee emp) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public void deleteEmployee(String id) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public void editEmployee(String id) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public boolean hasId(String id) {
		// TODO Auto-generated method stub
		return false;
	}

}
