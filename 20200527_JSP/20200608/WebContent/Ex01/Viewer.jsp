<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<body>
<form action="main.jsp">
<select name="tableName">
	<option value="Category">Category</option>
	<option value="Customer">Customer</option>
	<option value="Employee">Employee</option>
	<option value="OrderDetail">OrderDetail</option>
	<option value="Orders">Orders</option>
	<option value="Product">Product</option>
	<option value="Shipper">Shipper</option>
	<option value="Supplier">Supplier</option>
</select>
<input type="submit" value="테이블 확인">
<%-- <%=table %> --%>
</form>
</body>