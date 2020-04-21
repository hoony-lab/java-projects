package Ex13.DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Ex13.Member;

public class IMembershipManageImpl implements IMembershipManage{
	final static String DRIVER = "org.sqlite.JDBC";
	final static String DB = "jdbc:sqlite:C:/자바취업반/exam.db";
	Connection conn;

	public IMembershipManageImpl() {
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
	public boolean MembershipProc(Member member) {
		String sql = "INSERT INTO members "+
				"(name, id, pw, gender, age, hobby) "+
				"VALUES (?,?,?,?,?,?);";

		try {
			PreparedStatement pStmt = conn.prepareStatement(sql);
			pStmt.setString(1, member.getName());
			pStmt.setString(2, member.getId());
			pStmt.setString(3, member.getPw());
			pStmt.setInt(4, member.getGender());
			pStmt.setString(5, member.getAge());
			pStmt.setInt(6, member.getHobby());

			pStmt.executeUpdate();

			pStmt.close();
			conn.close();			

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			//e.printStackTrace();
			System.out.println("등록실패");
			return false;
		}
		System.out.println("동륵완료");
		return true;
	}

	@Override
	public int LoginProc(String id, String pw) {
		String sql = "SELECT count(*) " +
				"FROM members "+
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
	public List<Member> getMember() {
		String sql = "SELECT * "
				+ "FROM members";
		
		List<Member> lstMember = new ArrayList<Member>(); 

		try {
			PreparedStatement pStmt = conn.prepareStatement(sql);
			ResultSet rs = pStmt.executeQuery();
			Member member = new Member();

			while(rs.next()) {
				member.setName(rs.getString("name"));
				member.setId(rs.getString("id"));
				member.setPw(rs.getString("pw"));
				member.setGender(rs.getInt("gender"));
				member.setAge(rs.getString("age"));
				member.setHobby(rs.getInt("hobby"));
				
				lstMember.add(member);
			}

			pStmt.close();
			conn.close();
			
		} catch(Exception e) {
			return null;
		}

		return lstMember;
	}

}
