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
	final String DB = "jdbc:sqlite:C:/자바취업반/exam.db";
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
		//			System.out.println("등록실패");
		//			return false;
		//		}
		//		System.out.println("동륵완료");
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

				employee.setnum(rs.getString("사원번호"));
				employee.setid(rs.getString("id"));
				employee.setpw(rs.getString("pw"));
				employee.setname(rs.getString("이름"));
				employee.setbirth(rs.getString("생년월일"));
				employee.setgender(rs.getString("주민번호뒷자리"));
				employee.setcategory(rs.getString("사원구분"));
				employee.setsalay(rs.getString("연봉"));
				employee.setdepartment(rs.getString("부서"));
				employee.setposition(rs.getString("직급"));
				employee.setplace(rs.getString("근무지"));
				employee.setphone(rs.getString("전화번호"));
				employee.setjoin(rs.getString("입사일자"));
				employee.setemail(rs.getString("이메일"));
				employee.seteducation(rs.getString("최종학력"));
				employee.setaddress(rs.getString("주소"));
				employee.setimage(rs.getString("사진url"));

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
