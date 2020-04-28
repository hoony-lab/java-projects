package TableViewTest.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.sqlite.SQLiteConfig;

import TableViewTest.People;


public class DatabaseServiceImpl implements DatabaseService{
	final static String DRIVER = "org.sqlite.JDBC";
	final String SQLITEHEADER = "jdbc:sqlite:";
	final String SELECTSQL = 
			"SELECT * "+
			"FROM test";
	private Connection dbConn;
	
	static { 
		try { Class.forName(DRIVER); } 
		catch(Exception e) { e.printStackTrace(); } 
	} 
	@Override
	public boolean open(String dbName, boolean isReadOnly) { 
		try {
			String path = System.getProperty("user.dir");
			// 읽기 전용 
			SQLiteConfig config = new SQLiteConfig(); 
			config.setReadOnly(isReadOnly); 
			
			String myPath = "C:/자바취업반/java-projects/20200422_project/test/src/TableViewTest/tableViewDBConn.db";
//			this.dbConn = DriverManager.getConnection( 
//					SQLITEHEADER + path + "/src/TableViewTest/"+dbName, 
//					config.toProperties()
//			);
			this.dbConn = DriverManager.getConnection(myPath);
		} catch(SQLException e) { 
			e.printStackTrace(); 
			return false; 
		} 
		return true; 
	} 

	@Override
	public List<People> getTable() {
		boolean result = true;
		People people;
		List<People> lst = new ArrayList<>();
		try {
			PreparedStatement prep = dbConn.prepareStatement(SELECTSQL);
			
			ResultSet rs = prep.executeQuery();
			while(rs.next()){
				people = new People();
				people.setAge( rs.getInt("age") );
				people.setNum( rs.getInt("num") );
				people.setName( rs.getString("name") );
				
				lst.add(people);
			}
			rs.close();
			prep.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			result = false;
			e.printStackTrace();
		}
		return lst;
	}
	
}








