<%@page import="ex01.Orders"%>
<%@page import="ex01.Supplier"%>
<%@page import="ex01.Product"%>
<%@page import="ex01.Shipper"%>
<%@page import="ex01.Orderdetail"%>
<%@page import="ex01.Employee"%>
<%@page import="ex01.Category"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="ex01.Customer"%>
<%@page import="ex01.FileReader"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("EUC-KR");
	String filePath = request.getParameter("filePath");
	
	FileReader fileReader = new FileReader();
	
	List<String> stringList = fileReader.getFileContents(filePath);
	
	out.print("driver loading ... <br>");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	out.print("load driver<br>");
	
	Connection conn = null;
	String jdbcDriver = null;
	
	String dbdbdib = "jdbc:oracle:thin:@localhost:1521:xe";
	String dbUser = "c##hoony";
	String dbPass = "0000";
	
	 	for(String str : stringList)
	 		out.print(str + "<br>");
	
	// 	for(Customer o : customerList)
	// 		out.print("[ " + o.getCustomerName() + " ]<br>");
	
	
	
	String sql = null;
	
// 	// Customer
// 		List<Customer> list = fileReader.getCustomerList(stringList);
// 		sql = "INSERT INTO customer(customerID, customerName, " + "contactName, address, city, postalCode, country) VALUES(?, ?, ?, ?, ?, ?, ?)";
	
// 	// category
// 		List<Category> list = fileReader.getCategoryList(stringList);
// 		sql = "INSERT INTO Category(categoryid, categoryname, description) VALUES(?, ?, ?)";
	
// 	// Employee
// 		List<Employee> list = fileReader.getEmployeeList(stringList);
// 		sql = "INSERT INTO Employee(employeeid, lastname, firstname, birthdate, photo, notes) VALUES(?,?,?,?,?,?)";
	
// 	// Orders
// 			List<Orders> list = fileReader.getOrdersList(stringList);
// 			sql = "INSERT INTO Orders(orderid, customerid, employeeid, orderdate, shipperid) VALUES(?,?,?,?,?)";
	
	
// 	// Orderdetail
// 			List<Orderdetail> list = fileReader.getOrderdetailList(stringList);
// 			sql = "INSERT INTO Orderdetail(orderidorderdetailid, productid, quantity, orderid) VALUES(?,?,?,?)";
	
// 	// Product
// 			List<Product> list = fileReader.getProductList(stringList);
// 			sql = "INSERT INTO Product(productid, productname, supplierid, categoryid, unit, price) VALUES(?,?,?,?,?,?)";
	
// 	// Shipper
// 			List<Shipper> list = fileReader.getShipperList(stringList);
// 			sql = "INSERT INTO Shipper(shipperid, shippername, phone) VALUES(?,?,?)";
	
// 	// Supplier
// 			List<Supplier> list = fileReader.getSupplierList(stringList);
// 			sql = "INSERT INTO Supplier(supplierid, suppliername, contactname, address, city, postalcode, country, phone) VALUES(?,?,?,?,?,?,?,?)";
	
	out.print("<br><br><br>");
// 	for(Category o : list){
// 		out.print(o.getCategoryname() + " : ");
// 		out.print(o.getDescription() + " : ");
// 		out.print(o.getCategoryid() + "<br>");
// 	}
	
	PreparedStatement pstmt = null;
	out.print("start<br>");
	try {
		conn = DriverManager.getConnection(dbdbdib, dbUser, dbPass);
		pstmt = conn.prepareStatement(sql);
	
// 		// customer
// 	  	for (Customer c : list) {
// 			pstmt.setInt(1, c.getCustomerID());
// 			pstmt.setString(2, c.getCustomerName());
// 			pstmt.setString(3, c.getContactName());
// 			pstmt.setString(4, c.getAddress());
// 			pstmt.setString(5, c.getCity());
// 			pstmt.setString(6, c.getPostalCode());
// 			pstmt.setString(7, c.getCountry());
// 			pstmt.executeUpdate();
// 		}
	
// 		// category
// 		for (Category o : list) {
// 			pstmt.setInt(1, o.getCategoryid());
// 			pstmt.setString(2, o.getCategoryname());
// 			pstmt.setString(3, o.getDescription());
// 			pstmt.executeUpdate();
// 		}
		
// 		// Employee
// 		for(Employee o : list){
// 			pstmt.setInt(1, o.getEmployeeid());
// 			pstmt.setString(2, o.getLastname());
// 			pstmt.setString(3, o.getFirstname());
// 			pstmt.setString(4, o.getBirthdate());
// 			pstmt.setString(5, o.getPhoto());
// 			pstmt.setString(6, o.getNotes());
// 			pstmt.executeUpdate();
// 		}

// 		// Orders
// 		for(Orders o : list){
// 			pstmt.setInt(1, o.getOrderid());
// 			pstmt.setInt(2, o.getCustomerid());
// 			pstmt.setInt(3, o.getEmployeeid());
// 			pstmt.setString(4, o.getOrderdate());
// 			pstmt.setInt(5, o.getShipperid());
// 			pstmt.executeUpdate();
// 		}
		
// 		// Orderdetail
// 		for(Orderdetail o : list){
// 			pstmt.setInt(1, o.getOrderidorderdetailid());
// 			pstmt.setInt(2, o.getProductid());
// 			pstmt.setInt(3, o.getQuantity());
// 			pstmt.setInt(4, o.getOrderid());
// 			pstmt.executeUpdate();
// 		}
		
// 		// Product
// 		int cnt = 0;
// 		for(Product o : list){
// 			pstmt.setInt(1, o.getProductid());
// 			pstmt.setString(2, o.getProductname());
// 			pstmt.setInt(3, o.getSupplierid());
// 			pstmt.setInt(4, o.getCategoryid());
// 			pstmt.setString(5, o.getUnit());
// 			pstmt.setFloat(6, o.getPrice());
// 			pstmt.executeUpdate();
// 		}
		
// 		// Shipper
// 		for(Shipper o : list){
// 			pstmt.setInt(1, o.getShipperid());
// 			pstmt.setString(2, o.getShippername());
// 			pstmt.setString(3, o.getPhone());
// 			pstmt.executeUpdate();
// 		}
		
// 		// Supplier
// 		for(Supplier o : list){
// 			pstmt.setInt(1, o.getSupplierid());
// 			pstmt.setString(2, o.getSuppliername());
// 			pstmt.setString(3, o.getContactname());
// 			pstmt.setString(4, o.getAddress());
// 			pstmt.setString(5, o.getCity());
// 			pstmt.setString(6, o.getPostalcode());
// 			pstmt.setString(7, o.getCountry());
// 			pstmt.setString(8, o.getPhone());
// 			pstmt.executeUpdate();
// 		}
		
		
		
		out.print("성공");
		conn.close();
	
	} catch (Exception e) {
		out.print("실패");
		e.printStackTrace();
	}
%>

