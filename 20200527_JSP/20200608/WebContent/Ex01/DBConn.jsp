<%@page import="java.util.List"%>
<%@page import="ex01.Customer"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <%
    	List<Customer> customerList; //  = request.getParameter("customerList");
    %>
<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	out.print("load driver");
	
	Connection conn = null;
	String msg = null;
	String jdbcDriver = null;
	
	String dbUser = "c##hoony";
	String dbPass = "0000";
	String dbdbdib = "jdbc:oracle:thin:@localhost:1521:xe";
	
// 	String sql = "CREATE TABLE customer( " +
// 			"customerID INT NOT NULL, " +
// 			"customerName VARCHAR2(20) NULL, " +
// 			"contactName VARCHAR2(20) NULL, " +
// 			"address VARCHAR2(20) NULL, " +
// 			"city VARCHAR2(20) NULL, " +
// 			"country VARCHAR2(20) NULL);";


//	String sql = "INSERT INTO custormers(customerID, customerName, " +
// 			"contactName, address, city, postalCode, country) " +
// 			"VALUES(autoInc.nextval, 'customerName 3', " +
// 			"'contactName 3', 'address 3', 'city 3', 'postalCode 3', 'country K')";
	

	String sql = "INSERT INTO customer(customerID, customerName, " +
	"contactName, address, city, postalCode, country) " +
	"VALUES(?, ?, ?, ?, ?, ?, ?)";

	Statement stmt = null;
	PreparedStatement pstmt = null;
	
	try{
		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		
// 		stmt = conn.createStatement();
// 		stmt.execute(sql);
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, 10);
		pstmt.setInt(2, 10);
		pstmt.setInt(3, 10);
		pstmt.setString(4, "test");
		pstmt.setString(5, "test");
		pstmt.setString(6, "test");
		pstmt.setString(7, "test");
		pstmt.executeUpdate();

		
// 		pstmt = conn.prepareStatement(sql);
// 	  	for (Customer c : customerList) {
// 			pstmt.setInt(1, c.getCustomerID());
// 			pstmt.setString(2, c.getCustomerName());
// 			pstmt.setString(3, c.getContactName());
// 			pstmt.setString(4, c.getAddress());
// 			pstmt.setString(5, c.getCity());
// 			pstmt.setString(6, c.getPostalCode());
// 			pstmt.setString(7, c.getCountry());
// 			pstmt.executeUpdate();
// 		}

		out.print("성공");
		conn.close();
		msg = "접속 종료";
	} catch (Exception e) {
		e.printStackTrace();
	}
	out.print(msg);
%>

