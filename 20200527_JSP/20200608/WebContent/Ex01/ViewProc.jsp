<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%!// 	final int CATEGORY = 0;
	// 	final int CUSTOMER = 1;
	// 	final int EMPLOYEE = 2;
	// 	final int ORDERDETAIL = 3;
	// 	final int ORDERS = 4;
	// 	final int PRODUCT = 5;
	// 	final int SHIPPER = 6;
	// 	final int SUPPLIER = 7;

	// 	enum TYPE{
	// 		Category, Customer, Employee, OrderDetail, Orders, Product, Shipper, Supplier
	// 	};
	String[][] type = { { "categoryid", "categoryname", "description" },
			{ "customerID", "customerName", "contactName", "address", "city", "postalCode", "country" },
			{ "employeeid", "lastname", "firstname", "birthdate", "photo", "notes" },
			{ "orderidorderdetailid", "productid", "quantity", "orderid" },
			{ "orderid", "customerid", "employeeid", "orderdate", "shipperid" },
			{ "productid", "productname", "supplierid", "categoryid", "unit", "price" },
			{ "shipperid", "shippername", "phone" },
			{ "supplierid", "suppliername", "contactname", "address", "city", "postalcode", "country", "phone" } };

	public int getTypeNum(String tableName) {
		int num = 0;
		switch (tableName) {
		case "Category":
			num = 0;
			break;
		case "Customer":
			num = 1;
			break;
		case "Employee":
			num = 2;
			break;
		case "OrderDetail":
			num = 3;
			break;
		case "Orders":
			num = 4;
			break;
		case "Product":
			num = 5;
			break;
		case "Shipper":
			num = 6;
			break;
		case "Supplier":
			num = 7;
			break;
		}
		return num;
	}

	public Map<String, List<String>> setColumns() {
		Map<String, List<String>> map = new HashMap<>();
		List<String> lst = new ArrayList<>();
		lst.add("customerID");
		lst.add("customerName");
		lst.add("ContactName");
		lst.add("Address");
		lst.add("City");
		lst.add("PostalCode");
		lst.add("Country");
		map.put("Customer", lst);

		lst = new ArrayList<>();
		lst.add("CategoryID");
		lst.add("CategoryName");
		lst.add("Description");

		map.put("Category", lst);

		lst = new ArrayList<>();
		lst.add("EmployeeID");
		lst.add("LastName");
		lst.add("FirstName");
		lst.add("BirthDate");
		lst.add("Photo");
		lst.add("Notes");

		map.put("Employee", lst);

		lst = new ArrayList<>();
		lst.add("orderidorderdetailid");
		lst.add("ProductID");
		lst.add("Quantity");
		lst.add("OrderID");

		map.put("OrderDetail", lst);

		lst = new ArrayList<>();
		lst.add("OrderID");
		lst.add("CustomerID");
		lst.add("EmployeeID");
		lst.add("OrderDate");
		lst.add("ShipperID");

		map.put("Orders", lst);

		lst = new ArrayList<>();
		lst.add("ProductID");
		lst.add("ProductName");
		lst.add("SupplierID");
		lst.add("CategoryID");
		lst.add("Unit");
		lst.add("Price");

		map.put("Product", lst);

		lst = new ArrayList<>();
		lst.add("ShipperID");
		lst.add("ShipperName");
		lst.add("Phone");

		map.put("Shipper", lst);

		lst = new ArrayList<>();
		lst.add("SupplierID");
		lst.add("SupplierName");
		lst.add("ContactName");
		lst.add("Address");
		lst.add("City");
		lst.add("PostalCode");
		lst.add("Country");
		lst.add("Phone");
		map.put("Supplier", lst);

		return map;
	}

	public String DisplayTable(ResultSet rs, List<String> list) {
		String res = "";
		try {
		res += "Num of records : " + getRowCnt(rs) + "<br>";

		res += "<table>";
		res += "<tr>";
		// 		for (String _type : type[getTypeNum(tableName)])
		for (String _type : list)
			res += "<td>" + _type + "</td>";
		res += "</tr>";

			while (rs.next()) {
				res += "<tr>";
				// 			for (String _type : type[getTypeNum(tableName)])
				for (String _type : list)
					res += "<td>" + rs.getString(_type) + "</td>";
				res += "</tr>";
			}
			res += "</table>";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}

	public int getRowCnt(ResultSet rs) {
		int cnt = 0;
		try {
			rs.last();
			cnt = rs.getRow();
			rs.beforeFirst();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cnt;
	}%>
<%
	request.setCharacterEncoding("EUC-KR");
	String tableName = request.getParameter("tableName");
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn = null;
	String dbdbdib = "jdbc:oracle:thin:@localhost:1521:xe";
	String dbUser = "c##hoony";
	String dbPass = "0000";
	String sql = null;
	
	sql = "SELECT * FROM " + tableName;
	
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String res = null;
	
	try {
		conn = DriverManager.getConnection(dbdbdib, dbUser, dbPass);
		pstmt = conn.prepareStatement(sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
		rs = pstmt.executeQuery();
	
	// 	ResultSetMetaData rsmd = rs.getMetaData();
	// 	int colCnt = rsmd.getColumnCount();
	// 	rsmd.getColumnName(colCnt);
	
		
		
		Map<String, List<String>> maps = setColumns();
		out.print(DisplayTable(rs, maps.get(tableName)));
	
		
		
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		// 		request.setAttribute("table", res);
		if (rs != null)
			rs.close();
		if (pstmt != null)
			pstmt.close();
		if (conn != null)
			conn.close();
	}
%>

<%=res%>

